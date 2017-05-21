DOCSDIR := docs
DOCSIMGDIR := $(DOCSDIR)/images
INDEX = docs/index.html

PDFIMAGES = $(wildcard images/*.pdf)
IMAGES = $(patsubst images/%.pdf, images/%.jpg, $(PDFIMAGES))
DOCIMAGES = $(patsubst images/%.jpg, docs/images/%.jpg, $(IMAGES))

all: $(DOCSDIR) $(DOCSIMGDIR) $(INDEX) $(IMAGES) $(DOCIMAGES)

# Make docs directory
$(DOCSDIR):
	mkdir $(DOCSDIR)

# Make docs/image directory
$(DOCSIMGDIR):
	mkdir $(DOCSIMGDIR)

# Build index page.
docs/index.html: slides.ipynb Makefile
	jupyter nbconvert --to html $<
	mv slides.html $@

# Make JPG versions of PDFs
images/%.jpg: images/%.pdf Makefile
	convert -density 300 $< -quality 100 $@

# Copy JPG images to docs images
docs/images/%.jpg: images/%.jpg Makefile
	cp $< $@
