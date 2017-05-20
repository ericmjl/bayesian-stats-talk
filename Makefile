html: slides.ipynb
	jupyter nbconvert --to html slides.ipynb
	mv slides.html docs/.

	pandoc README.md -o index.html
	mv index.html docs/.
