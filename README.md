# tuw-latex-beamer-theme

TU Wien LaTeX beamer theme.


## Installation

    $ make install

However, you don't have to necessarily install the theme:

* You can simply copy the theme, i.e., the `beamerthemetuw.sty` file and all
  pictures in the `tuw` folder, into the folder where your presentation
  resides.

* You can copy the folder `tuw` from this repo, add `demo.tex` and start
  preparing your presentation by changing `demo.tex`.


## Demo

To build the demo presentation you have to first install the theme.

    $ make install
    $ make demo

Then you can check out `demo/demo.pdf`.

If you don't want to install the theme, move `demo.tex` into the `tuw` folder
and build it manually.


## Usage

The beamer theme is accessible via

    \usetheme{tuw}

The beamer theme supports the default outer style "plain", i.e., no sidebar and
simple footer. All other beamer outer themes are also available, although the
color scheme may not fit to the CD of TU Wien for all themes.

Tested outer themes:

    \usetheme{tuw}
    \usetheme[outer=sidebar]{tuw}

You can use [demo.tex](tuw/demo.tex) as a starting point for your presentation.

### Options

* `outer`: The outer theme of the presentation (e.g., `outer=sidebar`), default
  is `plain` that corresponds to the CD of TU Wien.

* `font`: TU Wien suggests to use helvetica (e.g., `font=helvetica`), default
  is the Latex default family.

* `width`: Change the width of the sidebar with this option (e.g.,
  `width=3cm`). Useful, when you want a 16:9 presentation (option
  `aspectratio=169` for documentclass).

* `tuw_background`: Specify this boolean option if you want to have the TU
  building in the background of the titlepage, default: white background.

* `tuw_image`: Set an individual background image (e.g.,
  `tuw_image=path-to-your-image.png`).

* `tuw_whitelogo`: Specify this boolean option if your background image is dark
  or the blue logo simply does not fit.

### Colors

Several colors and nuances are defined in the theme, e.g., `\tuwBlue`,
`\tuwGray` and `\alertred`. Check out `beamerthemetuw.sty` for definitions.

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
