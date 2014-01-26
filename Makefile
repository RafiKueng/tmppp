BUGETDIR=./budget
RPLANDIR=./research_plan
CVDIR=./cv
PUBDIR=./publication
ABSTDIR=./abstract

BUGET=budget
RPLAN=research_plan
CV=cv
PUB=publication
ABST=abstract

OUTDIR=./_ALL

all: rplan cv pubs budget abstract
	mkdir $(OUTDIR)
	cp $(BUGETDIR)/*.pdf $(OUTDIR)/
	cp $(RPLANDIR)/*.pdf $(OUTDIR)/
	cp $(CVDIR)/*.pdf $(OUTDIR)/
	cp $(PUBDIR)/*.pdf $(OUTDIR)/
	cp $(ABSTDIR)/*.txt $(OUTDIR)/

    
rplan:
	echo Creating $(RPLANDIR)/$(RPLAN)
	cd $(RPLANDIR) ; \
	pdflatex $(RPLAN); \
	bibtex $(RPLAN); \
	pdflatex $(RPLAN); \
	pdflatex $(RPLAN); \
	echo done
    
cv:
	echo Creating $(CVDIR)
	cd $(CVDIR); \
	pdflatex $(CV); \
	bibtex $(CV); \
	pdflatex $(CV); \
	pdflatex $(CV); \
	echo done
    
pubs:
	echo Creating $(PUBDIR)
	cd $(PUBDIR)
	pdflatex $(PUB); \
	bibtex $(PUB); \
	pdflatex $(PUB); \
	pdflatex $(PUB); \
	echo done
    
budget:
	echo Creating $(BUGETDIR)
	cd $(BUGETDIR)
	pdflatex $(BUDGET); \
	bibtex $(BUDGET); \
	pdflatex $(BUDGET); \
	pdflatex  $(BUDGET); \
	echo done
   
abstract:
	echo Creating abstract


    
.SILENT:
