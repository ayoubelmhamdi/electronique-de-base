DOC  := main.tex

RERUN := "(undefined references|Rerun to get (cross-references|the bars|point totals) right|Table widths have changed. Rerun LaTeX.|Linenumber reference failed)"
RERUNBIB := "No file.*\.bbl|Citation.*undefined"




# %.pdf: %.tex
# 	pdflatex $<
# 	@egrep -q $(RERUNBIB) $*.log && bibtex $* && pdflatex $<; true
# 	@egrep -q $(RERUN) $*.log && pdflatex $<; true
# 	@egrep -q $(RERUN) $*.log && pdflatex $<; true

latexmk:
	-latexmk  -pdf $(DOC)

clean:
	bash -c 'rm -rf *.{aux,dvi,log,bbl,blg,brf,fls,toc,thm,out,fdb_latexmk,pdf} build/'


.PHONY: all purge clean
