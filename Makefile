
NAME_EN = cv-en
NAME_FR = cv-fr

PDF_LATEX = pdflatex -shell-escape

all: en fr

en:
	$(PDF_LATEX) --jobname $(NAME_EN) en.tex

fr:
	$(PDF_LATEX) --jobname $(NAME_FR) fr.tex

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.gz

fclean: clean
	rm -f $(NAME_FR).pdf $(NAME_EN).pdf

re:			fclean all