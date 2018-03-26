## -*- Mode: Makefile -*-
##--------------------------------------------------
.SUFFIXES: .tex .dvi .pdf .ps

##--------------------------------------------------
TARGET= main
SUBSOURCE = kamada.bib  main.bib  matsushima.bib  mizuta-crest.bib\
	izumi.bib\
	cassia.tex          secMassPara.tex  secRoadMap.tex  ssecTraffic.tex\
	secMassPlan.tex  ssecMarket.tex  ssecX10Plham.tex\
	secApplication.tex  secOverview.tex  ssecPedest.tex  ssecXasdi.tex

##--------------------------------------------------
#top : pdf ps dvi
top : pdf

clean :
	\rm -f *.log *.aux *.bbl *.ps *.pdf *.dvi *~ *.toc

##--------------------------------------------------
.tex.dvi:
	platex $(basename $<)
	pbibtex $(basename $<)
	platex $(basename $<)
	platex $(basename $<)

.dvi.pdf:
	dvipdfmx $(basename $^)

##--------------------------------------------------
dvi : $(addsuffix .dvi,$(TARGET))

pdf: $(addsuffix .pdf,$(TARGET))

##--------------------------------------------------
main.dvi : $(SUBSOURCE)


