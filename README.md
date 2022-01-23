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

## Implemented Algorithms

### Machine Learning

| Name | Chapter | README with "how to use" | Coverage | CI Status | Dependencies | Issues | PRs |
|---|---|---|---|---|---|---|---|
| [Linear Regression](https://github.com/pharo-ai/linear-models) | WiP | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/linear-models/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/linear-models?branch=master) | [![Build status](https://github.com/pharo-ai/linear-models/workflows/CI/badge.svg)](https://github.com/pharo-ai/linear-regression/actions/workflows/test.yml) |  | 3 | 0 |
| [Logistic Regression](https://github.com/pharo-ai/linear-models) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/linear-models/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/linear-models?branch=master) | [![Build status](https://github.com/pharo-ai/linear-models/workflows/CI/badge.svg)](https://github.com/pharo-ai/linear-regression/actions/workflows/test.yml) |  | -//- | -//- |
| [K-Means](https://github.com/pharo-ai/k-means) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/KMeans/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/KMeans?branch=master) | [![Build status](https://github.com/pharo-ai/k-means/workflows/CI/badge.svg)](https://github.com/pharo-ai/k-means/actions/workflows/test.yml) | [AINormalization](https://github.com/pharo-ai/normalization) |  |  |
| [K-Nearest Neighbours](https://github.com/pharo-ai/kNN) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/kNN/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/kNN?branch=master) | [![Build status](https://github.com/pharo-ai/kNN/workflows/CI/badge.svg)](https://github.com/pharo-ai/kNN/actions/workflows/test.yml) |  | 1 | 0 |
| [Gaussian Mixture Model](https://github.com/pharo-ai/gaussian-mixture-model) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/gaussian-mixture-model/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/gaussian-mixture-model?branch=master) | [![Build status](https://github.com/pharo-ai/gaussian-mixture-model/workflows/CI/badge.svg)](https://github.com/pharo-ai/gaussian-mixture-model/actions/workflows/test.yml) | [PolyMath](https://github.com/PolyMathOrg/PolyMath) |  |  |
| [Naive Bayes Classifier](https://github.com/pharo-ai/naive-bayes-classifier) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/olekscode/NaiveBayesClassifier/badge.svg?branch=master)](https://coveralls.io/github/olekscode/NaiveBayesClassifier?branch=master) | [![Build status](https://github.com/pharo-ai/NaiveBayesClassifier/workflows/CI/badge.svg)](https://github.com/pharo-ai/NaiveBayesClassifier/actions/workflows/test.yml) |  |  |  |
| [Decision Tree Model](https://github.com/pharo-ai/decision-tree-model) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/DecisionTreeModel/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/DecisionTreeModel?branch=master) | [![Build status](https://github.com/pharo-ai/DecisionTreeModel/workflows/CI/badge.svg)](https://github.com/pharo-ai/DecisionTreeModel/actions/workflows/test.yml) | [DataFrame](https://github.com/PolyMathOrg/DataFrame), [AIDatasets](https://github.com/pharo-ai/Datasets) | 1 | 0 |

### Data Mining

| Name | Chapter | README with "how to use" | Coverage | CI Status | Dependencies | Issues | PRs |
|---|---|---|---|---|---|---|---|
| [A-Priori](https://github.com/pharo-ai/APriori) | Yes | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/APriori/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/APriori?branch=master) | [![Build status](https://github.com/pharo-ai/APriori/workflows/CI/badge.svg)](https://github.com/pharo-ai/APriori/actions/workflows/test.yml) | [ContainersOrderedSet](https://github.com/pharo-containers/Containers-OrderedSet) |  |  |

### Natural Language Processing

| Name | Chapter | README with "how to use" | Coverage | CI Status | Dependencies | Issues | PRs |
|---|---|---|---|---|---|---|---|
| [N-gram Model](https://github.com/pharo-ai/NgramModel) | No | Yes* | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/NgramModel/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/NgramModel?branch=master) | [![Build status](https://github.com/pharo-ai/NgramModel/workflows/CI/badge.svg)](https://github.com/pharo-ai/NgramModel/actions/workflows/test.yml) | [AINgram](https://github.com/pharo-ai/ngram) | 8 | 0 |
| [Term Frequency - Inverse Document Frequency](https://github.com/pharo-ai/tf-idf) | Yes | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/tf-idf/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/tf-idf?branch=master) | [![Build status](https://github.com/pharo-ai/tf-idf/workflows/CI/badge.svg)](https://github.com/pharo-ai/tf-idf/actions/workflows/test.yml) |  | 0 | 0 |
