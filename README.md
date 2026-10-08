<div align="right">
<a href="https://github.com/pslu-mphil/Core-course-notes/actions/workflows/book.yml"><img src="https://github.com/pslu-mphil/Core-course-notes/actions/workflows/book.yml/badge.svg" alt="live status" height="18"></a>
</div>

# README

Lecture notes for the course, available online [here](https://pslu-mphil.github.io/Core-course-notes).

## IMPORTANT

**All modifications to `main` are immediately live.**

Please ensure the site builds properly before pushing to `main` (see below), and keep all testing and 'in progress' material in other branches (e.g. `development`).

You should not be making anything more than minor typo corrections using the online editing interface.

### Reporting Problems

If you find a problem you're not sure how to fix, either contact us directly or [create an Issue](https://github.com/pslu-mphil/Core-course-notes/issues/new), which we'll get to ASAP.

## Installing Dependencies

You will need a local Python install on your computer.  If you don't already have a Python install on your computer that you are managing the packages for, then it is best to install a version you mange (rather than one that shipped with the operating system) via `conda`, downloading it [from this website](https://www.anaconda.com/download/success).

Once you have a Python distribution installed, it will likely need `jupyter-book` installed separately.  To do this via `conda`:

```bash
conda install -c conda-forge jupyter-book
```

or, if you use `pip` to manage your Python packages:

```bash
pip install jupyter-book
```

## Build Instructions

To build a local version of the notes: from the `/Core-course-notes` directory, either use the `makefile`:

```bash
make html
```

or call `jupyter-book` directly:

```bash
jupyter-book build book/
```

The compiled HTML files can then be viewed by opening `Core-course-notes/book/_build/html/index.html` in your browser.

## Building a PDF

The PDF is produced by rendering the book through LaTeX, so as well as the
Python dependencies above you need a TeX distribution providing `xelatex` and
`latexmk`:

- **macOS** -- [MacTeX](https://www.tug.org/mactex/)
- **Linux** -- TeX Live, e.g. `sudo apt install texlive-xetex texlive-latex-extra latexmk`

Then, from the `/Core-course-notes` directory, either use the `makefile`:

```bash
make pdf
```

or call `jupyter-book` directly:

```bash
jupyter-book build book/ --builder pdflatex
```

The result is written to `Core-course-notes/book/_build/latex/book.pdf`
(currently 464 pages, around 150 MB).

`make pdfhtml` selects a different route, which drives a headless Chromium via
`pyppeteer`. It is currently broken and `pyppeteer` is no longer installed by
the requirements files, so use `make pdf` instead.

### Maths that builds as HTML but breaks the PDF

MathJax, which renders the maths on the website, accepts a number of plain-TeX
and MathJax-only constructs that LaTeX rejects. These build cleanly as HTML and
fail only when making the PDF, so please avoid:

| Avoid | Use instead |
| --- | --- |
| `\eqalign{}`, `\eqalignno{}` | `\begin{aligned}` ... `\end{aligned}` |
| `\cr` | `\\` |
| `\begin{align}` nested inside `$$ ... $$` or a `{math}` directive | `\begin{aligned}` |
| `\lt`, `\gt` | `<`, `>` |
| `\pu{1 mol dm-3}` | plain maths, e.g. `\mathrm{1\ mol\ dm^{-3}}` |
| `&` inside `\ce{}` | put it outside: `\ce{A} &\ce{-> B}` |
| `a_\ce{AB}`, `\ce{ABC^\ddagger}` | brace them: `a_{\ce{AB}}`, `\ce{ABC^{\ddagger}}` |
| `\newcommand` inside a maths block | define it once in `book/_config.yml`, in both `mathjax3_config` and the LaTeX preamble |

Macros added to `mathjax3_config` only take effect if `configmacros` is listed
in `tex.packages` -- that list replaces MathJax's defaults rather than adding to
them, and without it the macro is silently ignored.
