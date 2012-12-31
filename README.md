Dependencies
----------------
- [pandoc](http://johnmacfarlane.net/pandoc/)
- pdflatex, bibtex (of course)

Setup
----------------
- make the dir where you want to write your paper
- ```git clone https://github.com/codementum/chi_markdown.git```

Usage
----------------
- Make your changes in chi.md.
- Modify chi.bib, add figs, etcetera
- Compile to pdf with ```make``` (also runs bibtex)
- Get rid of excess files with ```make clean```
