# Advanced Algorithms — a course book

A textbook for the course **Advanced Algorithms** as taught at Utrecht
University by Till Miltzow and Johan van Rooij.

The course is examined with the
[open pool exam method](https://openpoolexams.science.uu.nl/): the pool of exam
questions is published in advance and at least 30% of the exam is drawn from it
verbatim. The book is written so that **every question in the pool can be
answered from the book alone**.

## Repository layout

```
OVERVIEW.md          the book plan: chapters, status, conventions  ← start here
book/
  main.tex           master document; \include's every chapter
  preamble.tex       packages, theorem environments, shared macros
  frontmatter/       preface
  chapters/          one file per chapter, NN-name.tex
  appendix/          exam pool transcription, preliminaries
material/            source material the book is written against
  schedule.md        the lecture schedule
  pool/              the open exam question pool (PDF + extracted text)
Makefile             make / make clean / make todos
```

## Building

```sh
make        # -> book/main.pdf
make todos  # what still needs writing
```

Needs TeX Live with `latexmk`. Every push is also built by GitHub Actions, which
uploads the PDF as a build artefact.

## Contributing a chapter

1. Find the chapter in [`OVERVIEW.md`](OVERVIEW.md) and check which pool
   questions it owns.
2. Write into the existing `book/chapters/NN-*.tex` skeleton — the learning
   goals and section outline are already there. Replace the `\todo` markers.
3. Make sure every pool question listed at the end of the chapter is genuinely
   answerable from what you wrote.
4. Update the status column in `OVERVIEW.md`.
