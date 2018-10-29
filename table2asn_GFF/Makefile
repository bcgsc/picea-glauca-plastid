all: WS77111-chloroplast.gbf

# Convert FASTA and GFF to GBF and SQN.
# See https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/
%.gbf: %.fa %.gff
	./linux64.table2asn_GFF -V bv -locus-tag-prefix WS77111cp -i $< -f $*-EMBOSS.gff -Z $*.dr -o $*.sqn -t $*.sbt -X C


