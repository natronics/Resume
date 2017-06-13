TEXFILE = nathanbergey

all: nathanbergey.pdf

nathanbergey.pdf: _site
	cd _site; pdflatex $(TEXFILE).tex
	cp _site/$(TEXFILE).pdf ./

_site: _data/nathanbergey.json
	jekyll build

test:
	cp _data/nathanbergey.json ./resume.json
	resume test

clean:
	$(RM) -rf _site
	$(RM) -f resume.json
	$(RM) -f nathanbergey.pdf
