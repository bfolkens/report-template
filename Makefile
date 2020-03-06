.PHONY: build preview

default: build

build:
	latexmk report.tex

preview: build
	open -ga Preview.app report.pdf

watch:
	watchexec --exts tex,bib 'make preview'

sample: build
	mv report.pdf sample.pdf
	pdftoppm sample.pdf sample.thumbs -jpeg -rx 100 -ry 100
