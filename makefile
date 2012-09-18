project=poster.pdf
all: $(project) diagrama_en_bloques.tex

.PHONY: view clean

view: all
	xpdf $(project)

poster.pdf: diagrama_en_bloques.tex

%.pdf: %.tex 
	pdflatex $<
	#pdflatex --enable-write18 $< && pdflatex $< && pdflatex $<

clean:
	rm -f *.aux *.bbl *.blg *.log $(project)

