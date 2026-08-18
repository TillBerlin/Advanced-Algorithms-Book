# Build the book.  Requires TeX Live with latexmk.
BOOKDIR := book
MAIN    := main

.PHONY: all clean todos watch

all: $(BOOKDIR)/$(MAIN).pdf

$(BOOKDIR)/$(MAIN).pdf: $(shell find $(BOOKDIR) -name '*.tex')
	cd $(BOOKDIR) && latexmk -pdf -interaction=nonstopmode -halt-on-error $(MAIN).tex

watch:
	cd $(BOOKDIR) && latexmk -pdf -pvc -interaction=nonstopmode $(MAIN).tex

clean:
	cd $(BOOKDIR) && latexmk -C
	rm -f $(BOOKDIR)/*.bbl $(BOOKDIR)/*.run.xml

# List everything that still needs writing or drawing.
todos:
	@grep -rn '\\todo{' $(BOOKDIR) --include='*.tex' | sed 's|^| |' || true
	@grep -rn '\\figplaceholder{' $(BOOKDIR) --include='*.tex' | sed 's|^| |' || true
	@echo
	@printf 'todo markers:       %s\n' "$$(grep -rho '\\todo{' $(BOOKDIR) --include='*.tex' | wc -l)"
	@printf 'figure placeholders: %s\n' "$$(grep -rho '\\figplaceholder{' $(BOOKDIR) --include='*.tex' | wc -l)"
