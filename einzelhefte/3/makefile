# Copyright (C) 2016  Stephan Kreutzer
# Creative Commons BY-SA 4.0
# http://www.refugee-it.de



.PHONY: all clean



all: heft_3_print.pdf



heft_3_print.pdf: heft_3.pdf
	pdf2ps heft_3.pdf 1.ps
	psbook 1.ps 2.ps
	psnup -Pa4 -l -pa3 -2 -s1 2.ps 3.ps
	ps2pdf -sPAPERSIZE=a3 3.ps heft_3_print.pdf
	rm 3.ps
	rm 2.ps
	rm 1.ps

heft_3.pdf: ../../latin_letter_i.pdf ../../latin_letter_j.pdf ../../latin_letter_k.pdf ../../latin_letter_l.pdf
	pdfunite ../../latin_letter_i.pdf ../../latin_letter_j.pdf ../../latin_letter_k.pdf ../../latin_letter_l.pdf ./heft_3.pdf

clean:
	rm -f ./heft_3_print.pdf
	rm -f ./heft_3.pdf
