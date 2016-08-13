# Copyright (C) 2016  Stephan Kreutzer
# Creative Commons BY-SA 4.0
# http://www.refugee-it.de



directories = ./einzelhefte



.PHONY: all $(directories) clean



all: gesamt_print.pdf $(directories)



gesamt_print.pdf: gesamt.pdf titel_print.pdf
	pdf2ps gesamt.pdf 1.ps
	psbook 1.ps 2.ps
	psnup -Pa4 -l -pa3 -2 -s1 2.ps 3.ps
	ps2pdf -sPAPERSIZE=a3 3.ps gesamt_print.pdf
	rm 3.ps
	rm 2.ps
	rm 1.ps

titel_print.pdf: titel.pdf leer.pdf
	pdfunite ./titel.pdf ./leer.pdf ./leer.pdf ./titel_print.pdf

gesamt.pdf: titel.pdf latin_letter_a.pdf latin_letter_b.pdf latin_letter_c.pdf latin_letter_d.pdf latin_letter_e.pdf latin_letter_f.pdf latin_letter_g.pdf latin_letter_h.pdf latin_letter_i.pdf latin_letter_j.pdf latin_letter_k.pdf latin_letter_l.pdf latin_letter_m.pdf latin_letter_n.pdf latin_letter_o.pdf latin_letter_p.pdf latin_letter_q.pdf latin_letter_r.pdf latin_letter_s.pdf latin_letter_t.pdf latin_letter_u.pdf latin_letter_v.pdf latin_letter_w.pdf latin_letter_x.pdf latin_letter_y.pdf latin_letter_z.pdf latin_letter_a_with_diaeresis.pdf latin_letter_o_with_diaeresis.pdf latin_letter_u_with_diaeresis.pdf
	pdfunite ./titel.pdf ./latin_letter_a.pdf ./latin_letter_b.pdf ./latin_letter_c.pdf ./latin_letter_d.pdf ./latin_letter_e.pdf ./latin_letter_f.pdf ./latin_letter_g.pdf ./latin_letter_h.pdf ./latin_letter_i.pdf ./latin_letter_j.pdf ./latin_letter_k.pdf ./latin_letter_l.pdf ./latin_letter_m.pdf ./latin_letter_n.pdf ./latin_letter_o.pdf ./latin_letter_p.pdf ./latin_letter_q.pdf ./latin_letter_r.pdf ./latin_letter_s.pdf ./latin_letter_t.pdf ./latin_letter_u.pdf ./latin_letter_v.pdf ./latin_letter_w.pdf ./latin_letter_x.pdf ./latin_letter_y.pdf ./latin_letter_z.pdf ./latin_letter_a_with_diaeresis.pdf ./latin_letter_o_with_diaeresis.pdf ./latin_letter_u_with_diaeresis.pdf ./gesamt.pdf

latin_letter_a.pdf: latin_capital_letter_a.pdf latin_small_letter_a.pdf
	pdfunite ./latin_capital_letter_a.pdf ./latin_small_letter_a.pdf ./latin_letter_a.pdf

latin_letter_a_with_diaeresis.pdf: latin_capital_letter_a_with_diaeresis.pdf latin_small_letter_a_with_diaeresis.pdf
	pdfunite ./latin_capital_letter_a_with_diaeresis.pdf ./latin_small_letter_a_with_diaeresis.pdf ./latin_letter_a_with_diaeresis.pdf

latin_letter_b.pdf: latin_capital_letter_b.pdf latin_small_letter_b.pdf
	pdfunite ./latin_capital_letter_b.pdf ./latin_small_letter_b.pdf ./latin_letter_b.pdf

latin_letter_c.pdf: latin_capital_letter_c.pdf latin_small_letter_c.pdf
	pdfunite ./latin_capital_letter_c.pdf ./latin_small_letter_c.pdf ./latin_letter_c.pdf

latin_letter_d.pdf: latin_capital_letter_d.pdf latin_small_letter_d.pdf
	pdfunite ./latin_capital_letter_d.pdf ./latin_small_letter_d.pdf ./latin_letter_d.pdf

latin_letter_e.pdf: latin_capital_letter_e.pdf latin_small_letter_e.pdf
	pdfunite ./latin_capital_letter_e.pdf ./latin_small_letter_e.pdf ./latin_letter_e.pdf

