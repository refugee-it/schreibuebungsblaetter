# Copyright (C) 2016  Stephan Kreutzer
# Creative Commons BY-SA 4.0
# http://www.refugee-it.de



.PHONY: all clean



all: heft_8_print.pdf



heft_8_print.pdf: heft_8.pdf
	pdf2ps heft_8.pdf 1.ps
	psbook 1.ps 2.ps
	psnup -Pa4 -l -pa3 -2 -s1 2.ps 3.ps
	ps2pdf -sPAPERSIZE=a3 3.ps heft_8_print.pdf
	rm 3.ps
	rm 2.ps
	rm 1.ps

heft_8.pdf: ../../latin_letter_u_with_diaeresis.pdf ../../leer.pdf
	pdfunite ../../latin_letter_u_with_diaeresis.pdf ../../leer.pdf ../../leer.pdf ../../leer.pdf ./heft_8.pdf

clean:
	rm -f ./heft_8_print.pdf
	rm -f ./heft_8.pdf
