TEXFILE = nathanbergey

all: nathanbergey.pdf

nathanbergey.pdf: _site
	cd _site; pdflatex $(TEXFILE).tex
	mv _site/$(TEXFILE).pdf ./

_site: _data/nathanbergey.json
	jekyll build

clean:
	$(RM) -rf _site
