all: poster.pdf 

.PHONY: view
view: all
	apvlv poster.pdf

%.pdf: %.tex 
	pdflatex $<
	#pdflatex --enable-write18 $< && pdflatex $< && pdflatex $<

clean:
	rm -f *.aux *.bbl *.blg *.log poster.pdf 