latin_letter_f.pdf: latin_capital_letter_f.pdf latin_small_letter_f.pdf
	pdfunite ./latin_capital_letter_f.pdf ./latin_small_letter_f.pdf ./latin_letter_f.pdf

latin_letter_g.pdf: latin_capital_letter_g.pdf latin_small_letter_g.pdf
	pdfunite ./latin_capital_letter_g.pdf ./latin_small_letter_g.pdf ./latin_letter_g.pdf

latin_letter_h.pdf: latin_capital_letter_h.pdf latin_small_letter_h.pdf
	pdfunite ./latin_capital_letter_h.pdf ./latin_small_letter_h.pdf ./latin_letter_h.pdf

latin_letter_i.pdf: latin_capital_letter_i.pdf latin_small_letter_i.pdf
	pdfunite ./latin_capital_letter_i.pdf ./latin_small_letter_i.pdf ./latin_letter_i.pdf

latin_letter_j.pdf: latin_capital_letter_j.pdf latin_small_letter_j.pdf
	pdfunite ./latin_capital_letter_j.pdf ./latin_small_letter_j.pdf ./latin_letter_j.pdf

latin_letter_k.pdf: latin_capital_letter_k.pdf latin_small_letter_k.pdf
	pdfunite ./latin_capital_letter_k.pdf ./latin_small_letter_k.pdf ./latin_letter_k.pdf

latin_letter_l.pdf: latin_capital_letter_l.pdf latin_small_letter_l.pdf
	pdfunite ./latin_capital_letter_l.pdf ./latin_small_letter_l.pdf ./latin_letter_l.pdf

latin_letter_m.pdf: latin_capital_letter_m.pdf latin_small_letter_m.pdf
	pdfunite ./latin_capital_letter_m.pdf ./latin_small_letter_m.pdf ./latin_letter_m.pdf

latin_letter_n.pdf: latin_capital_letter_n.pdf latin_small_letter_n.pdf
	pdfunite ./latin_capital_letter_n.pdf ./latin_small_letter_n.pdf ./latin_letter_n.pdf

latin_letter_o.pdf: latin_capital_letter_o.pdf latin_small_letter_o.pdf
	pdfunite ./latin_capital_letter_o.pdf ./latin_small_letter_o.pdf ./latin_letter_o.pdf

latin_letter_o_with_diaeresis.pdf: latin_capital_letter_o_with_diaeresis.pdf latin_small_letter_o_with_diaeresis.pdf
	pdfunite ./latin_capital_letter_o_with_diaeresis.pdf ./latin_small_letter_o_with_diaeresis.pdf ./latin_letter_o_with_diaeresis.pdf

latin_letter_p.pdf: latin_capital_letter_p.pdf latin_small_letter_p.pdf
	pdfunite ./latin_capital_letter_p.pdf ./latin_small_letter_p.pdf ./latin_letter_p.pdf

latin_letter_q.pdf: latin_capital_letter_q.pdf latin_small_letter_q.pdf
	pdfunite ./latin_capital_letter_q.pdf ./latin_small_letter_q.pdf ./latin_letter_q.pdf

latin_letter_r.pdf: latin_capital_letter_r.pdf latin_small_letter_r.pdf
	pdfunite ./latin_capital_letter_r.pdf ./latin_small_letter_r.pdf ./latin_letter_r.pdf

latin_letter_s.pdf: latin_capital_letter_s.pdf latin_small_letter_s.pdf
	pdfunite ./latin_capital_letter_s.pdf ./latin_small_letter_s.pdf ./latin_letter_s.pdf

latin_letter_t.pdf: latin_capital_letter_t.pdf latin_small_letter_t.pdf
	pdfunite ./latin_capital_letter_t.pdf ./latin_small_letter_t.pdf ./latin_letter_t.pdf

latin_letter_u.pdf: latin_capital_letter_u.pdf latin_small_letter_u.pdf
	pdfunite ./latin_capital_letter_u.pdf ./latin_small_letter_u.pdf ./latin_letter_u.pdf

latin_letter_u_with_diaeresis.pdf: latin_capital_letter_u_with_diaeresis.pdf latin_small_letter_u_with_diaeresis.pdf
	pdfunite ./latin_capital_letter_u_with_diaeresis.pdf ./latin_small_letter_u_with_diaeresis.pdf ./latin_letter_u_with_diaeresis.pdf

