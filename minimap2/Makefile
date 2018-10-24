all: WS77111-self.paf

%.paf: %.fa
	minimap2 -DP $^ $^ > $@
%.pdf: %.fa
	minidot -o $@ $^ $^
%.paf: %.fa
	minimap2 -c -m200 $^ $^ > $@
