all: WS77111-chloroplast.faa
%.faa: %.fa %.gff
	gt extractfeat -type CDS -join -translate -coords -matchdescstart -retainids -seqid -seqfile $< $*-EMBOSS.gff > $@
%.: %.fa %.gff
	igv -g $^ 
%.CDS.fa: %.fa %.gff
	gt extractfeat -type CDS -join -coords -matchdescstart -retainids -seqid -seqfile $< $*-EMBOSS.gff > $@
%.genes.fa: %.fa %.gff
	gt extractfeat -type gene -coords -matchdescstart -retainids -seqid -seqfile $< $*-EMBOSS.gff > $@
%.introns.fa: %.fa %.gff
	gt extractfeat -type intron -coords -matchdescstart -retainids -seqid -seqfile $< $*-EMBOSS.gff > $@

