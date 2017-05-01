# This script will run the necessary git commands to point to GitHub

git remote add origin git@github.com:ericmjl/bayesian-data-analysis-with-pymc3

git add .
git commit -m "first commit"
git push -u origin master

rm gh_init.sh
