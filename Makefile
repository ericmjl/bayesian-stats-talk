all: index.html slides.html

index.html: slides.md Makefile
	pandoc slides.md \
	    -o index.html \
	    -c revealjs/css/notes.css \
	    --template=template.html \
	    --toc \
	    -H header.html

slides.html: slides.md Makefile
	pandoc slides.md \
	    -o slides.html \
	    --section-divs -t revealjs -s \
	    --template template.revealjs \
	    -H header.html
