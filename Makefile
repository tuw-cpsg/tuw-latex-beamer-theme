THEME := tuw
DEMO := demo

PDFLATEX := pdflatex -interaction=nonstopmode -halt-on-error
BIBTEX := bibtex

.PHONY: all clean demo install

all: install

demo: $(DEMO)/$(DEMO).tex
	cd $(DEMO); $(PDFLATEX) $(DEMO).tex; cd ..
	cd $(DEMO); $(BIBTEX) $(DEMO).aux; cd ..
	cd $(DEMO); $(PDFLATEX) $(DEMO).tex; cd ..

install: install_theme

# copies theme files to personal latex path
install_theme:
	./install.sh

%.clean:
	rm -f $*.{aux,nav,log,out,pdf,snm,toc} $**~

clean: $(DEMO)/$(DEMO).clean
	rm -f *~ *.log
