# Copyright (C) 2016  Stephan Kreutzer
# GNU Affero General Public License 3 or, at your option, any later version of this license.
# http://www.refugee-it.de



.PHONY: all clean



all: heft_4_print.pdf



heft_4_print.pdf: heft_4.pdf
	pdfbook --landscape --paper a3paper --outfile heft_4_print_booklet.pdf heft_4.pdf
	gs -o heft_4_print.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_4_print_booklet.pdf
	rm heft_4_print_booklet.pdf

heft_4.pdf: ../../latin_letter_m.pdf ../../latin_letter_n.pdf ../../latin_letter_o.pdf ../../latin_letter_p.pdf
	pdfunite ../../latin_letter_m.pdf ../../latin_letter_n.pdf ../../latin_letter_o.pdf ../../latin_letter_p.pdf ./heft_4.pdf

clean:
	rm -f ./heft_4_print.pdf
	rm -f ./heft_4.pdf
