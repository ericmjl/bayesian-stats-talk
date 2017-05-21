DOCSDIR := docs
DOCSIMGDIR := $(DOCSDIR)/images
SLIDES := *.ipynb
HTMLNBS := $(addprefix $(DOCSDIR)/, index.html)

all: $(DOCSDIR) $(DOCSIMGDIR) $(HTMLNBS)

$(DOCSDIR):
	mkdir $(DOCSDIR)

$(DOCSIMGDIR):
	mkdir $(DOCSIMGDIR)

$(HTMLNBS): $(SLIDES) Makefile
	jupyter nbconvert --to html $<
	mv slides.html docs/index.html

	mv images/*.jpg docs/images
