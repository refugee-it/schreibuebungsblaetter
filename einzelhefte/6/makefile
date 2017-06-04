# Copyright (C) 2016-2017  Stephan Kreutzer
# GNU Affero General Public License 3 or, at your option, any later version of this license.
# http://www.refugee-it.de



.PHONY: all clean



all: heft_6_print.pdf heft_6_print_booklet.pdf



heft_6_print.pdf: heft_6.pdf
	pdf2ps heft_6.pdf heft_6_print_temp_1.ps
	psbook heft_6_print_temp_1.ps heft_6_print_temp_2.ps
	psnup -Pa4 -l -pa3 -2 -s1 heft_6_print_temp_2.ps heft_6_print_temp_3.ps
	ps2pdf -sPAPERSIZE=a3 heft_6_print_temp_3.ps heft_6_print_temp.pdf
	gs -o heft_6_print.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_6_print_temp.pdf
	rm heft_6_print_temp_1.ps
	rm heft_6_print_temp_2.ps
	rm heft_6_print_temp_3.ps
	rm heft_6_print_temp.pdf

heft_6_print_booklet.pdf: heft_6.pdf
	pdfbook --landscape --paper a3paper --outfile heft_6_print_booklet_temp.pdf heft_6.pdf
	gs -o heft_6_print_booklet.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_6_print_booklet_temp.pdf
	rm heft_6_print_booklet_temp.pdf

heft_6.pdf: ../../latin_letter_u.pdf ../../latin_letter_v.pdf ../../latin_letter_w.pdf ../../latin_letter_x.pdf
	pdfunite ../../latin_letter_u.pdf ../../latin_letter_v.pdf ../../latin_letter_w.pdf ../../latin_letter_x.pdf ./heft_6.pdf

clean:
	rm -f ./heft_6_print_booklet.pdf
	rm -f ./heft_6_print.pdf
	rm -f ./heft_6.pdf