latin_letter_v.pdf: latin_capital_letter_v.pdf latin_small_letter_v.pdf
	pdfunite ./latin_capital_letter_v.pdf ./latin_small_letter_v.pdf ./latin_letter_v.pdf

latin_letter_w.pdf: latin_capital_letter_w.pdf latin_small_letter_w.pdf
	pdfunite ./latin_capital_letter_w.pdf ./latin_small_letter_w.pdf ./latin_letter_w.pdf

latin_letter_x.pdf: latin_capital_letter_x.pdf latin_small_letter_x.pdf
	pdfunite ./latin_capital_letter_x.pdf ./latin_small_letter_x.pdf ./latin_letter_x.pdf

latin_letter_y.pdf: latin_capital_letter_y.pdf latin_small_letter_y.pdf
	pdfunite ./latin_capital_letter_y.pdf ./latin_small_letter_y.pdf ./latin_letter_y.pdf

latin_letter_z.pdf: latin_capital_letter_z.pdf latin_small_letter_z.pdf
	pdfunite ./latin_capital_letter_z.pdf ./latin_small_letter_z.pdf ./latin_letter_z.pdf


titel.pdf: titel.odt
	libreoffice --headless --convert-to pdf titel.odt

latin_capital_letter_a.pdf: latin_capital_letter_a.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_a.odt

latin_small_letter_a.pdf: latin_small_letter_a.odt
	libreoffice --headless --convert-to pdf latin_small_letter_a.odt

latin_capital_letter_a_with_diaeresis.pdf: latin_capital_letter_a_with_diaeresis.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_a_with_diaeresis.odt

latin_small_letter_a_with_diaeresis.pdf: latin_small_letter_a_with_diaeresis.odt
	libreoffice --headless --convert-to pdf latin_small_letter_a_with_diaeresis.odt

latin_capital_letter_b.pdf: latin_capital_letter_b.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_b.odt

latin_small_letter_b.pdf: latin_small_letter_b.odt
	libreoffice --headless --convert-to pdf latin_small_letter_b.odt

latin_capital_letter_c.pdf: latin_capital_letter_c.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_c.odt

latin_small_letter_c.pdf: latin_small_letter_c.odt
	libreoffice --headless --convert-to pdf latin_small_letter_c.odt

latin_capital_letter_d.pdf: latin_capital_letter_d.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_d.odt

latin_small_letter_d.pdf: latin_small_letter_d.odt
	libreoffice --headless --convert-to pdf latin_small_letter_d.odt

latin_capital_letter_e.pdf: latin_capital_letter_e.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_e.odt

latin_small_letter_e.pdf: latin_small_letter_e.odt
	libreoffice --headless --convert-to pdf latin_small_letter_e.odt

latin_capital_letter_f.pdf: latin_capital_letter_f.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_f.odt

latin_small_letter_f.pdf: latin_small_letter_f.odt
	libreoffice --headless --convert-to pdf latin_small_letter_f.odt

latin_capital_letter_g.pdf: latin_capital_letter_g.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_g.odt

latin_small_letter_g.pdf: latin_small_letter_g.odt
	libreoffice --headless --convert-to pdf latin_small_letter_g.odt

latin_capital_letter_h.pdf: latin_capital_letter_h.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_h.odt

latin_small_letter_h.pdf: latin_small_letter_h.odt
	libreoffice --headless --convert-to pdf latin_small_letter_h.odt

latin_capital_letter_i.pdf: latin_capital_letter_i.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_i.odt

latin_small_letter_i.pdf: latin_small_letter_i.odt
	libreoffice --headless --convert-to pdf latin_small_letter_i.odt

latin_capital_letter_j.pdf: latin_capital_letter_j.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_j.odt

latin_small_letter_j.pdf: latin_small_letter_j.odt
	libreoffice --headless --convert-to pdf latin_small_letter_j.odt

latin_capital_letter_k.pdf: latin_capital_letter_k.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_k.odt

latin_small_letter_k.pdf: latin_small_letter_k.odt
	libreoffice --headless --convert-to pdf latin_small_letter_k.odt

latin_capital_letter_l.pdf: latin_capital_letter_l.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_l.odt

latin_small_letter_l.pdf: latin_small_letter_l.odt
	libreoffice --headless --convert-to pdf latin_small_letter_l.odt

latin_capital_letter_m.pdf: latin_capital_letter_m.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_m.odt

