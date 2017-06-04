# Copyright (C) 2016-2017  Stephan Kreutzer
# GNU Affero General Public License 3 or, at your option, any later version of this license.
# http://www.refugee-it.de



.PHONY: all clean



all: heft_3_print.pdf heft_3_print_booklet.pdf



heft_3_print.pdf: heft_3.pdf
	pdf2ps heft_3.pdf heft_3_print_temp_1.ps
	psbook heft_3_print_temp_1.ps heft_3_print_temp_2.ps
	psnup -Pa4 -l -pa3 -2 -s1 heft_3_print_temp_2.ps heft_3_print_temp_3.ps
	ps2pdf -sPAPERSIZE=a3 heft_3_print_temp_3.ps heft_3_print_temp.pdf
	gs -o heft_3_print.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_3_print_temp.pdf
	rm heft_3_print_temp_1.ps
	rm heft_3_print_temp_2.ps
	rm heft_3_print_temp_3.ps
	rm heft_3_print_temp.pdf

heft_3_print_booklet.pdf: heft_3.pdf
	pdfbook --landscape --paper a3paper --outfile heft_3_print_booklet_temp.pdf heft_3.pdf
	gs -o heft_3_print_booklet.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_3_print_booklet_temp.pdf
	rm heft_3_print_booklet_temp.pdf

heft_3.pdf: ../../latin_letter_i.pdf ../../latin_letter_j.pdf ../../latin_letter_k.pdf ../../latin_letter_l.pdf
	pdfunite ../../latin_letter_i.pdf ../../latin_letter_j.pdf ../../latin_letter_k.pdf ../../latin_letter_l.pdf ./heft_3.pdf

clean:
	rm -f ./heft_3_print_booklet.pdf
	rm -f ./heft_3_print.pdf
	rm -f ./heft_3.pdf
