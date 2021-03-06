help:
	@cat Makefile

cv.pdf:
	cd src && latexmk -quiet

watch:
	find src -path '*.tex' -or -path '*.cls' | entr make cv.pdf

clean:
	cd src && latexmk -c

release:
	./release.sh

.PHONY: help watch clean release
