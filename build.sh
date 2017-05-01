# Run the SCSS build script
python revealjs/css/theme/source/compile.py

# Make HTML notes version of slides
pandoc slides.md \
    -o index.html \
    -c revealjs/css/notes.css \
    --template=template.html \
    --toc \
    -H header.html

# Make revealjs version of slides
pandoc slides.md \
    -o slides.html \
    --section-divs -t revealjs -s \
    --template template.revealjs \
    -H header.html

# Automatically add, ask for commit message, and push
git add .
git commit
git push
