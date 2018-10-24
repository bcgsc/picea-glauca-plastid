all: WS77111-chloroplast.faa
%.faa: %.fa %.gff
	gt extractfeat -type CDS -join -translate -coords -matchdescstart -retainids -seqid -seqfile $< $*-EMBOSS.gff > $@
