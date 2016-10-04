# Copyright (C) 2016  Stephan Kreutzer
# GNU Affero General Public License 3 or, at your option, any later version of this license.
# http://www.refugee-it.de



.PHONY: all clean



all: heft_7_print.pdf



heft_7_print.pdf: heft_7.pdf
	pdfbook --landscape --paper a3paper --outfile heft_7_print_booklet.pdf heft_7.pdf
	gs -o heft_7_print.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_7_print_booklet.pdf
	rm heft_7_print_booklet.pdf

heft_7.pdf: ../../latin_letter_y.pdf ../../latin_letter_z.pdf ../../latin_letter_a_with_diaeresis.pdf ../../latin_letter_o_with_diaeresis.pdf
	pdfunite ../../latin_letter_y.pdf ../../latin_letter_z.pdf ../../latin_letter_a_with_diaeresis.pdf ../../latin_letter_o_with_diaeresis.pdf ./heft_7.pdf

clean:
	rm -f ./heft_7_print.pdf
	rm -f ./heft_7.pdf
