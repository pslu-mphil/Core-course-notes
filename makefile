.PHONY: html pdf pdflatex

html:
	jupyter-book build book

pdf:
	jupyter-book build book --builder pdfhtml

pdflatex:
	jupyter-book build book --builder pdflatex