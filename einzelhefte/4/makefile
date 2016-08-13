# Copyright (C) 2016  Stephan Kreutzer
# Creative Commons BY-SA 4.0
# http://www.refugee-it.de



.PHONY: all clean



all: heft_4_print.pdf



heft_4_print.pdf: heft_4.pdf
	pdf2ps heft_4.pdf 1.ps
	psbook 1.ps 2.ps
	psnup -Pa4 -l -pa3 -2 -s1 2.ps 3.ps
	ps2pdf -sPAPERSIZE=a3 3.ps heft_4_print.pdf
	rm 3.ps
	rm 2.ps
	rm 1.ps

heft_4.pdf: ../../latin_letter_m.pdf ../../latin_letter_n.pdf ../../latin_letter_o.pdf ../../latin_letter_p.pdf
	pdfunite ../../latin_letter_m.pdf ../../latin_letter_n.pdf ../../latin_letter_o.pdf ../../latin_letter_p.pdf ./heft_4.pdf

clean:
	rm -f ./heft_4_print.pdf
	rm -f ./heft_4.pdf
