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
is printed. Use `.png` only for photographs or screenshots, at 300 dpi or more.

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
