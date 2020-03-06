.PHONY: build preview

default: build

build:
	latexmk report.tex

preview: build
	open -ga Preview.app report.pdf

watch:
	watchexec --exts tex,bib 'make preview'
