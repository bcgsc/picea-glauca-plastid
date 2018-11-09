all: WS77111-chloroplast.gbf

# Convert FASTA and GFF to GBF and SQN.
# See https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/
%.gbf %.sqn: %.fa %.gff
	./linux64.table2asn_GFF -V bv -locus-tag-prefix DB47CP -i $< -f $*.gff -Z $*.dr -o $*.sqn -t $*.sbt -X C


