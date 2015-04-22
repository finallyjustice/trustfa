# ./cl
all:
	latex trustfa.tex
	bibtex trustfa
	latex trustfa.tex
	latex trustfa.tex
	dvips -t letter -f -Pcmz trustfa.dvi -o trustfa.ps 
	ps2pdf trustfa.ps  
#ps2pdf trustfa.ps & 

open:
	gnome-open trustfa.pdf

clean:
	rm -rf *~ *.dvi *.blg *.log .*~ *.aux *.ps *.pdf *.bbl *.ent

remove:
	rm -rf *~ *.dvi *.blg *.log .*~ *.aux *.ps  *.bbl *.ent
