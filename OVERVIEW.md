# Advanced Algorithms — Book Overview

This is the working overview of the book: the chapter list, what each chapter
must contain, and the status of each. **New chapters are inserted here first**,
then created as a `.tex` file and `\include`d in `book/main.tex`.

- Source material (schedule, exam pool): [`material/`](material/)
- Book source: [`book/`](book/), master file [`book/main.tex`](book/main.tex)
- Figures: [`book/figures/`](book/figures/) — see its README for naming and how
  to replace a placeholder
- Exam question pool, transcribed and mapped: [`book/appendix/a-pool-questions.tex`](book/appendix/a-pool-questions.tex)

## Design principles

1. **The pool is the contract.** The course uses the
   [open pool exam method](https://openpoolexams.science.uu.nl/): at least 30%
   of exam questions are taken verbatim from a published pool. Every pool
   question must be fully answerable from this book. Each chapter ends with a
   `poolquestions` environment naming the questions it covers and the sections
   that answer them.
2. **One chapter per lecture, roughly.** The book follows the lecture schedule
   in [`material/schedule.md`](material/schedule.md), so it can be read
   alongside the course week by week. Where a lecture is thin and its neighbour
   is thick, we merge or split — the reading order stays the same.
3. **Proofs are the content.** This is a theory course. Algorithms are stated in
   pseudocode; correctness and running time are proved, not asserted.
4. **Modelling is taught explicitly.** Several pool questions (grid escape, ship
   fleet, partition into cycles) are modelling exercises. Each of the relevant
   chapters contains a "modelling" section with a recipe and a worked example,
   not just theory.
5. **Every chapter is self-contained enough to lecture from.** Learning goals up
   front, exercises at the back.

## Chapter status

Legend: 🔲 skeleton (outline only) · 🟡 in progress · ✅ drafted · 🔒 reviewed

A chapter is ✅ only when it has no `\todo` markers **and** no
`\figplaceholder` boxes left.

### Front matter

| File | Status |
| --- | --- |
| `book/frontmatter/preface.tex` | ✅ drafted |

### Part I — Combinatorial Algorithms

| # | Chapter | File | Lecture | Pool Q | Status |
| --- | --- | --- | --- | --- | --- |
| 1 | Introduction | `01-introduction.tex` | W1 Tue | — | 🔲 |
| 2 | Combinatorics via Algorithms and Stable Marriage | `02-stable-marriage.tex` | W1 Tue | 1 | 🔲 |
| 3 | Maximum Flow and Minimum Cut | `03-maximum-flow.tex` | W1 Thu | 2, 3 | 🔲 |
| 4 | Minimum Cost Flow | `04-minimum-cost-flow.tex` | W2 Tue | 4 | 🔲 |
| 5 | Planar Graphs | `05-planar-graphs.tex` | W2 Thu | 5 | 🟡 prose complete; 19 figures open |
| 6 | Matching | `06-matching.tex` | W4 Tue | 7 | 🔲 |

### Part II — Real Computation and the Existential Theory of the Reals

| # | Chapter | File | Lecture | Pool Q | Status |
| --- | --- | --- | --- | --- | --- |
| 7 | Real Models of Computation | `07-real-models-of-computation.tex` | ER 1 (W3 Thu) | 6 | 🔲 |
| 8 | The Existential Theory of the Reals | `08-existential-theory-of-the-reals.tex` | ER 2 (W4 Thu) | 8 | 🔲 |
| 9 | Geometric ∃R-Completeness | `09-geometric-er-completeness.tex` | ER 3 (W5 Thu) | 11 | 🔲 |

### Part III — Exact Exponential-Time Algorithms

| # | Chapter | File | Lecture | Pool Q | Status |
| --- | --- | --- | --- | --- | --- |
| 10 | Exact Exponential-Time Algorithms I: Branching | `10-exact-algorithms-i.tex` | W5 Tue | 9, 10 | 🔲 |
| 11 | Exact Exponential-Time Algorithms II: Subsets, Inclusion–Exclusion, Lower Bounds | `11-exact-algorithms-ii.tex` | W6 Tue | 12 | 🔲 |

### Part IV — Approximation Algorithms

| # | Chapter | File | Lecture | Pool Q | Status |
| --- | --- | --- | --- | --- | --- |
| 12 | Approximation Algorithms I | `12-approximation-i.tex` | W6 Thu | 13 | 🔲 |
| 13 | Approximation Algorithms II | `13-approximation-ii.tex` | W7 Tue | 14 | 🔲 |

### Part V — Parameterized Algorithms and Complexity

| # | Chapter | File | Lecture | Pool Q | Status |
| --- | --- | --- | --- | --- | --- |
| 14 | Parameterized Algorithms I | `14-fpt-i.tex` | W7 Thu | 15 | 🔲 |
| 15 | Treewidth | `15-treewidth.tex` | W8 Tue | 16, 17 | 🔲 |
| 16 | Complexity Theory for Approximation and Parameterization | `16-hardness-of-approximation-and-fpt.tex` | W9 Tue | 18 | 🔲 |
| 17 | Kernelization | `17-kernelization.tex` | W9 Thu (FPT 2) | 19 (items 1–2) | 🔲 |
| 18 | Randomized Algorithms | `18-randomized-algorithms.tex` | W9 Thu | 19 (items 3–4) | 🔲 |

### Appendices

| File | Contents | Status |
| --- | --- | --- |
| `appendix/a-pool-questions.tex` | The exam pool, transcribed verbatim, with a question → chapter map | ✅ drafted |
| `appendix/b-preliminaries.tex` | Notation, graph terminology, complexity classes, LP, probability | 🔲 |

## Pool question → chapter map

The pool numbers its sections by *lecture*, and that numbering does not match
the schedule one to one (the ER lectures are interleaved). Authoritative map:

| Pool Q | Title | Pool lecture | Chapter |
| --- | --- | --- | --- |
| 1 | Stable Matchings | 1 | 2 |
| 2 | Minimum Vertex Cut | 2 | 3 |
| 3 | Escaping a Grid | 2 | 3 |
| 4 | Phasing out capital equipment | 3 | 4 |
| 5 | Planar Graphs | 4 | 5 |
| 6 | Real Models of Computation | 5 | 7 |
| 7 | Partition into Cycles | 6 | 6 |
| 8 | Existential Theory of the Reals | 7 | 8 |
| 9 | Exact Algorithm for Exact 3-SAT | 8 | 10 |
| 10 | Bisection Width | 8 | 10 |
| 11 | Duality and geometric ∃R-hardness | 9 | 9 |
| 12 | Inclusion/exclusion for set cover | 10 | 11 |
| 13 | Approximation non-symmetric TSP | 10 | 12 |
| 14 | Approximating Steiner Tree | 11 | 13 |
| 15 | Parameterized complexity | 12 | 14 |
| 16 | Treewidth of grid graphs | 13 | 15 |
| 17 | Treewidth and cliques | 13 | 15 |
| 18 | L-reduction for Max Cut on Multigraphs | 14 | 16 |
| 19 | Vertex Cover Kernel | 15 | 17 and 18 |

Amendments to the pool, already applied to Appendix A:

- **Q5, item 7** asked for $3$-colouring in $2^{O(\sqrt n)}$ time; it now asks
  for **independent set** in $2^{O(\sqrt n)}$ time, which is what chapter 5
  proves. The pool PDF in `material/` still carries the old wording.

Known issues in the pool PDF, to raise with the course team:

- **Q11** is titled "Exact Algorithm for Exact 3-SAT", a copy-paste error from
  Q9; its items are about point–line duality and geometric ∃R-completeness.
- **Q16** defines the grid graph's edge set twice with the same expression
  (`{v_{i,j}, v_{i+1,j}}`); the second should be `{v_{i,j}, v_{i,j+1}}`. The
  transcription in Appendix A silently uses the intended definition.
- The pool has no question for the *Combinatorics via algorithms* part of the
  first lecture beyond the Euler tour item, and none for the *Introduction*.

## Chapter template

Every chapter file follows the same shape (see any file in `book/chapters/`):

```latex
\chapter{Title}
\label{ch:short-name}

One paragraph: what this chapter is about and why it belongs here.

\section*{Learning goals}
\addcontentsline{toc}{section}{Learning goals}
After this chapter you should be able to:
\begin{itemize}[leftmargin=*]
  \item ...;
\end{itemize}

\section{...}
\label{sec:...}
...

\section{Exercises}
\label{sec:ex-short-name}

\begin{poolquestions}
  \poolq{7}{Partition into Cycles}Solved in \cref{sec:matching-modelling}.
\end{poolquestions}
```

Conventions:

- Labels: `ch:name`, `sec:name`, `thm:name`, `fig:name`, `alg:name`,
  `sec:ex-name` for the exercise section. Refer to them with `\cref`.
- Problem definitions use the `probdef` environment from
  [`book/preamble.tex`](book/preamble.tex).
- Problem names in running text use `\lang{Vertex Cover}`, which typesets small
  caps.
- Use `\Ostar{}` for the $O^*$ notation and `\ER` for the class ∃R.
- Unwritten material is marked `\todo{...}` and shows up in red in the PDF, so
  gaps are visible in a draft build. A chapter is not ✅ until it has no
  `\todo`.
- Figures: either TikZ drawn inline, or an image file in `book/figures/`
  (`\graphicspath` is set, so `\includegraphics{planar-k33-cycle}` is enough).
  A figure that has not been drawn yet uses
  `\figplaceholder{<height>}{<description of the intended picture>}` inside a
  normal `figure` environment, keeping its `\caption` and `\label` so
  cross-references already work. It typesets as a framed grey brief for whoever
  draws it.
- Pseudocode uses `algorithm` + `algpseudocode` (algorithmicx), not
  `algorithm2e`.
- Cross-references: `\cref{...}` for new text. Chapter 5 came in from lecture
  notes written with the explicit `Section~\ref{...}` style, which is left as
  it is; both render the same.
- Source material is credited in the chapter's "Notes and further reading"
  section, not inline. The book as a whole is based on the course slides of
  Jesper Nederlof and Johan van Rooij (see the preface); the chapters on real
  models of computation are based on lecture notes by Tillmann Miltzow.
- Labels carry the chapter's topic as a prefix — `sec:planar-euler`,
  `thm:planar-pst`, `fig:planar-k33-cycle` — so that labels never collide
  across chapters.

## Building

```sh
make          # builds book/main.pdf
make clean    # removes build artefacts
make todos    # lists every remaining \todo and \figplaceholder, by file
```

Requires a TeX Live installation with `latexmk`. The GitHub Actions workflow in
`.github/workflows/build-book.yml` builds the book on every push and uploads the
PDF as an artefact.

## Roadmap

1. ~~Repository skeleton, chapter outline, pool transcription.~~ ✅
2. Write Part I, in reading order — it is the most self-contained and has the
   most pool questions per page. Chapter 5 (Planar Graphs) is drafted; what it
   still needs is listed under *Open work* below.
3. Write Parts III–V (the "responses to hardness" arc), which share notation and
   should be written together.
4. Write Part II (ER track) last: it is the most research-flavoured and the
   least standard, so it will need the most iteration.
5. Fill in Appendix B once the main text has settled and it is clear what
   actually needs to be assumed.
6. Add exercises beyond the pool questions.
7. Bibliography and attribution pass. Chapters currently carry their reading
   lists as a "Notes and further reading" section; these should become a single
   `references.bib` with real `\cite` keys once there are enough of them.

## Open work in drafted chapters

### Chapter 5 — Planar Graphs

- **19 figure placeholders.** The chapter is a visual one and several arguments
  (segments and interlacement, the crossover gadget, the five-colour Kempe
  chain) are hard to follow without the picture. The placeholders marked
  IMPORTANT in their brief are the ones to draw first. Figures 5.1--5.4 are
  done; 5.1 still carries a `\todo` about its vertex labels.
- **Two constants are unverified.** The $\tfrac{9}{10}$ and $11$ in the
  statement of the planar separator theorem, and the $\sqrt n / 20$ in the
  matching lower bound for the grid, were reconstructed when the text was
  recovered from a PDF whose math did not survive extraction. They are stated
  as fact in the chapter and nothing else depends on their exact values, but
  they are worth a second look.
