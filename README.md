# tuw-latex-beamer-theme

TU Wien LaTeX beamer theme.


## Installation

    $ make install

However, you don't have to necessarily install the theme:

* You can simply copy the theme, i.e., the `beamerthemeTUW.sty` file and all
  pictures in the `tuw` folder, into the folder where your presentation
  resides.

* You can copy the folder `tuw` from this repo and start preparing your
  presentation `demo.tex`.


## Usage

The beamer theme is accessible via

    \usetheme{TUW}

The beamer theme supports the default outer style "plain", i.e., no sidebar and
simple footer. All other beamer outer themes are also available, although the
color scheme may not fit to the CD of TU Wien for all themes.

Tested outer themes:

    \usetheme{TUW}
    \usetheme[outer=sidebar]{TUW}

You can use [demo.tex](tuw/demo.tex) as a starting point for your presentation.


## Credits

* Wolfang Puffitsch (original theme from 2010)

## License Information

By now (hope we can make it public sometime):

For the files `TU_Logo.pdf`, `TU_Logo_white.pdf`, `TU_Signet.pdf`,
`TU_Background.png` in `tuw`:
Copyright 2016 TU Wien.

Everything else:
Copyright 2016 CPS-Group, TU Wien.

I have no idea if the images from TU Wien are allowed to be published (the
background image is extracted from the powerpoint presentation that is only
available TU-Wien-internally), so please do not make this repo (or downloaded
archive) public.