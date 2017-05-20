DOCSDIR := docs
SLIDES := *.ipynb
HTMLNBS := $(addprefix $(DOCSDIR)/, index.html)

all: $(DOCSDIR) $(HTMLNBS)

$(DOCSDIR):
	mkdir $(DOCSDIR)

$(HTMLNBS): $(SLIDES) Makefile
	jupyter nbconvert --to html $<
	mv slides.html docs/index.html
