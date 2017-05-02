---
title: Bayesian Data Analysis with PyMC3
author:
- name: Eric J. Ma
  affiliation: Department of Biological Engineering, MIT
date: 16 December 2016
theme: moon
---

# slides are available online!

- slides: [ericmjl.github.io/bayesian-stats-talk/][slides]
- html notes: [ericmjl.github.io/bayesian-stats-talk][html]
- source: [github.com/ericmjl/bayesian-stats-talk][source]
- notebooks: [github.com/ericmjl/bayesian-analysis-recipes][notebooks]

[source]: https://github.com/ericmjl/bayesian-stats-talk
[html]: https://ericmjl.github.io/bayesian-stats-talk
[slides]: https://ericmjl.github.io/bayesian-stats-talk/slides.html
[notebooks]: https://github.com/ericmjl/bayesian-analysis-recipes

# talk features

## minimal terminology

let's focus on the mechanics of analysis, rather than the terminology

## pareto principle

the basics will get you to 80% of what you'll need

## not covered

stuff I am not sufficiently trained in to speak intelligently about:

- bayesian nets
- bayesian deep learning & machine learning
- frequentist vs. Bayesian thinking

## assumptions

- familiarity with Python
- knowledge of basic stats terminology:
    - mean, variance, & uncertainty
    - distributions, parameters

# applied statistical analysis problems

- parameter estimation: "is the true value equal to X?"
- comparison between experimental groups: "are the treatments different from the control?"

# parameter estimation

##

"is the true value equal to X?"

OR

"given the data, what is the **most likely value** of the parameter of interest and **uncertainty** surrounding this estimate?"

# coin problem

## problem

I threw my coin 30 times, and it showed came up as heads 11 times. Is it biased?

## parameters

We are most interested in the value `p`: the **probability of heads**.

## prior

$$ p \sim Uniform(0, 1) $$

$$ data \sim Bernoulli(p) $$

## data

`[1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0]`

## code

```python
with pm.Model() as model:
    p = pm.Uniform('p', 0, 1)  
    like = pm.Bernoulli('likelihood', p=p, observed=tosses)
```

## results



## chemical activity problem

##

## comparison between experimental groups


## biased coin problem

## cookie jar problem

# probabilistic programming

## pymc3

# resources

- [Statistical Rethinking (YouTube Playlist)][stat_rethink]
- [PyMC3 Examples][pymc3]
-

[stat_rethink]: https://www.youtube.com/playlist?list=PLDcUM9US4XdMdZOhJWJJD4mDBMnbTWw_z
[pymc3]: https://pymc-devs.github.io/pymc3/examples.html
