# Copyright (C) 2016  Stephan Kreutzer
# Creative Commons BY-SA 4.0
# http://www.refugee-it.de



.PHONY: all clean



all: heft_6_print.pdf



heft_6_print.pdf: heft_6.pdf
	pdf2ps heft_6.pdf 1.ps
	psbook 1.ps 2.ps
	psnup -Pa4 -l -pa3 -2 -s1 2.ps 3.ps
	ps2pdf -sPAPERSIZE=a3 3.ps heft_6_print.pdf
	rm 3.ps
	rm 2.ps
	rm 1.ps

heft_6.pdf: ../../latin_letter_u.pdf ../../latin_letter_v.pdf ../../latin_letter_w.pdf ../../latin_letter_x.pdf
	pdfunite ../../latin_letter_u.pdf ../../latin_letter_v.pdf ../../latin_letter_w.pdf ../../latin_letter_x.pdf ./heft_6.pdf

clean:
	rm -f ./heft_6_print.pdf
	rm -f ./heft_6.pdf
