all: PG29_chloroplast-sorted.gff
%.gff: %.gff
	gt gff3 -sortlines yes -retainids yes -tidy yes -fixregionboundaries yes -addids $<  > $*-sorted.gff
%.faa: %.fa %.gff
	gt extractfeat -type CDS -join -translate -coords -matchdescstart -retainids -seqid -seqfile $< $*-sorted.gff > $@
