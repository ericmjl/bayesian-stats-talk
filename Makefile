html: slides.ipynb
	jupyter nbconvert --to html slides.ipynb
	mv slides.html docs/.
