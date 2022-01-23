# pharo-ai: Machine Learning in Pharo

## Description

A meta package to load all related Machine Learning libraries in Pharo

## Installation

You can load all the Artificial Intelligence packages from the pharo-ai project into a fresh Pharo image by going to the Playground (Ctrl + OW/Cmd + OW) and executing the following expression (select it and press Do-it button or Ctrl+D/Cmd+D):

```smalltalk
EpMonitor disableDuring: [
    Metacello new
        baseline: 'AIPharo';
        repository: 'github://pharo-ai/ai/src';
	onWarningLog;
        load ]
```

This should load the default version of the AIPharo (you can also specify another version or branch).

To add it to your Baseline:

```smalltalk
    spec
	    baseline: 'AIPharo'
	    with: [ spec repository: 'github://pharo-ai/ai/src' ]
```

If you are new to baselines and Metacello, check out the [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) tutorial on Pharo Wiki.

## Machine Learning Algorithms

| Name | URL | Coverage | CI Status | Dependencies |
|---|---|---|---|---|
| Linear Regression | https://github.com/pharo-ai/linear-models | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/linear-models/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/linear-models?branch=master) | [![Build status](https://github.com/pharo-ai/linear-models/workflows/CI/badge.svg)](https://github.com/pharo-ai/linear-regression/actions/workflows/test.yml) |  |
| Logistic Regression | https://github.com/pharo-ai/linear-models | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/linear-models/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/linear-models?branch=master) | [![Build status](https://github.com/pharo-ai/linear-models/workflows/CI/badge.svg)](https://github.com/pharo-ai/linear-regression/actions/workflows/test.yml) |  |
| K-Means | https://github.com/pharo-ai/k-means | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/KMeans/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/KMeans?branch=master) | [![Build status](https://github.com/pharo-ai/k-means/workflows/CI/badge.svg)](https://github.com/pharo-ai/k-means/actions/workflows/test.yml) | AINormalization |
| K-Nearest Neighbours | https://github.com/pharo-ai/kNN | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/kNN/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/kNN?branch=master) | [![Build status](https://github.com/pharo-ai/kNN/workflows/CI/badge.svg)](https://github.com/pharo-ai/kNN/actions/workflows/test.yml) |  |
| A-Priori | https://github.com/pharo-ai/APriori | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/APriori/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/APriori?branch=master) | [![Build status](https://github.com/pharo-ai/APriori/workflows/CI/badge.svg)](https://github.com/pharo-ai/APriori/actions/workflows/test.yml) | [ContainersOrderedSet](https://github.com/pharo-containers/Containers-OrderedSet) |
