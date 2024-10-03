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

You will need a local Python install on your computer.  If you don't already have a Python install on your computer you are managing the packages for, then it is best to install a version you mange (rather than one that shipped with the operating system) via `conda`, downloading it [from this website](https://www.anaconda.com/download/success).

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
