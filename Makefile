all: index.html slides.html revealjs/css/theme/moon.css images/phone_expt.jpg

index.html: Makefile slides.md template.html
	pandoc slides.md \
	    -o index.html \
	    -c revealjs/css/notes.css \
	    --template=template.html \
	    --toc \
	    -H header.html

slides.html: slides.md Makefile template.revealjs
	pandoc slides.md \
	    -o slides.html \
	    --section-divs -t revealjs -s \
	    --template template.revealjs \
	    -H header.html

revealjs/css/theme/moon.css: revealjs/css/theme/source/moon.scss
	sass $^ > $@

images/phone_expt.jpg: images/phone_expt.pdf
	convert -density 300 $< -quality 100 $@
