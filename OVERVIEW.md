# Advanced Algorithms — Book Overview

This is the working overview of the book: the chapter list, what each chapter
must contain, and the status of each. **New chapters are inserted here first**,
then created as a `.tex` file and `\include`d in `book/main.tex`.

- Source material (schedule, exam pool): [`material/`](material/)
- Book source: [`book/`](book/), master file [`book/main.tex`](book/main.tex)
- Bibliography: [`book/references.bib`](book/references.bib)
- Figures: [`book/figures/`](book/figures/) — see its README for naming and how
  to replace a placeholder
- Exam question pool, transcribed and mapped: [`book/appendix/a-pool-questions.tex`](book/appendix/a-pool-questions.tex)

## Design principles

1. **The pool is the contract, and the pool is the learning goals.** The course
   uses the [open pool exam method](https://openpoolexams.science.uu.nl/): at
   least 30% of exam questions are taken verbatim from a published pool. A pool
   question is a learning goal written as a question, so a chapter states them
   **once**, in its `goals` environment at the top: `\goalitem{...}` for a goal
   the pool does not ask for, `\poolgoal{n.i}{...}` for one it does, worded as
   the pool words it. There is no separate list at the end of the chapter.
   Every pool question must be fully answerable from the book.
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
| 2 | Combinatorics via Algorithms and Stable Marriage | `02-stable-marriage.tex` | W1 Tue | 1 | 🟡 stable marriage drafted; Euler tours + 19 figures open |
| 3 | Maximum Flow and Minimum Cut | `03-maximum-flow.tex` | W1 Thu | 2, 3 | 🟡 prose complete; 8 figures open |
| 4 | Minimum Cost Flow | `04-minimum-cost-flow.tex` | W2 Tue | 4 | 🟡 prose complete; 6 figures open |
| 5 | Planar Graphs | `05-planar-graphs.tex` | W2 Thu | 5 | 🟡 prose complete; 17 figures open |
| 6 | Matching | `06-matching.tex` | W4 Tue | 7 | 🟡 prose complete; 7 figures open |

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

Additions to the pool, already applied to Appendix A:

- **Questions 20--28** were added so that every learning goal in Johan's
  chapters is the content of some pool question. The original pool represented
  some lectures by a list of learning-goal questions (1, 5, 6, 8, 11, 15, 19)
  and others by a single exercise (2/3, 4, 7, 9/10, 12, 13, 14, 16/17, 18); the
  additions give the second group the same treatment as the first. Questions
  20--22 are grounded in the flow deck; 23--28 are derived from the goals of
  chapters that are still skeletons, so they will need revisiting when those
  chapters are written.
- Goals still untagged, all in Till's chapters, left alone: chapter 1 (the
  book's own introduction, not a lecture), the planarity-testing goal in
  chapter 5, and three goals each in chapters 17 and 18.

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

\begin{goals}
  \goalitem{a goal the lectures cover but the pool does not}
  \poolgoal{1.1}{a goal that is item 1 of pool question 1, worded as the pool words it}
\end{goals}

\section{...}
\label{sec:...}
...

\section{Exercises}
\label{sec:ex-short-name}
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
- Citations use `natbib`: `\citet{Key}` for "Lipton and Tarjan (1979) showed",
  `\citep{Key}` for a parenthetical. Every entry in `book/references.bib` that
  has a DOI must carry one, and **DOIs are verified against the publisher
  record before being added, never written from memory** — a wrong DOI sends
  the reader somewhere else entirely. Entries with no DOI carry an ISBN or URL.
- **Material the lectures do not cover** may stay in the book, but its section
  heading must end with `(non-examinable)` and carry a `\nonexam{...}` note
  saying why it earns its place. Students navigate by what is examinable; an
  unmarked section is a promise that it is. Check new prose against the chapter's
  source deck (above) before deciding.
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
7. ~~Bibliography and attribution pass.~~ ✅ `book/references.bib` exists, is
   wired in through `natbib`/`bibtex`, and carries verified DOIs. New chapters
   cite into it rather than listing references by hand.

## Source decks

The slide decks the course was taught from are in the repository root and are
the authority on **what a chapter must cover**. Check a chapter against its deck
before calling the prose complete — this was missed once already and cost a
rewrite.

| Deck | Slides | Chapters it covers |
| --- | --- | --- |
| `Flows and Matching 2026.pptx` | 1–56 | 3 (maximum flow) ✅ checked |
| | 57–91 | 4 (minimum cost flow) ✅ checked |
| | 92–141 | 6 (matching) ✅ checked |
| `planar.pdf` | — | 5 (planar graphs) |
| `Real-Compuation.pdf` | — | 7 (real models of computation) |

Extract a `.pptx` with `markitdown deck.pptx`; that drops equations, so for the
mathematical slides unzip it and read `ppt/slides/slideN.xml` directly.

## Open work in drafted chapters

### Chapter 3 — Maximum Flow and Minimum Cut

- Three sections carry `(non-examinable)`: Edmonds--Karp (assumed bachelor
  background, and the lecture's recap explicitly skips it), Dinic (absent from
  the deck, kept because the grid escape running time uses its unit-capacity
  bound) and Menger (the deck has the two recipes, not the named theorem).
- **8 figure placeholders.** The augmenting-path figure and the push/lift
  landscape are the two that carry real argument.

### Chapter 6 — Matching

- **7 figure placeholders.** Two carry the argument and should be drawn first:
  the flower/blossom/stem picture, and the three-panel lift of an augmenting
  path back through a contracted blossom.
- Hall's and König's *matching* theorems are deliberately absent: they are not
  in the deck. König's *edge colouring* theorem is, and is in the chapter.
  Chapter 17 should introduce whatever it needs of the others rather than
  assuming this chapter supplies them.

### Chapter 4 — Minimum Cost Flow

- **6 figure placeholders.** The two that matter are the hopping-aeroplane
  network and the fleet phase-out chain: both are modelling figures, and a
  modelling argument is hard to follow without one.
- The running-time bound quoted for minimum-mean cycle cancelling
  ($\bigoh{n^2m^3\log^2 n}$) is the one stated in the lecture slides. Sharper
  bounds are in the literature; if the chapter is ever tightened, that is the
  place.

### Chapter 2 — Combinatorics via Algorithms and Stable Marriage

- **The Euler tour half is not written.** The integrated notes cover stable
  marriage only. `\todo` markers hold the two opening sections: the
  proof-by-algorithm theme, and Euler tours with Hierholzer's algorithm. Until
  they are written, item 1 of pool question 1 is not answered anywhere in the
  book.
- **19 figure placeholders**, including a portrait of Lloyd Shapley whose
  licence terms need checking before use.

### Chapter 5 — Planar Graphs

- **19 figure placeholders.** The chapter is a visual one and several arguments
  (segments and interlacement, the crossover gadget, the five-colour Kempe
  chain) are hard to follow without the picture. The placeholders marked
  IMPORTANT in their brief are the ones to draw first. Figures 5.1--5.4, 5.7
  (five-colouring) and 5.8 (F\'ary) are done and checked.
- **Two constants are unverified.** The $\tfrac{9}{10}$ and $11$ in the
  statement of the planar separator theorem, and the $\sqrt n / 20$ in the
  matching lower bound for the grid, were reconstructed when the text was
  recovered from a PDF whose math did not survive extraction. They are stated
  as fact in the chapter and nothing else depends on their exact values, but
  they are worth a second look.
