THEME := tuw
DEMO := demo

SHELL := /bin/bash
PDFLATEX := pdflatex -interaction=nonstopmode -halt-on-error

.PHONY: all clean demo

all: install

demo: $(DEMO)/$(DEMO).tex
	cd $(DEMO); $(PDFLATEX) $(DEMO).tex; cd ..

install: install_theme

# copies theme files to personal latex path
install_theme:
	./install_theme.sh

%.clean:
	rm -f $*.{aux,nav,log,out,pdf,snm,toc} $**~

clean: $(DEMO)/$(DEMO).clean
	rm -f *~ *.log
