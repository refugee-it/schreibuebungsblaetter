# Copyright (C) 2016  Stephan Kreutzer
# Creative Commons BY-SA 4.0
# http://www.refugee-it.de



.PHONY: all clean



all: heft_2_print.pdf



heft_2_print.pdf: heft_2.pdf
	pdf2ps heft_2.pdf 1.ps
	psbook 1.ps 2.ps
	psnup -Pa4 -l -pa3 -2 -s1 2.ps 3.ps
	ps2pdf -sPAPERSIZE=a3 3.ps heft_2_print.pdf
	rm 3.ps
	rm 2.ps
	rm 1.ps

heft_2.pdf: ../../latin_letter_e.pdf ../../latin_letter_f.pdf ../../latin_letter_g.pdf ../../latin_letter_h.pdf
	pdfunite ../../latin_letter_e.pdf ../../latin_letter_f.pdf ../../latin_letter_g.pdf ../../latin_letter_h.pdf ./heft_2.pdf

clean:
	rm -f ./heft_2_print.pdf
	rm -f ./heft_2.pdf
