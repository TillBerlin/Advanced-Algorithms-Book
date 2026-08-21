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

## Repository layout

Two directories, and nothing loose in the root.

```
book/                       everything that becomes the PDF
  main.tex                  master file; chapters are \include'd here
  preamble.tex              packages, theorem environments, shared macros
  references.bib            bibliography, DOIs verified against publishers
  chapters/                 one .tex per chapter, numbered
  appendix/                 pool questions, preliminaries
  frontmatter/              preface
  figures/                  every figure the book uses, and nothing else
material/                   everything the book is written *from*
  slides/                   the lecture decks
  notes/                    manuscripts and lecture notes
  pool/                     the exam pool as circulated
  schedule.md               last year's schedule
```

**Figures.** `book/preamble.tex` sets `\graphicspath{{figures/}}`, so a figure
is included as `\includegraphics{planar-fary}` with no path and no extension.
Every figure the text refers to is in `book/figures/`; nothing else is.

**Build artefacts are not tracked.** `book/main.pdf` and the `.aux`, `.log`,
`.toc` family are in `.gitignore`, so a `git status` after a build stays clean.

**Branches.** Work happens on `claude/advanced-algorithms-textbook-564jrw`, and
`main` is fast-forwarded to it after each chapter, so what GitHub shows by
default is current. See [`CLAUDE.md`](CLAUDE.md) for the rest of the working
agreements.

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
| 2 | Combinatorics via Algorithms and Stable Marriage | `02-stable-marriage.tex` | W1 Tue | Stable Matchings | ✅ drafted; 18 figure placeholders |
| 3 | Maximum Flow and Minimum Cut | `03-maximum-flow.tex` | W1 Thu | 2, 3 | 🟡 prose complete; 8 figures open |
| 4 | Minimum Cost Flow | `04-minimum-cost-flow.tex` | W2 Tue | 4 | 🟡 prose complete; 6 figures open |
| 5 | Planar Graphs | `05-planar-graphs.tex` | W2 Thu | 5 | 🟡 prose complete; 17 figures open |
| 6 | Matching | `06-matching.tex` | W4 Tue | 7 | 🟡 prose complete; 7 figures open |

### Part II — Real Computation and the Existential Theory of the Reals

| # | Chapter | File | Lecture | Pool Q | Status |
| --- | --- | --- | --- | --- | --- |
| 7 | Real Models of Computation | `07-real-models-of-computation.tex` | ER 1 (W3 Thu) | 6 | ✅ drafted, figures in place |
| 8 | The Existential Theory of the Reals | `08-existential-theory-of-the-reals.tex` | ER 2 (W4 Thu) | 8 | ✅ drafted; figures in place, bibliography resolved |
| 9 | Geometric ∃R-Completeness | `09-geometric-er-completeness.tex` | ER 3 (W5 Thu) | 11, 8.5 | ✅ drafted; figures in place |

### Part III — Exact Exponential-Time Algorithms and Lower Bounds

| # | Chapter | File | Lecture | Pool Q | Status |
| --- | --- | --- | --- | --- | --- |
| 10 | Exact Exponential-Time Algorithms I: Branching | `10-exact-algorithms-i.tex` | W5 Tue | Exact 3-SAT, Bisection Width, Branching | ✅ drafted; 2 figure placeholders |
| 11 | Exact Algorithms II: Inclusion–Exclusion | `11-exact-algorithms-ii.tex` | W6 Tue | Set Cover, Subset DP | ✅ drafted; 1 figure placeholder |
| 12 | Fine-Grained Lower Bounds | `12-fine-grained-lower-bounds.tex` | **new lecture, unscheduled** | Dominating Pairs, Fine-Grained Lower Bounds | ✅ drafted; 3 figure placeholders |

### Part IV — Approximation Algorithms

| # | Chapter | File | Lecture | Pool Q | Status |
| --- | --- | --- | --- | --- | --- |
| 13 | Approximation Algorithms I | `13-approximation-i.tex` | W6 Thu | non-symmetric TSP, Approximation Algorithms | ✅ drafted; 2 figure placeholders |
| 14 | Approximation Algorithms II | `14-approximation-ii.tex` | W7 Tue | Steiner Tree, The Landscape | ✅ drafted; 1 figure placeholder |

### Part V — Parameterized Algorithms and Complexity

