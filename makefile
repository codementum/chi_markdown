tex	 	= 	chi.tex
md 		=  	$(tex:.tex=.md)
body 	=  	body.tex
bib 	=  	$(tex:.tex=.bib)
aux 	= 	$(tex:.tex=.aux)

default: clean md2tex tex2pdf

clean: 
	rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg	\
				*.inx *.toc *.out *~ body.tex

md2tex: 
	pandoc --from markdown --to latex -o $(body) $(md)	

tex2pdf: 
	pdflatex $(tex) && bibtex $(aux) && pdflatex $(tex) && pdflatex $(tex)
