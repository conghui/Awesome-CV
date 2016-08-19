
all: cv.pdf

%.pdf: %.tex
	xelatex $<


.PHONY: clean

clean:
	rm -rf *.aux *.out *.log *.pdf
