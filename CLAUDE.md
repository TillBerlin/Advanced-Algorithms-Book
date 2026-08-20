# Working agreements for this repository

The plan, the chapter status and the conventions for the book's *content* are
in [`OVERVIEW.md`](OVERVIEW.md). This file is only about how to work here.

## Git

- Develop on `claude/advanced-algorithms-textbook-564jrw`.
- **After finishing a chapter, fast-forward `main` to it as well**, without
  asking. The author reads the repository on GitHub, which shows `main` by
  default, so work that is only on the branch is work the author cannot see.
  `git push origin HEAD:main` — this is standing authorisation, given
  2026-08-20.
- A "chapter" means a chapter written or substantially revised. Small fixes can
  ride along with the next chapter; they do not each need their own push.
- Before overwriting `main`, check that nothing is lost: compare the blob
  hashes of the assets in `main`'s tree against the branch's tree.
- Build artefacts are gitignored. `git status` after a build should be clean.

## Sources

- Everything the book is written *from* lives in `material/`; every figure the
  book uses lives in `book/figures/`. Nothing loose in the root.
- **Check a chapter against its source deck before calling it done**, in both
  directions: nothing missing, and nothing present that the lectures do not
  cover. This was missed once and cost a rewrite.
- **Do not trust the records quoted on the slides.** They go stale and one has
  already been found wrong. Verify a claimed running time before repeating it,
  and say in the notes that such numbers move.
- Where a chapter has no source deck, say so in the chapter header and in
  `OVERVIEW.md` rather than inventing content.

## Citations

- Every entry in `book/references.bib` that has a DOI carries one, and **DOIs
  are verified against the publisher record, never written from memory**. A
  wrong DOI sends the reader somewhere else entirely. Entries with no
  verifiable DOI carry an ISBN, an arXiv id, or nothing.

## Prose

- **Nothing starts cold**: a problem definition, definition, theorem or lemma
  is preceded by one to three sentences saying why it is coming.
- Do not tell the reader how the book differs from its sources.
- Material beyond the lectures may stay, but its heading ends with
  `(non-examinable)` and it carries a `\nonexam{...}` note saying why it earns
  its place.