latin_small_letter_m.pdf: latin_small_letter_m.odt
	libreoffice --headless --convert-to pdf latin_small_letter_m.odt

latin_capital_letter_n.pdf: latin_capital_letter_n.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_n.odt

latin_small_letter_n.pdf: latin_small_letter_n.odt
	libreoffice --headless --convert-to pdf latin_small_letter_n.odt

latin_capital_letter_o.pdf: latin_capital_letter_o.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_o.odt

latin_small_letter_o.pdf: latin_small_letter_o.odt
	libreoffice --headless --convert-to pdf latin_small_letter_o.odt

latin_capital_letter_o_with_diaeresis.pdf: latin_capital_letter_o_with_diaeresis.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_o_with_diaeresis.odt

latin_small_letter_o_with_diaeresis.pdf: latin_small_letter_o_with_diaeresis.odt
	libreoffice --headless --convert-to pdf latin_small_letter_o_with_diaeresis.odt

latin_capital_letter_p.pdf: latin_capital_letter_p.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_p.odt

latin_small_letter_p.pdf: latin_small_letter_p.odt
	libreoffice --headless --convert-to pdf latin_small_letter_p.odt

latin_capital_letter_q.pdf: latin_capital_letter_q.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_q.odt

latin_small_letter_q.pdf: latin_small_letter_q.odt
	libreoffice --headless --convert-to pdf latin_small_letter_q.odt

latin_capital_letter_r.pdf: latin_capital_letter_r.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_r.odt

latin_small_letter_r.pdf: latin_small_letter_r.odt
	libreoffice --headless --convert-to pdf latin_small_letter_r.odt

latin_capital_letter_s.pdf: latin_capital_letter_s.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_s.odt

latin_small_letter_s.pdf: latin_small_letter_s.odt
	libreoffice --headless --convert-to pdf latin_small_letter_s.odt

latin_capital_letter_t.pdf: latin_capital_letter_t.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_t.odt

latin_small_letter_t.pdf: latin_small_letter_t.odt
	libreoffice --headless --convert-to pdf latin_small_letter_t.odt	

latin_capital_letter_u.pdf: latin_capital_letter_u.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_u.odt

latin_small_letter_u.pdf: latin_small_letter_u.odt
	libreoffice --headless --convert-to pdf latin_small_letter_u.odt

latin_capital_letter_u_with_diaeresis.pdf: latin_capital_letter_u_with_diaeresis.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_u_with_diaeresis.odt

latin_small_letter_u_with_diaeresis.pdf: latin_small_letter_u_with_diaeresis.odt
	libreoffice --headless --convert-to pdf latin_small_letter_u_with_diaeresis.odt

latin_capital_letter_v.pdf: latin_capital_letter_v.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_v.odt

latin_small_letter_v.pdf: latin_small_letter_v.odt
	libreoffice --headless --convert-to pdf latin_small_letter_v.odt

latin_capital_letter_w.pdf: latin_capital_letter_w.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_w.odt

latin_small_letter_w.pdf: latin_small_letter_w.odt
	libreoffice --headless --convert-to pdf latin_small_letter_w.odt

latin_capital_letter_x.pdf: latin_capital_letter_x.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_x.odt

latin_small_letter_x.pdf: latin_small_letter_x.odt
	libreoffice --headless --convert-to pdf latin_small_letter_x.odt

latin_capital_letter_y.pdf: latin_capital_letter_y.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_y.odt

latin_small_letter_y.pdf: latin_small_letter_y.odt
	libreoffice --headless --convert-to pdf latin_small_letter_y.odt

latin_capital_letter_z.pdf: latin_capital_letter_z.odt
	libreoffice --headless --convert-to pdf latin_capital_letter_z.odt

latin_small_letter_z.pdf: latin_small_letter_z.odt
	libreoffice --headless --convert-to pdf latin_small_letter_z.odt


$(directories):
	$(MAKE) --directory=$@


