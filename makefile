x=bikeshed
latex=pdflatex -file-line-error -halt-on-error $(x).tex
$(x).pdf: $(x).tex sources
	$(latex) && $(latex)
evince: $(x).pdf
	evince $(x).pdf
chrome: $(x).pdf
	google-chrome $(x).pdf
