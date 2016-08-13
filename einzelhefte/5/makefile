# Copyright (C) 2016  Stephan Kreutzer
# Creative Commons BY-SA 4.0
# http://www.refugee-it.de



.PHONY: all clean



all: heft_5_print.pdf



heft_5_print.pdf: heft_5.pdf
	pdf2ps heft_5.pdf 1.ps
	psbook 1.ps 2.ps
	psnup -Pa4 -l -pa3 -2 -s1 2.ps 3.ps
	ps2pdf -sPAPERSIZE=a3 3.ps heft_5_print.pdf
	rm 3.ps
	rm 2.ps
	rm 1.ps

heft_5.pdf: ../../latin_letter_q.pdf ../../latin_letter_r.pdf ../../latin_letter_s.pdf ../../latin_letter_t.pdf
	pdfunite ../../latin_letter_q.pdf ../../latin_letter_r.pdf ../../latin_letter_s.pdf ../../latin_letter_t.pdf ./heft_5.pdf

clean:
	rm -f ./heft_5_print.pdf
	rm -f ./heft_5.pdf
