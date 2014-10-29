### Makefile
### $Id: Makefile,v 1.11 2011/01/17 14:13:29 tiago Exp $
all: uninstall fulano_tese.dvi fulano_tese.ps fulano_tese.pdf clean

uninstall:
	rm -f fulano_tese.pdf

fulano_tese.dvi: fulano_tese.tex
		latex  fulano_tese
		bibtex fulano_tese
		latex  fulano_tese
		latex  fulano_tese

fulano_tese.ps: fulano_tese.dvi
		dvips -Z -Pamz -Pcmz -Ppdf -G0 fulano_tese.dvi -o fulano_tese.ps

fulano_tese.pdf: fulano_tese.ps
		ps2pdf -dOptimize=true -dEmbedAllFonts=true -dPDFSETTINGS=/printer fulano_tese.ps

clean:
	rm -f core *.core *.log *.aux *.toc *.lo[fpta] *.blg \
	*.ind *.ilg *.idx *.glo *.gls *.out *~ *.backup *.ps *.dvi

### Makefile ends here.

