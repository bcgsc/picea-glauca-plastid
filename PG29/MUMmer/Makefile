all: PG29.repeats

%.delta: %.fa
	nucmer --maxmatch --nosimplify --prefix=PG29_PG29 $< $< 
%.coords: %.delta
	show-coords $< > $@
%.repeats: %.fa
	repeat-match -n 200 $< > $@
