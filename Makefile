DOCSDIR := docs
DOCSIMGDIR := $(DOCSDIR)/images
NOTEBOOKS = $(wildcard *.ipynb)
HTMLNBS = $(patsubst %.ipynb, %.html, $(NOTEBOOKS))
INDEX = docs/index.html

all: $(DOCSDIR) $(DOCSIMGDIR) $(HTMLNBS) $(INDEX)

$(DOCSDIR):
	mkdir $(DOCSDIR)

$(DOCSIMGDIR):
	mkdir $(DOCSIMGDIR)

$(HTMLNBS): $(NOTEBOOKS) Makefile
	jupyter nbconvert --to html $<

docs/index.html: slides.html
	mv $< $@
