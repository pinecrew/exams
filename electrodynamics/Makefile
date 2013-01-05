COMPILER=pdflatex
SOURCE=00.tex
NAME=electrodynamics-exam
FLAGS=-jobname=output

default: *.tex
	$(COMPILER) $(FLAGS) $(SOURCE)
	$(COMPILER) $(FLAGS) $(SOURCE)
	$(COMPILER) $(FLAGS) $(SOURCE)
	rm -rf *.aux *.log *.toc *.out

dropbox: default
	cp output.pdf ~/Dropbox/Public/exams/$(NAME).pdf

debug:
	$(COMPILER) $(FLAGS) $(SOURCE)

clean:
	rm -f *.aux *.log *.toc output.pdf
