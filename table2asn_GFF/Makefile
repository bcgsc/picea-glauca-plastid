all: WS77111-chloroplast.gbf

# Convert FASTA and GFF to GBF and SQN.
# See https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/
%.gbf: %.fsa %.gff
	./linux64.table2asn_GFF -V bv -locus-tag-prefix WS77111CP -i $< -f $*.gff -Z $*.dr
