
PD=pandoc --from markdown 

CSS_DEFAULT="/home/george/Classes/math51-fall2021/assets/default.css"
CSS_PANDOC="/home/george/Classes/math51-fall2021/assets/pandoc.css"

VPATH = pacing:resources:problem-sets:lectures:exams

targets_admin = $(patsubst %.md,%.html,$(wildcard pacing/*.md resources/*.md)) \
                $(patsubst %.md,%.pdf,$(wildcard pacing/*.md resources/*.md)) \

targets_lectures = $(patsubst %.md,%-reg.html, $(wildcard lectures/*.md)) \
	           $(patsubst %.md,%-slides.html, $(wildcard lectures/*.md)) \
                   $(patsubst %.md,%.pdf, $(wildcard lectures/*.md))

targets_psets = $(patsubst %.md,%.html,$(wildcard problem-sets/*.md)) \
                 $(patsubst %.md,%.pdf, $(wildcard problem-sets/*.md))

targets_exams = $(patsubst %.md,%.html,$(wildcard exams/*.md)) \
                $(patsubst %.md,%.pdf,$(wildcard exams/*.md))

# targets_pdf:= $(patsubst %.md,%.pdf ,$(wildcard problem-sets/*.md pacing/*.md resources/*.md lectures/*.md)) \


all: admin lectures psets exams

admin: $(targets_admin)
exams: $(targets_exams)
lectures: $(targets_lectures)
psets: $(targets_psets)

MJ=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml-full.js
# MJ=http://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js?config=TeX-MML-AM_CHTML

RP=.:problem-sets:lectures:exams

pacing/%.html resources/%.html: %.md
	$(PD) $<  --standalone --css=$(CSS_DEFAULT) --mathjax=$(MJ) --to html  -o $@

problem-sets/%.pdf lectures/%.pdf exams/%.pdf: %.md
	$(PD)  --number-sections --citeproc --self-contained --pdf-engine=xelatex --resource-path=$(RP) -t latex $<  -o $@

pacing/%.pdf resources/%.pdf: %.md
	$(PD) --self-contained --pdf-engine=wkhtmltopdf --pdf-engine-opt=--enable-local-file-access $<  -o $@

exams/%.html problem-sets/%.html lectures/%-reg.html resources/%.html: %.md
	$(PD) $<  --number-sections --citeproc  --standalone --css=$(CSS_DEFAULT) --mathjax=$(MJ) --to html  -o $@

lectures/%-slides.html: %.md
	$(PD) $< --standalone --citeproc --css=$(CSS_DEFAULT) -t slidy --mathjax=$(MJ)  -o $@

.PHONY = clean

clean: clean_pdf clean_admin clean_psets clean_lectures

clean_pdf:
	-rm -f $(targets_pdf)

clean_admin:
	-rm -f $(targets_admin)

clean_psets:
	-rm -f $(targets_psets)

clean_lectures:
	-rm -f $(targets_lectures)


