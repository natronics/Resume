TEXFILE = nathanbergey.tex

all:
	pdflatex $(TEXFILE)
	$(RM) *.dvi *.aux *.log *.nav *.out *.snm *.toc

clean:
	$(RM) *.dvi *.aux *.log *.nav *.out *.snm *.toc *.pdf
