# Copyright (C) 2016  Stephan Kreutzer
# GNU Affero General Public License 3 or, at your option, any later version of this license.
# http://www.refugee-it.de



.PHONY: all clean



all: heft_2_print.pdf



heft_2_print.pdf: heft_2.pdf
	pdfbook --landscape --paper a3paper --outfile heft_2_print_booklet.pdf heft_2.pdf
	gs -o heft_2_print.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_2_print_booklet.pdf
	rm heft_2_print_booklet.pdf

heft_2.pdf: ../../latin_letter_e.pdf ../../latin_letter_f.pdf ../../latin_letter_g.pdf ../../latin_letter_h.pdf
	pdfunite ../../latin_letter_e.pdf ../../latin_letter_f.pdf ../../latin_letter_g.pdf ../../latin_letter_h.pdf ./heft_2.pdf

clean:
	rm -f ./heft_2_print.pdf
	rm -f ./heft_2.pdf
