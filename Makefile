# Using MUMmer
%.delta: %.fa
	nucmer --maxmatch --nosimplify --prefix=$*_$* $< $<
%.coords: %.delta
	show-coords -r $< > $@
%.repeats: %.fa
	repeat-match -n 200 $< > $@


# Using minidot
%.pdf: %.fa
	minidot -o $@ $<


# Using minimap
%.paf: %.fa
	minimap2 -DP $< $< > $@

%.allow-mismatches.paf: %.fa
	minimap2 -c -m200 $< $< > $@


# Extract features from GFF

%.sorted.gff: %.gff
	gt gff3 -sortlines yes -retainids yes -tidy yes -fixregionboundaries yes -addids $< > $@

%.faa: %.fa %.gff
	gt extractfeat -type CDS -join -translate -coords -matchdescstart -retainids -seqid -seqfile $^ > $@

%.CDS.fa: %.fa %.gff
	gt extractfeat -type CDS -join -coords -matchdescstart -retainids -seqid -seqfile $< $*-EMBOSS.gff > $@

%.genes.fa: %.fa %.gff
	gt extractfeat -type gene -coords -matchdescstart -retainids -seqid -seqfile $< $*-EMBOSS.gff > $@

%.introns.fa: %.fa %.gff
	gt extractfeat -type intron -coords -matchdescstart -retainids -seqid -seqfile $< $*-EMBOSS.gff > $@


# PG29 and WS77111 alignments

#Align PG29 reference genome to WS77111 reference genome
%.bam: %.fa %.fa
	minimap2 -a -xasm10 $^ | samtools view -F 4 -b -o $@

#Align PG29 genes to WS77111 genome
%.genes.bam: %.genes.fa %.fa
	minimap2 -a -xasm10 $^ | samtools view -F 4 -b -o $@

# Align the WS77111 reads to WS77111 genome
%.reads.bam: %.fa %_R1.fq.gz %_R2.fq.gz
	bwa mem $^ | samtools view -F 4 -b -o $@

%.sorted.bam: %.bam
	samtools sort $< > $@
	samtools index $@


# Look at annotations in IGV
%.: %.fa %.bam %.genes.bam %.reads.bam %.gff
	igv -g $^

# Align WS77111 genes to PG29 genes
%.tsv: %.genes.fa %.genes.fa
	makeblastdb -dbtype nucl -in $< -out $*
	blastn -query $*.genes.fa -out $@ -db $* -outfmt ‘6 std qcovs’ -perc_identity 100

#table2asn_GFF

# Convert FASTA and GFF to GBF and SQN.
# See https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/
%.gbf %.sqn: %.fa %.gff
	./linux64.table2asn_GFF -V bv -locus-tag-prefix DB47CP -i $< -f $*.gff -Z $*.dr -o $*.sqn -t $*.sbt -X C


