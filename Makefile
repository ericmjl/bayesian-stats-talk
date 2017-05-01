all: index.html

index.html: slides.md
	pandoc slides.md \
	    -o index.html \
	    -c revealjs/css/notes.css \
	    --template=template.html \
	    --toc \
	    -H header.html
