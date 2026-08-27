# Figures

Image files for the book. `book/preamble.tex` sets
`\graphicspath{{figures/}}`, so a file `book/figures/planar-euler-induction.pdf`
is included as:

```latex
\includegraphics[width=0.8\textwidth]{planar-euler-induction}
```

Leave off the extension — LaTeX picks the best available format.

## Naming

`<chapter-topic>-<what-it-shows>`, lowercase, hyphenated, matching the figure's
label. A figure labelled `\label{fig:planar-k33-cycle}` lives in
`planar-k33-cycle.pdf`.

## Formats

Vector (`.pdf`, or `.tex`/TikZ compiled inline) is strongly preferred — the book
is printed. Use a raster format (`.png`, or `.jpg` for a photograph — pdfTeX
embeds JPEG without recompressing it) only for photographs and screenshots, and
size them for 300 dpi or more at the printed size. Where the source simply has
no more pixels, cap the printed size instead and record the real figure here.

## Third-party images

Everything in this directory is the authors' own except one file, which carries
a licence with conditions that must survive future edits:

`sm-shapley.jpg` — Lloyd Shapley, Erlangen, 1980. Photograph by **Konrad
Jacobs**, copyright **Mathematisches Forschungsinstitut Oberwolfach**, from the
[Oberwolfach Photo Collection](https://opc.mfo.de/detail?photoID=3808) (photo
3808), via
[Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Shapley,_Lloyd_(1980).jpg),
licensed **CC BY-SA 2.0 Germany**. The credit under the caption in chapter 2 is
what the licence requires; do not remove it. The image is used **unaltered** —
cropping or retouching it creates a derivative work that CC BY-SA 2.0 DE
requires to be released under the same or a compatible licence, so leave it
alone. The Commons original is 284×400 px, the largest that is public, so it is
printed at `height=38mm` (about 267 dpi) rather than the usual 300.

## Replacing a placeholder

Unfinished figures appear in the text as

```latex
\begin{figure}[ht]
\centering
\figplaceholder{45mm}{Description of the intended picture.}
\caption{...}
\label{fig:planar-something}
\end{figure}
```

which typesets a framed grey box describing what should be drawn. To finish it,
replace only the `\figplaceholder{...}{...}` line by an `\includegraphics`, and
**keep the surrounding `\caption` and `\label`** so cross-references still
resolve. `make todos` counts remaining placeholders alongside `\todo` markers.

## Figures for Part II

The figures for the real-computation chapters are the author's own, from the
manuscript *Beyond Bits*. They are **not** extracted from the manuscript PDF;
they were supplied as separate files and are used as they came.

`word-ram.pdf`, `real-ram.pdf` and `turing-machine.pdf` are pages 1--3 of the
supplied `material/notes/RegiserMachine.pdf`, split with `pdfseparate`.

Several of the remaining files carry more than one page, so the chapters that
use them will need `\includegraphics[page=N]{...}`:

| File | Pages | Subject |
| --- | --- | --- |
| `etr-algebraic-set.pdf` | 1 | the region satisfying $x^2+y^2 \le 1 \wedge x \ge 1/2$ |
| `etr-cook-levin.pdf` | 1 | the Cook--Levin tableau |
| `etr-cube-poset.pdf` | 2 | cube poset |
| `er-order-type.pdf` | 1 | definition of an order type |
| `er-cyclic-order.pdf` | 1 | cyclic order of a point with respect to a point set |
| `er-pseudolines.pdf` | 1 | a pseudoline arrangement beside an equivalent straight-line one |
| `er-staudt-construction.pdf` | 5 | von Staudt addition and multiplication gadgets |
| `er-non-parallel-addition.pdf` | 1 | addition gadget without parallel lines |
| `er-linear-transformations.pdf` | 1 | linear transformations |
| `er-different-embedding.pdf` | 1 | two different combinatorial embeddings |
| `er-disks.pdf` | 1 | unit disk graphs |
| `er-disk-reduction.pdf` | 4 | the reduction for recognising unit disk graphs |
| `er-curve-straightening.pdf` | 4 | optimal curve straightening |
| `er-art-gallery.pdf` | 1 | the art gallery problem |
| `er-art-inversion.pdf` | 2 | inversion in the art gallery construction |
| `er-irrational-guards.pdf` | 1 | a polygon needing irrational guards |
| `er-variable-guard-segment.pdf` | 1 | a variable guard segment |
| `er-annulus.pdf` | 1 | annulus |

The subjects above are inferred from the file names and a look at each file;
correct them when the chapters that use them are written.
