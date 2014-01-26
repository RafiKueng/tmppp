BUDGETDIR=./budget
RPLANDIR=./research_plan
CVDIR=./cv
PUBDIR=./publications
ABSTDIR=./abstract

BUDGET=budget
RPLAN=research_plan
CV=cv_kueng_rafael
PUB=publications
ABST=abstract

OUTDIR=./_ALL

all: rplan cvit pubs budget abstract
	mkdir -p $(OUTDIR)
	cp $(BUDGETDIR)/*.pdf $(OUTDIR)/
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
    
cvit:
	echo Creating $(CVDIR)
	cd $(CVDIR); \
	pdflatex $(CV); \
	bibtex $(CV); \
	pdflatex $(CV); \
	pdflatex $(CV); \
	echo done
    
pubs:
	echo Creating $(PUBDIR)
	cd $(PUBDIR); \
	pdflatex $(PUB); \
	pdflatex $(PUB); \
	echo done
    
budget:
	echo Creating $(BUDGETDIR) 
	cd $(BUDGETDIR); \
	pdflatex $(BUDGET); \
	bibtex $(BUDGET); \
	pdflatex $(BUDGET); \
	pdflatex  $(BUDGET); \
	echo done
   
abstract:
	echo Creating abstract

.PHONY: all rplan cvit pubs budget abstract