#!/bin/sh

THEMEDIR=tuw

for d in $(kpsewhere --expand-var \$TEXMFVAR); do
    if kpseaccess -w $d; then
	mkdir -p $d/tex/latex/tuw
	cp $THEMEDIR/beamerthemeTUW.sty \
	    $THEMEDIR/TU_Logo.pdf $THEMEDIR/TU_Signet.pdf \
	    $d/tex/latex/tuw
	break
    fi
done
