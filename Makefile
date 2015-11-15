TEXFILE = nathanbergey
TEKJUNK = *.dvi *.aux *.log *.nav *.out *.snm *.toc

all: pdf

pdf: jekyll
	cd _site; pdflatex $(TEXFILE).tex
	mv _site/$(TEXFILE).pdf ./

jekyll:
	jekyll build

clean:
	$(RM) $(TEKJUNK) *.pdf
	$(RM) -r _site
