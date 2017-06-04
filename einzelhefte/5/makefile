# Copyright (C) 2016-2017  Stephan Kreutzer
# GNU Affero General Public License 3 or, at your option, any later version of this license.
# http://www.refugee-it.de



.PHONY: all clean



all: heft_5_print.pdf heft_5_print_booklet.pdf



heft_5_print.pdf: heft_5.pdf
	pdf2ps heft_5.pdf heft_5_print_temp_1.ps
	psbook heft_5_print_temp_1.ps heft_5_print_temp_2.ps
	psnup -Pa4 -l -pa3 -2 -s1 heft_5_print_temp_2.ps heft_5_print_temp_3.ps
	ps2pdf -sPAPERSIZE=a3 heft_5_print_temp_3.ps heft_5_print_temp.pdf
	gs -o heft_5_print.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_5_print_temp.pdf
	rm heft_5_print_temp_1.ps
	rm heft_5_print_temp_2.ps
	rm heft_5_print_temp_3.ps
	rm heft_5_print_temp.pdf

heft_5_print_booklet.pdf: heft_5.pdf
	pdfbook --landscape --paper a3paper --outfile heft_5_print_booklet_temp.pdf heft_5.pdf
	gs -o heft_5_print_booklet.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress heft_5_print_booklet_temp.pdf
	rm heft_5_print_booklet_temp.pdf

heft_5.pdf: ../../latin_letter_q.pdf ../../latin_letter_r.pdf ../../latin_letter_s.pdf ../../latin_letter_t.pdf
	pdfunite ../../latin_letter_q.pdf ../../latin_letter_r.pdf ../../latin_letter_s.pdf ../../latin_letter_t.pdf ./heft_5.pdf

clean:
	rm -f ./heft_5_print_booklet.pdf
	rm -f ./heft_5_print.pdf
	rm -f ./heft_5.pdf
