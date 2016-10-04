# Copyright (C) 2016  Stephan Kreutzer
# GNU Affero General Public License 3 or, at your option, any later version of this license.
# http://www.refugee-it.de



.PHONY: all clean



all: heft_1_print.pdf



heft_1_print.pdf: heft_1.pdf
	pdfbook --landscape --paper a3paper --outfile heft_1_print_booklet.pdf heft_1.pdf
	gs -o heft_1_print.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_1_print_booklet.pdf
	rm heft_1_print_booklet.pdf

heft_1.pdf: ../../latin_letter_a.pdf ../../latin_letter_b.pdf ../../latin_letter_c.pdf ../../latin_letter_d.pdf
	pdfunite ../../latin_letter_a.pdf ../../latin_letter_b.pdf ../../latin_letter_c.pdf ../../latin_letter_d.pdf ./heft_1.pdf

clean:
	rm -f ./heft_1_print.pdf
	rm -f ./heft_1.pdf
