#!/bin/sh
##
# @date 2016-09-13
# @brief Installs the theme locally.
# 
# Local manual installation as described in:
# http://tex.stackexchange.com/questions/1137/where-do-i-place-my-own-sty-or-cls-files-to-make-them-available-to-all-my-te
##

THEMEDIR=tuw

# get local tex folder
TEXDIR=$(kpsewhich -var-value=TEXMFHOME)"/tex/latex/beamer"

# create folder if it does not exist
mkdir -p "${TEXDIR}"

# install beamer theme
if kpseaccess -w "${TEXDIR}"; then
    mkdir -p "${TEXDIR}"/$THEMEDIR
    cp $THEMEDIR/beamerthemeTUW.sty \
	$THEMEDIR/TU_Logo.pdf $THEMEDIR/TU_Signet.pdf \
	"${TEXDIR}"/$THEMEDIR
    break
fi

echo "TUW theme installed to ${TEXDIR}/${THEMEDIR}."
