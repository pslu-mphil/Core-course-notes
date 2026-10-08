.PHONY: html pdf pdflatex pdfhtml

html:
	jupyter-book build book/

# PDF via LaTeX.  This is the working route, but it needs a TeX distribution
# (MacTeX or TeX Live) providing xelatex and latexmk on your PATH.
pdf: pdflatex

pdflatex:
	jupyter-book build book/ --builder pdflatex

# PDF via headless Chromium.  BROKEN: pyppeteer does a bare `import websockets`
# and then calls websockets.client.connect, but websockets >= 10 lazy-loads its
# submodules, so the attribute does not resolve and the HTML -> PDF step dies with
#     AttributeError: module 'websockets' has no attribute 'client'
# The HTML stage succeeds first, which makes the failure look like a book problem.
# Use `make pdf` instead.
pdfhtml:
	jupyter-book build book/ --builder pdfhtml