| # | Chapter | File | Lecture | Pool Q | Status |
| --- | --- | --- | --- | --- | --- |
| 15 | Parameterized Algorithms I | `15-fpt-i.tex` | W7 Thu | Parameterized Complexity | ✅ drafted; 3 figure placeholders |
| 16 | Treewidth | `16-treewidth.tex` | W8 Tue | Treewidth ×3 | ✅ drafted; 4 figure placeholders |
| 17 | Complexity Theory for Approximation and Parameterization | `17-hardness-of-approximation-and-fpt.tex` | W9 Tue | L-reduction, Complexity for Approximation and FPT | ✅ drafted; 2 figure placeholders |
| 18 | Kernelization | `18-kernelization.tex` | W9 Thu (FPT 2) | Vertex Cover Kernel (first half) | ✅ drafted; 1 figure placeholder |
| 19 | Randomized Algorithms | `19-randomized-algorithms.tex` | W9 Thu | Vertex Cover Kernel (second half), Directed k-Path | ✅ drafted; 2 figure placeholders |

### Appendices

| File | Contents | Status |
| --- | --- | --- |
| `appendix/a-pool-questions.tex` | The exam pool, transcribed verbatim, with a question → chapter map | ✅ drafted |
| `appendix/b-preliminaries.tex` | The assumed background: a ten-question self-check with three readings of the result, notation, graph vocabulary, asymptotics and `O*`, the machine model, P/NP/reductions, counting, probability, linear algebra and LP, the recurring proof moves, and where to read more | ✅ drafted |

## The exam pool

The pool lives in `book/appendix/a-pool-questions.tex`. **The questions carry no
numbers.** They are grouped there by the chapter that answers them, and referred
to everywhere else by title — the pool is a set of questions, not a sequence,
the order will change, and which lecture a question came from is not worth
tracking. A learning goal that is also a pool item is marked `\poolgoal{...}`
and prints `[pool]`.

Amendments made so far, all recorded in the appendix itself:

- Nine questions were **added** (*Maximum Flow*, *Minimum Cost Flow*,
  *Matching*, *Branching*, *Subset Dynamic Programming and Inclusion/Exclusion*,
  *Approximation Algorithms*, *The Landscape of Approximation Algorithms*,
  *Treewidth*, *Complexity for Approximation and FPT*) so that every learning
  goal in the book is the content of some pool question. Before that, some
  lectures were represented only by a single exercise.
- *Planar Graphs* item 7: 3-colouring → maximum independent set.
- *Existential Theory of the Reals*: items 4 and 6 withdrawn (order types),
  items 7–10 added (four membership proofs, two by each definition of ∃R).
- *Duality and geometric ∃R-hardness*: items 1–3 withdrawn (point–line duality).
- *Approximation Algorithms* and *The Landscape of Approximation Algorithms*
  rewritten after the deck was read; *Treewidth* expanded the same way.

Known issue to raise with the course team: in the pool PDF the duality question
is titled *Exact Algorithm for Exact 3-SAT*, a copy-paste error from the
question above it. We use an accurate title.

## Chapter template

Every chapter file follows the same shape (see any file in `book/chapters/`):

