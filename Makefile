DOCSDIR := docs
DOCSIMGDIR := $(DOCSDIR)/images
INDEX = docs/index.html

all: $(DOCSDIR) $(DOCSIMGDIR) $(INDEX)

$(DOCSDIR):
	mkdir $(DOCSDIR)

$(DOCSIMGDIR):
	mkdir $(DOCSIMGDIR)

docs/index.html: slides.ipynb Makefile
	jupyter nbconvert --to html $<
	mv slides.html $@
