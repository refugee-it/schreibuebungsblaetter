# Copyright (C) 2016  Stephan Kreutzer
# GNU Affero General Public License 3 or, at your option, any later version of this license.
# http://www.refugee-it.de



.PHONY: all clean



all: heft_8_print.pdf



heft_8_print.pdf: heft_8.pdf
	pdfbook --landscape --paper a3paper --outfile heft_8_print_booklet.pdf heft_8.pdf
	gs -o heft_8_print.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_8_print_booklet.pdf
	rm heft_8_print_booklet.pdf

heft_8.pdf: ../../latin_letter_u_with_diaeresis.pdf ../../leer.pdf
	pdfunite ../../latin_letter_u_with_diaeresis.pdf ../../leer.pdf ../../leer.pdf ../../leer.pdf ./heft_8.pdf

clean:
	rm -f ./heft_8_print.pdf
	rm -f ./heft_8.pdf
