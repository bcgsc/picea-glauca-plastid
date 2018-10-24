all: WS77111.repeats

%.delta: %.fa
	nucmer --maxmatch --nosimplify --prefix=WS77111_WS77111 $^ $^ 
%.coords: %.delta
	show-coords $^ > $@
%.repeats: %.fa
	repeat-match -n 200 $^ > $@
