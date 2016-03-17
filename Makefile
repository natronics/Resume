TEXFILE = nathanbergey

all: pdf

pdf: jekyll
	cd _site; pdflatex $(TEXFILE).tex
	mv _site/$(TEXFILE).pdf ./
	jekyll build

jekyll:
	jekyll build

test:
	cp nathanbergey.json resume.json
	resume test
	rm resume.json

clean:
	$(RM) -rf _site
