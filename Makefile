
CMD=/home/george/.local/bin/course report

PD=pandoc --from markdown 

TEX=pdflatex

CSS_DEFAULT="/home/george/Classes/math51-spring2022/assets/default.css"
CSS_PANDOC="/home/george/Classes/math51-spring2022/assets/pandoc.css"

VPATH = .:pacing:resources:problem-sets:lectures:exams:recitation

resources = $(patsubst %.md,%.html,$(wildcard resources/*.md)) \
            $(patsubst %.md,%.pdf,$(wildcard resources/*.md)) \

pacing_md   = $(wildcard pacing/*.md)

pacing_html = $(patsubst %.md,%.html,$(wildcard pacing/*.md)) 
pacing_pdf  = $(patsubst %.md,%.pdf,$(wildcard pacing/*.md)) 

lectures = $(patsubst %.md,%-reg.html, $(wildcard lectures/*.md)) \
           $(patsubst %.md,%-slides.html, $(wildcard lectures/*.md)) \
           $(patsubst %.md,%.pdf, $(wildcard lectures/*.md))

psets = $(patsubst %.md,%.html,$(wildcard problem-sets/*.md)) \
        $(patsubst %.md,%.pdf, $(wildcard problem-sets/*.md)) \
        $(patsubst %.tex,%.pdf, $(wildcard problem-sets/*.tex))

recitation = $(patsubst %.md,%.html,$(wildcard recitation/*.md)) \
             $(patsubst %.md,%.pdf, $(wildcard recitation/*.md)) \
             $(patsubst %.tex,%.pdf, $(wildcard recitation/*.tex))

exams = $(patsubst %.md,%.html,$(wildcard exams/*.md)) \
        $(patsubst %.md,%.pdf,$(wildcard exams/*.md))


all: pacing resources lectures psets exams recitation

pacing: $(pacing_md) $(pacing_html) $(pacing_pdf)
resources: $(resources)
exams: $(exams)
lectures: $(lectures)
recitation: $(recitation)
psets: $(psets)

MJ=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml-full.js
# MJ=http://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js?config=TeX-MML-AM_CHTML

RP=.:problem-sets:lectures:exams

pacing/%.md: Math051-AY2022.dhall
	$(CMD) $<	

pacing/%.html resources/%.html: %.md
	$(PD) $<  --standalone --css=$(CSS_DEFAULT) --mathjax=$(MJ) --to html  -o $@

pacing/%.pdf resources/%.pdf: %.md
	$(PD) --self-contained  $<  -o $@
#	$(PD) --self-contained --css=$(CSS_DEFAULT) --pdf-engine=wkhtmltopdf --pdf-engine-opt=--enable-local-file-access $<  -o $@



problem-sets/%.pdf lectures/%.pdf exams/%.pdf recitation/%.pdf: %.md
	$(PD)   --citeproc --self-contained --pdf-engine=xelatex --resource-path=$(RP) -t latex $<  -o $@

problem-sets/%.pdf: %.tex
	$(TEX) -output-directory=problem-sets $<

recitation/%.pdf: %.tex
	$(TEX) -output-directory=recitation $<


exams/%.html problem-sets/%.html lectures/%-reg.html resources/%.html recitation/%.html: %.md
	$(PD) $<  --number-sections --citeproc  --standalone --css=$(CSS_DEFAULT) --mathjax=$(MJ) --to html  -o $@

lectures/%-slides.html: %.md
	$(PD) $< --standalone --citeproc --css=$(CSS_DEFAULT) -t slidy --mathjax=$(MJ)  -o $@

.PHONY = clean

clean: clean_pdf clean_resources clean_psets clean_lectures

clean_pdf:
	-rm -f $(targets_pdf)

clean_pacing:
	-rm -f $(pacing_html) $(pacing_pdf)

clean_psets:
	-rm -f $(psets)

clean_lectures:
	-rm -f $(lectures)

clean_exams:
	-rm -f $(exams)

clean_resources:
	-rm -f $(resources)