clean:
	rm -f ./gesamt_print.pdf
	rm -f ./gesamt.pdf
	rm -f ./titel_print.pdf
	rm -f ./latin_letter_a.pdf
	rm -f ./latin_letter_b.pdf
	rm -f ./latin_letter_c.pdf
	rm -f ./latin_letter_d.pdf
	rm -f ./latin_letter_e.pdf
	rm -f ./latin_letter_f.pdf
	rm -f ./latin_letter_g.pdf
	rm -f ./latin_letter_h.pdf
	rm -f ./latin_letter_i.pdf
	rm -f ./latin_letter_j.pdf
	rm -f ./latin_letter_k.pdf
	rm -f ./latin_letter_l.pdf
	rm -f ./latin_letter_m.pdf
	rm -f ./latin_letter_n.pdf
	rm -f ./latin_letter_o.pdf
	rm -f ./latin_letter_p.pdf
	rm -f ./latin_letter_q.pdf
	rm -f ./latin_letter_r.pdf
	rm -f ./latin_letter_s.pdf
	rm -f ./latin_letter_t.pdf
	rm -f ./latin_letter_u.pdf
	rm -f ./latin_letter_v.pdf
	rm -f ./latin_letter_w.pdf
	rm -f ./latin_letter_x.pdf
	rm -f ./latin_letter_y.pdf
	rm -f ./latin_letter_z.pdf
	rm -f ./latin_letter_a_with_diaeresis.pdf
	rm -f ./latin_letter_o_with_diaeresis.pdf
	rm -f ./latin_letter_u_with_diaeresis.pdf
	rm -f ./latin_capital_letter_a.pdf
	rm -f ./latin_small_letter_a.pdf
	rm -f ./latin_capital_letter_b.pdf
	rm -f ./latin_small_letter_b.pdf
	rm -f ./latin_capital_letter_c.pdf
	rm -f ./latin_small_letter_c.pdf
	rm -f ./latin_capital_letter_d.pdf
	rm -f ./latin_small_letter_d.pdf
	rm -f ./latin_capital_letter_e.pdf
	rm -f ./latin_small_letter_e.pdf
	rm -f ./latin_capital_letter_f.pdf
	rm -f ./latin_small_letter_f.pdf
	rm -f ./latin_capital_letter_g.pdf
	rm -f ./latin_small_letter_g.pdf
	rm -f ./latin_capital_letter_h.pdf
	rm -f ./latin_small_letter_h.pdf
	rm -f ./latin_capital_letter_i.pdf
	rm -f ./latin_small_letter_i.pdf
	rm -f ./latin_capital_letter_j.pdf
	rm -f ./latin_small_letter_j.pdf
	rm -f ./latin_capital_letter_k.pdf
	rm -f ./latin_small_letter_k.pdf
	rm -f ./latin_capital_letter_l.pdf
	rm -f ./latin_small_letter_l.pdf
	rm -f ./latin_capital_letter_m.pdf
	rm -f ./latin_small_letter_m.pdf
	rm -f ./latin_capital_letter_n.pdf
	rm -f ./latin_small_letter_n.pdf
	rm -f ./latin_capital_letter_o.pdf
	rm -f ./latin_small_letter_o.pdf
	rm -f ./latin_capital_letter_p.pdf
	rm -f ./latin_small_letter_p.pdf
	rm -f ./latin_capital_letter_q.pdf
	rm -f ./latin_small_letter_q.pdf
	rm -f ./latin_capital_letter_r.pdf
	rm -f ./latin_small_letter_r.pdf
	rm -f ./latin_capital_letter_s.pdf
	rm -f ./latin_small_letter_s.pdf
	rm -f ./latin_capital_letter_t.pdf
	rm -f ./latin_small_letter_t.pdf
	rm -f ./latin_capital_letter_u.pdf
	rm -f ./latin_small_letter_u.pdf
	rm -f ./latin_capital_letter_v.pdf
	rm -f ./latin_small_letter_v.pdf
	rm -f ./latin_capital_letter_w.pdf
	rm -f ./latin_small_letter_w.pdf
	rm -f ./latin_capital_letter_x.pdf
	rm -f ./latin_small_letter_x.pdf
	rm -f ./latin_capital_letter_y.pdf
	rm -f ./latin_small_letter_y.pdf
	rm -f ./latin_capital_letter_z.pdf
	rm -f ./latin_small_letter_z.pdf
	rm -f ./latin_capital_letter_a_with_diaeresis.pdf
	rm -f ./latin_small_letter_a_with_diaeresis.pdf
	rm -f ./latin_capital_letter_o_with_diaeresis.pdf
	rm -f ./latin_small_letter_o_with_diaeresis.pdf
	rm -f ./latin_capital_letter_u_with_diaeresis.pdf
	rm -f ./latin_small_letter_u_with_diaeresis.pdf