```latex
\chapter{Title}
\label{ch:short-name}

One paragraph: what this chapter is about and why it belongs here.

\begin{goals}
  \goalitem{a goal the lectures cover but the pool does not}
  \poolgoal{a goal that is also a pool item, worded as the pool words it}
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
- **Nothing starts cold.** A problem definition, a definition, a theorem or a
  lemma is preceded by one to three sentences saying why it is coming and what
  it is for. A section that opens directly with `\begin{definition}` is a bug;
  the reader is being asked to memorise before being told what for.
- **Do not tell the reader how the book differs from its sources.** The
  provenance is in the preface and in each chapter's "Notes and further
  reading"; remarks of the form "this section is new" or "this is deferred to
  chapter N, where it is used" are noise.
- **Skeleton chapters carry goals and nothing else.** Do not invent a section
  outline for a chapter whose source material has not been read — the outline
  will be wrong, and it reads as though the content exists. A skeleton is the
  chapter heading, the goals (which come from the pool, so they are real), and
  one `\todo` naming the deck to write it from.
- Source material lives in `material/`: `material/slides/` for the lecture
  decks, `material/notes/` for manuscripts and lecture notes, `material/pool/`
  for the pool PDF. Figures live in `book/figures/` and nowhere else.

## Building

```sh
make          # builds book/main.pdf
make clean    # removes build artefacts
make todos    # lists every remaining \todo and \figplaceholder, by file
```

Requires a TeX Live installation with `latexmk`. The GitHub Actions workflow in
`.github/workflows/build-book.yml` builds the book on every push and uploads the
PDF as an artefact.

## What is left

Re-audited after the preliminaries appendix. **Two `\todo` markers**, 55
`\figplaceholder` boxes, 289 pages.

**Every chapter of the book is drafted except the introduction.**

### Remaining

| What | Note |
| --- | --- |
| **55 figure placeholders** | All of them are in chapters 2--6, which are waiting on uploads: 18 in chapter 2, 7 in chapter 3, 5 in chapter 4, 18 in chapter 5, 7 in chapter 6. Chapters 7--19 have none left; their 21 figures are drawn in TikZ. |
| Chapter 1, Introduction | Write last. No deck needed. The division of labour with appendix B is now fixed and recorded in the chapter's `\todo`: the appendix carries the background, the chapter carries what makes a problem hard and the four responses to it. |
| Preface | Acknowledgements. |

### Also outstanding

- **Five uploaded figures are unused**: `er-annulus`,
  `er-different-embedding`, `er-non-parallel-addition`,
  `er-staudt-construction`, `etr-cube-poset`. Place or delete.
- **§19.5 needs checking against the lecture.** 2-list colouring and the
  randomized `O(1.5^n)` 3-colouring are in no deck — blackboard material — so
  they were written from the literature.
- **A full pass over the finished book** would be worth doing once the figures
  are in: cross-references between chapters have accumulated, and several
  chapters were written before the ones they now point at.

## Appendix B, the preliminaries

Written after the chapters, from what they actually use, as the policy note in
the file always said it should be. It serves three readers at once and the
first section is what sorts them out — not by telling anyone what they are, but
by giving them ten concrete questions and then three readings of the answer:

1. **A recap.** Someone with a recent bachelor's algorithms course needs the
   notation and the `O*` convention and nothing else; they are told to read two
   sections and start the book.
2. **A syllabus.** Someone with the mathematics but not the algorithmics — the
   usual profile from mathematics or physics — is missing vocabulary and one
   model of computation, which is two evenings of work, and is told which four
   sections and which reference chapters those are.
3. **An honest measurement.** Someone missing both halves is told plainly what
   the gap is (a bachelor's algorithms course plus discrete mathematics, about
   a semester), and given three routes rather than a verdict: take the
   prerequisite first, close the gap in parallel with a named reading list, or
   read the book without the exam — with the parts that stand alone named.
   The framing throughout is sequencing and preparation, never aptitude, and
   the section says so in as many words.

The rest is the background itself, and every fact in it is used somewhere in
the book with a cross-reference saying where. Two notation clashes turned up
while writing it and were fixed: degree was written `d(v)` in chapter 10 and
`\deg(v)` elsewhere, while chapter 3 uses `d(u)` for a distance label — degree
is now `\deg` throughout. Three general reference books were added to the
bibliography (Sipser, Mitzenmacher–Upfal, and the free Lehman–Leighton–Meyer).

## The review pass

A rigorous read of the mathematics of chapters 10–19 was carried out, with
every constant recomputed rather than eyeballed. Chapters 13, 14 and 17 came
back clean; the rest did not. What was found and fixed, worst first:

- **The clause gadget of the ETH → 3-colouring reduction did not work.** It had
  five vertices where the count said six, and brute force over all eight literal
  patterns showed it extended to a colouring only for two of the seven
  satisfying ones. Replaced by the standard six-vertex gadget — two triangles
  joined by an edge — with the or-gadget argument written out and the gadget
  drawn, together with the forced collision when all three literals are false.
- **Schöning's algorithm was misattributed.** The algorithm lectured (random
  centre, exhaustive search of the Hamming ball of radius `n/(k+1)`) is
  Dantsin et al. 2002, not Schöning 1999; Schöning's own random-walk algorithm
  is *faster*, at `(2-2/k)^n` against `(2-2/(k+1))^n`. The theorem is now cited
  correctly and a remark separates the two.
- **The Hamming-ball local search was missing from chapter 10**, although
  slides 39–41 of the exponential-time deck give it and Jesper's deck flashes
  back to it. Added as §10.3.3, with the lemma, its proof, and the
  `O*(3^{n/2}) = O(1.7321^n)` algorithm for 3-SAT.
- **Planar `k`-dominating set used minor-monotonicity of the domination
  number**, which is false — `K_{l²}` has the `l×l` grid as a minor and is
  dominated by one vertex. The lecture slide makes the same claim. Rewritten
  with contractions, the contraction form of the planar grid theorem, and the
  partially triangulated grid, whose maximum degree 8 gives `l²/9`.
- **The Hamiltonian-cycle inclusion–exclusion formula was off by a factor of
  two** — the sum counts each cycle once per direction.
- **The worked Closest String example was wrong**: its second subproblem was
  already a solution, so the trace could not have happened. Replaced by a
  machine-checked trace that branches twice, rejects twice and succeeds.
- **The half-integrality perturbation sent coordinates at `0` to `−ε`.**
  Restricted to the coordinates that are not already half-integral.
- Smaller: the claimed Impagliazzo–Paturi bound `s_k ≤ c·s_3` for an absolute
  `c` is not their theorem (the SETH ⇒ ETH proof now runs through
  sparsification and clause splitting, with a `k`-dependent constant); the
  ETH ⇒ P ≠ NP implication was stated backwards; the polynomial-space colouring
  remark counted maximal independent sets where it needed all of them;
  `O(n^{2.23k/3})` for clique is not a bound anyone has proved and is now
  `O(n^{ωk/3})`; the linear planar grid bound is Robertson–Seymour–Thomas 1994,
  not Graph Minors V; treewidth ≤ 1 ⇒ forest needed a proof and now has one;
  the dominating-set running time over a tree decomposition is quoted
  consistently as `4^k` naive and `3^k` with fast subset convolution; and the
  `abab` example has four bad blocks, not two, which is the point of the
  constant 4.

## Source material

Everything the course was taught from lives under `material/`, and the decks are
the authority on **what a chapter must cover**. Check a chapter against its deck
before calling the prose complete — this was missed once already and cost a
rewrite.

| Deck | Slides | Chapters it covers |
| --- | --- | --- |
| `material/slides/Flows and Matching 2026.pptx` | 1–56 | 3 (maximum flow) ✅ checked |
| | 57–91 | 4 (minimum cost flow) ✅ checked |
| | 92–141 | 6 (matching) ✅ checked |
| `material/slides/planar.pdf` | — | 5 (planar graphs) |
| `material/slides/Exponential Time Algorithms 2026.pptx` | 1–53 | 10 (branching, enumeration, meet in the middle) ✅ checked |
| | 54–75 | 11 (inclusion–exclusion) ✅ checked |
| `material/slides/Approximation Algorithms 2026.pdf` | 1–29 | 13 (approximation I) ✅ checked |
| | 30–74 | 14 (approximation II) ✅ checked |
| `material/slides/FPT and Approximation Complexity.pptx` | 50 slides | 17 (hardness of approximation) |
| `material/slides/an-randomized2122(1).pptx` | 18 slides | 19 (randomized algorithms) |
| `material/slides/aa-fpt.pdf` | 1–66 | 15 (parameterized algorithms I) ✅ checked |
| | 67–83 | 18 (kernelization) |
| `material/slides/Treewidth 2026.pptx` | 1–65 | 16 (treewidth) ✅ checked |
| `material/notes/Real-Compuation.pdf` | ch. 1 | 7 (real models of computation) ✅ checked |
| ("Beyond Bits", Till's manuscript) | ch. 2 | 8 (ETR) |
| | ch. 3–4 | 9 (duality, ETR-AM/ETR-INV, unit disk graphs, curve straightening, art gallery; order types and stretchability at the end, non-examinable) ✅ |
| **no source** | — | 12 (ETH/SETH — new chapter, written from the literature) |
| **no source** | — | 19 also needs the blackboard `O(1.5^n)` 3-colouring, if the new deck lacks it |

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

### Chapter 18 — Kernelization

- Written from `aa-fpt.pdf` slides 67–83: the Nemhauser–Trotter `2k`-vertex
  kernel for vertex cover, and the quadratic kernel for cluster editing.
- The LP route is given in full: the ILP, half-integrality with the
  perturbation proof, Nemhauser–Trotter with both halves (that `S*` is a cover,
  and that it is no larger), and then the kernel. Worth noting in the lecture
  that the theorem is stronger than the 2-approximation extracted from the same
  relaxation in chapter 13 — where the LP is *certain*, it is *right*.
- **Two skeleton goals were dropped**: crown decompositions and the sunflower
  lemma are in no deck. Kernel lower bounds moved to chapter 12, and §18.4 now
  just points there.
- The cluster editing proof is presented with its shape called out: the rules
  are easy, and the work is the converse — bounding the instance once no rule
  applies, by arguing from a hypothetical solution about how many witnesses one
  modification can account for.

### Chapter 17 — Complexity for Approximation and Parameterization

- Written from the newly supplied deck (50 slides), which is two lectures:
  parameterized complexity and reductions on 1–30, approximation complexity on
  31–50. Both halves are conditional non-existence proofs, and the chapter is
  built around that parallel.
- The parameterized half is the deck's chain of three reductions —
  clique → clique on regular graphs → multicoloured clique → dominating set —
  all given in full. The instructive failure is included: the polynomial
  reduction from independent set to vertex cover is not a parameterized one,
  because the parameter becomes `n − k`.
- The approximation half: APX-completeness, the PCP theorem as a black box,
  L-reductions with the PTAS-preservation proof, Max 3-SAT ≤ Max 2-SAT
  (a = 13, b = 1), and Max 2-SAT ≤ Max IS (a = b = 1), which closes the loop
  chapter 14 left open.
- **The pool exercise is worked**: Max Cut on multigraphs is APX-hard, by
  L-reduction from Max NAE-3SAT with a = 14, b = 1/2. Two design decisions
  carry it and are called out in the text — the two-literal clause gadget is
  *doubled* so every satisfied clause contributes the same amount, and the
  consistency multiplicity is `2·occ(x)`: large enough that inconsistency never
  pays, small enough that the total stays proportional to `OPT` so that `a`
  remains a constant.
- **The pool question was rewritten** from five vague items to eleven that
  follow the deck. The old item 5 asked for an ETH-based parameterized lower
  bound; that belongs to chapter 12 and was dropped.

### Chapter 19 — Randomized Algorithms

- Written from the newly supplied deck (18 slides): one-sided error and
  amplification, Stirling, colour coding for `k`-path in `k^k` and then
  `(2e)^k`, Schöning, feedback vertex set in `4^k`.
- **§19.5 is not from the deck.** The pool question *Vertex Cover Kernel* asks
  for 2-list colouring and a randomized `O(1.5^n)` 3-colouring, and neither is
  in any slides — that was blackboard material. It is written here from the
  literature: 2-list colouring is 2-SAT in disguise, and drawing a random
  two-element colour list per vertex keeps a fixed proper colouring alive with
  probability `(2/3)^n`, so `(3/2)^n` rounds suffice. **Check this against what
  was actually lectured.**
- The two colour-coding algorithms are presented as a trade rather than as an
  improvement: the first demands the path's colours come out in order
  (probability `k^-k`, polynomial subroutine), the second only demands
  distinctness (probability `e^-k`, `2^k` subroutine). The product is what
  matters.
- Schöning is a proof sketch — the entropy estimate for the binomial sum is
  quoted rather than proved.

### Chapters 10 and 11 — Exact Exponential-Time Algorithms

- Written from the exponential-time deck. **The deck order and the pool order
  differ**, and the pool won: the deck teaches dynamic programming over subsets
  in the first lecture (slides 26–30), but the pool question for chapter 11 asks
  for subset DP and Held–Karp, so Lawler and Held–Karp are in chapter 11.
  Chapter 10 is enumeration, branching and meet-in-the-middle.
- **The records on the slides were checked, not copied**, at the author's
  suggestion — and one is wrong. The deck quotes `O(1.1844^n)` (Robson 2001) as
  the best known for maximum independent set; that is an unrefereed technical
  report. The published record in polynomial space is `O(1.1996^n)`
  (Xiao–Nagamochi 2017), improving Robson's published `O(1.2109^n)` from 1986.
  The chapter says so and adds a line warning that numbers of this kind move.
  The 3-colouring record `O(1.3217^n)` (Meijer 2023) checked out.
- **Both pool exercises are worked in full, and neither is in the deck.**
  *Exact 3-SAT*: the two reduction rules plus three cleanup rules the pool
  question does not mention but a correct algorithm needs (empty clause,
  repeated literal, complementary pair), then branching on a 3-clause with
  vector (3,3,3) for `O(1.4423^n)`. *Bisection width*: the balanced enumeration
  is `Θ(2^n/√n)`, so beating 2 needs split-and-list — three groups, a
  min-weight triangle, and fast matrix multiplication, for `O(1.7315^n)`. The
  chapter notes that any `c < 2` answers the question.
- **3 figure placeholders.** The `(1,4)` branching step is the one that carries
  argument.

### Chapter 12 — Fine-Grained Lower Bounds

**New chapter, no deck.** Written on request for a lecture on ETH and SETH, and
then extended with every topic that was on the shortlist, so that the lecturer
can choose. Two pool questions were added for it: *Dominating Pairs* (exercise)
and *Fine-Grained Lower Bounds* (13 learning-goal items).

Contents: the two hypotheses; the sparsification lemma; linear reductions;
ETH ⇒ no 2^o(n) for 3-colouring; ETH ⇒ no 2^o(√n) for planar 3-colouring;
ETH ⇒ no f(k)·n^o(k) for clique; Orthogonal Vectors and SETH ⇒ OV; the discrete
Fréchet distance as reachability, with the coordinate and vector gadgets;
edit distance and LCS; two non-examples; SETH and treewidth DP; 3SUM and APSP;
kernel lower bounds.

**What is proved and what is quoted** — worth knowing before lecturing:

| Result | Status |
| --- | --- |
| ETH ⇒ no 2^o(n) for 3-colouring | proved in full |
| ETH ⇒ no 2^o(√n) for planar 3-colouring | proved in full |
| SETH ⇒ OV conjecture | proved in full |
| Fréchet coordinate + vector gadget | **proved in full** |
| Fréchet OR gadget (§12.7.4) | **stated, cited to Bringmann** |
| clique, edit distance, LCS, treewidth, 3SUM, APSP, kernels | stated, cited |

- The **Fréchet vector gadget is the one piece of new exposition here.** The
  gadget interleaves the coordinate points with a separator at position 3, which
  blocks every off-parity cell and so forces any traversal onto the diagonal —
  a five-line parity argument. Without it the gadget is simply wrong: for
  a = b = (0,1,0) the path (1,1),(2,1),(3,2),(3,3) is free although a·b = 1,
  and that counterexample is in the text and in an exercise. The construction
  is one-dimensional and self-contained; Bringmann's is more elaborate because
  it also has to handle the continuous distance and the approximation version.
- **The OR over the N² pairs is not proved.** `people.mpi-inf.mpg.de` is blocked
  by this container's egress proxy, so the paper could not be read, and writing
  a reconstructed gadget into a textbook is worse than citing one. §12.7.4 says
  exactly what the missing lemma must deliver and why it is the delicate step
  (a traversal must consume both curves entirely, so "skipping" has to be paid
  for). **If the paper is added to `material/`, this can be written out in
  full.**
- **3 figure placeholders**: the 3-colouring clause gadget, the traversal/grid
  picture, and the vector-gadget grid. The last is the one that carries the
  argument — a checkerboard with a broken diagonal.
- The chapter forward-references chapters 15 and 16 (clique, treewidth) in two
  places. That is deliberate: it sits in part III because it bounds the
  algorithms of chapters 10 and 11, and the later references are in remarks.

### Chapter 15 — Parameterized Algorithms I

- Written from the FPT deck, slides 1–66: the classes, four branching
  algorithms (vertex cover, cluster editing, planar independent set, closest
  string), kernelisation, and the convex-string-recoloring and vertex-cover
  kernels. Slides 67–83 — Nemhauser–Trotter and the cluster editing kernel —
  are chapter 18's.
- **Source gap.** Items 10 and 11 of the *Parameterized Complexity* pool
  question ask for `Directed k-Path` and a one-sided error algorithm running in
  `O(k^k n^c)`, i.e. colour coding. **No deck in `material/` covers this**, and
  neither does the randomized half of the *Vertex Cover Kernel* question
  (2-list colouring, randomized 3-colouring in `O(1.5^n)`). Those goals now sit
  in chapter 19. The randomized 3-colouring was lectured at the blackboard,
  so there never were slides for it; `Directed k-Path` by colour coding has
  none either. Both must be written from the literature.
- **3 figure placeholders.** The class diagram (FPT ⊆ W[1] ⊆ … ⊆ XP, with
  para-NP beside it) is the one that earns its place.
- Rule 1 of the convex string kernel bounds the drop in bad-colour blocks by 4
  per change. The deck asserts it; the chapter gives the reason (a change
  touches one block and its two neighbours and can make at most one colour
  good) and notes that any constant gives an O(k²) kernel. Worth a look before
  it is lectured.

### Chapter 16 — Treewidth

- Written from the treewidth deck, slides 1–65. Slides 66–69 are a "Bonus
  Topic" on Hamiltonian cycle and the matchings connectivity matrix, with no
  worked content in the deck; they are mentioned in the notes and nowhere else.
- The two pool exercises — the grid decomposition and cliques living in one bag
  — are worked in §16.4. The *Treewidth* pool question was expanded from four
  items to ten to cover what the deck actually teaches.
- **4 figure placeholders.** The one that carries real argument is the four
  operations of §16.2 with the table beside the graph; the levels/sweep pictures
  are illustration.
- Two things are stated without proof, as in the deck: the cops-and-robber
  characterisation, and the lower bound `tw(p × q grid) ≥ min(p,q)`.

### Chapters 13 and 14 — Approximation Algorithms

- Written from `material/slides/Approximation Algorithms 2026.pdf`, slides 1–29 and 30–74. The
  deck is two lectures in one file and splits cleanly at slide 30, where the
  second title page sits.
- **Dropped from the skeletons because the deck does not have them:** local
  search, scheduling and load balancing, the primal–dual method, randomised
  rounding. LP rounding moved from chapter 14 to chapter 13, where the deck
  puts it (slides 24–26).
- **Added although the deck does not have them, because the pool does:** the
  asymmetric TSP construction (*Approximation non-symmetric TSP*, chapter 13,
  worked as a 3-approximation via
  symmetrising by the *maximum* of the two directions) and Steiner tree
  (*Approximating Steiner Tree*, chapter 14, the MST heuristic plus the two
  impossibility proofs). Both are
  applications of techniques the deck does teach.
- **3 figure placeholders**: double-tree, Christofides in four panels, and the
  levels of a planar embedding. The Christofides one carries real argument.
- Chapter 14 forward-references chapter 17 for APX-hardness three times; that
  chapter needs to deliver the APX-hardness of maximum independent set and of
  vertex cover.

### Chapter 9 — Geometric ∃R-Completeness

- Written from chapters 3 and 4 of the manuscript. Order, per the author:
  **ETR-AM next to ETR-INV** (§9.1, "Two normal forms"); **point–line duality
  (§9.9) and order types (§9.10) at the end**, both `(non-examinable)` in the
  heading with a `\nonexam{}` note.
- **Stretchability is the exception, deliberately.** Both examinable hardness
  proofs — unit disk recognition and optimal curve straightening, both pool
  items — reduce *from* Stretchability, so its definition and the
  Mnëv–Shor theorem are stated in the main line at §9.2 and used as a black
  box. Putting them at the end would make the two proofs point forwards. Only
  the order-type story behind the theorem is non-examinable.
- The ETR-AM item of *Existential Theory of the Reals* is answered here, not
  in chapter 8.
- The first three items of *Duality and geometric ∃R-hardness* (duality,
  above–below, cyclic order) are withdrawn, matching the two order-type items of
  *Existential Theory of the Reals*. Both questions carry a remark saying so.

### Chapter 8 — The Existential Theory of the Reals

- **Bibliography gap closed.** The manuscript's own reference list, found
  inside `material/notes/Real-Compuation.pdf`, resolved the numeric citations; the entries are
  in `references.bib` with DOIs verified against publisher records, and the
  `\todo` is gone.
- **Order types are non-examinable.** The lecture dropped them, so pool
  question 8 items 4 and 6 are withdrawn. The section itself now lives at the
  end of chapter 9, where the hardness proofs that use it are.
- Pool question 8 gained items 7--10, four worked membership proofs, two by
  each definition of the class: Euclidean TSP and PosSLP by the formula,
  geometric packing and the art gallery problem by the real RAM.

### Chapter 7 — Real Models of Computation

- Figures are in place: pages 1--3 of the author's `material/notes/RegiserMachine.pdf`, split
  into `word-ram.pdf`, `real-ram.pdf` and `turing-machine.pdf`. **Do not
  extract figures from the manuscript PDF** — the author supplies them.
- The manuscript carries its own pool-question list per chapter, and chapter
  1's list is exactly pool question 6, so the chapter's goals needed no
  invention.

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
