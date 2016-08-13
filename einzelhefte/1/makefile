# Copyright (C) 2016  Stephan Kreutzer
# Creative Commons BY-SA 4.0
# http://www.refugee-it.de



.PHONY: all clean



all: heft_1_print.pdf



heft_1_print.pdf: heft_1.pdf
	pdf2ps heft_1.pdf 1.ps
	psbook 1.ps 2.ps
	psnup -Pa4 -l -pa3 -2 -s1 2.ps 3.ps
	ps2pdf -sPAPERSIZE=a3 3.ps heft_1_print.pdf
	rm 3.ps
	rm 2.ps
	rm 1.ps

heft_1.pdf: ../../latin_letter_a.pdf ../../latin_letter_b.pdf ../../latin_letter_c.pdf ../../latin_letter_d.pdf
	pdfunite ../../latin_letter_a.pdf ../../latin_letter_b.pdf ../../latin_letter_c.pdf ../../latin_letter_d.pdf ./heft_1.pdf

clean:
	rm -f ./heft_1_print.pdf
	rm -f ./heft_1.pdf
