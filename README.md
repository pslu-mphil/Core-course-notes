<div align="right">
<a href="https://github.com/pslu-mphil/Notes/actions/workflows/book.yml"><img src="https://github.com/pslu-mphil/Notes/actions/workflows/book.yml/badge.svg" alt="live status" height="18"></a>
</div>

# Notes

Lecture notes for the course, available online [here](https://pslu-mphil.github.io/Notes).

## IMPORTANT

**All modifications to `main` are immediately live.**

Please ensure the site builds properly before pushing to `main` (see below), and keep all testing and 'in progress' material in other branches (e.g. `development`).

You should not be making anything more than minor typo corrections using the online editing interface.

### Reporting Problems

If you find a problem you're not sure how to fix, either contact us directly or [create an Issue](https://github.com/pslu-mphil/Core-course-notes/issues/new), which we'll get to ASAP.

## Installing Dependencies

Install `jupyter-book`, for example with `conda`:

```bash
conda install -c conda-forge jupyter-book
```

or `pip`:

```bash
pip install jupyter-book
```

## Build Instructions

From the `/Notes` directory, either use the `makefile`:

```bash
make html
```

or call `jupyter-book` directly:

```bash
jupyter-book build book/
```

The compiled HTML files can then be viewed by opening in `Notes/book/_build/index.html` in your browser.
