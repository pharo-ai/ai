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

| Name | Chapter | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|---|
| [Linear Regression](https://github.com/pharo-ai/linear-models) | WiP | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/linear-models/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/linear-models?branch=master) | [![Build status](https://github.com/pharo-ai/linear-models/workflows/CI/badge.svg)](https://github.com/pharo-ai/linear-regression/actions/workflows/test.yml) | None |
| [Logistic Regression](https://github.com/pharo-ai/linear-models) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/linear-models/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/linear-models?branch=master) | [![Build status](https://github.com/pharo-ai/linear-models/workflows/CI/badge.svg)](https://github.com/pharo-ai/linear-regression/actions/workflows/test.yml) | None |
| [K-Means](https://github.com/pharo-ai/k-means) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/KMeans/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/KMeans?branch=master) | [![Build status](https://github.com/pharo-ai/k-means/workflows/CI/badge.svg)](https://github.com/pharo-ai/k-means/actions/workflows/test.yml) | [AINormalization](https://github.com/pharo-ai/normalization) |
| [K-Nearest Neighbours](https://github.com/pharo-ai/kNN) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/kNN/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/kNN?branch=master) | [![Build status](https://github.com/pharo-ai/kNN/workflows/CI/badge.svg)](https://github.com/pharo-ai/kNN/actions/workflows/test.yml) | None |
| [Gaussian Mixture Model](https://github.com/pharo-ai/gaussian-mixture-model) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/gaussian-mixture-model/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/gaussian-mixture-model?branch=master) | [![Build status](https://github.com/pharo-ai/gaussian-mixture-model/workflows/CI/badge.svg)](https://github.com/pharo-ai/gaussian-mixture-model/actions/workflows/test.yml) | [PolyMath](https://github.com/PolyMathOrg/PolyMath) |
| [Naive Bayes Classifier](https://github.com/pharo-ai/naive-bayes-classifier) | No | No | [![Coverage Status](https://coveralls.io/repos/github/olekscode/NaiveBayesClassifier/badge.svg?branch=master)](https://coveralls.io/github/olekscode/NaiveBayesClassifier?branch=master) | [![Build status](https://github.com/pharo-ai/NaiveBayesClassifier/workflows/CI/badge.svg)](https://github.com/pharo-ai/NaiveBayesClassifier/actions/workflows/test.yml) | None |
| [Decision Tree Model](https://github.com/pharo-ai/decision-tree-model) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/DecisionTreeModel/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/DecisionTreeModel?branch=master) | [![Build status](https://github.com/pharo-ai/DecisionTreeModel/workflows/CI/badge.svg)](https://github.com/pharo-ai/DecisionTreeModel/actions/workflows/test.yml) | [DataFrame](https://github.com/PolyMathOrg/DataFrame), [AIDatasets](https://github.com/pharo-ai/Datasets) |
| [Hierarchical Clustering](https://github.com/pharo-ai/hierarchical-clustering) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/hierarchical-clustering/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/hierarchical-clustering?branch=master) | [![Build status](https://github.com/pharo-ai/hierarchical-clustering/workflows/CI/badge.svg)](https://github.com/pharo-ai/hierarchical-clustering/actions/workflows/test.yml) | [DataFrame](https://github.com/PolyMathOrg/DataFrame), [CollectionExtensions](https://github.com/pharo-contributions/CollectionExtensions), [AILinearAlgebra](https://github.com/pharo-ai/linear-algebra) |

### Data Mining

| Name | Chapter | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|---|
| [A-Priori](https://github.com/pharo-ai/APriori) | Yes | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/APriori/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/APriori?branch=master) | [![Build status](https://github.com/pharo-ai/APriori/workflows/CI/badge.svg)](https://github.com/pharo-ai/APriori/actions/workflows/test.yml) | [ContainersOrderedSet](https://github.com/pharo-containers/Containers-OrderedSet) |

### Natural Language Processing

| Name | Chapter | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|---|
| [N-gram Model](https://github.com/pharo-ai/NgramModel) | No | Yes* | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/NgramModel/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/NgramModel?branch=master) | [![Build status](https://github.com/pharo-ai/NgramModel/workflows/CI/badge.svg)](https://github.com/pharo-ai/NgramModel/actions/workflows/test.yml) | [AINgram](https://github.com/pharo-ai/ngram) |
| [Term Frequency - Inverse Document Frequency](https://github.com/pharo-ai/tf-idf) | Yes | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/tf-idf/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/tf-idf?branch=master) | [![Build status](https://github.com/pharo-ai/tf-idf/workflows/CI/badge.svg)](https://github.com/pharo-ai/tf-idf/actions/workflows/test.yml) | None |

### Data Preprocessing

| Name | Chapter | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|---|
| [Random Partitioner](https://github.com/pharo-ai/random-partitioner) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/PharoAI/RandomPartitioner/badge.svg?branch=master)](https://coveralls.io/github/PharoAI/RandomPartitioner?branch=master) | [![Build status](https://github.com/pharo-ai/RandomPartitioner/workflows/CI/badge.svg)](https://github.com/pharo-ai/RandomPartitioner/actions/workflows/test.yml) | [DataFrame](https://github.com/PolyMathOrg/DataFrame) |
| [Normalization](https://github.com/pharo-ai/normalization) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/normalization/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/normalization?branch=master) | [![Build status](https://github.com/pharo-ai/normalization/workflows/CI/badge.svg)](https://github.com/pharo-ai/normalization/actions/workflows/test.yml) | None |

### Datasets

| Name | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|
| [Datasets](https://github.com/pharo-ai/Datasets) | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/Datasets/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/Datasets?branch=master) | [![Build status](https://github.com/pharo-ai/Datasets/workflows/CI/badge.svg)](https://github.com/pharo-ai/Datasets/actions/workflows/test.yml) | [DataFrame](https://github.com/PolyMathOrg/DataFrame) |

### Metrics

| Name | Chapter | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|---|
| [Metrics](https://github.com/pharo-ai/metrics) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/metrics/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/metrics?branch=master) | [![Build status](https://github.com/pharo-ai/metrics/workflows/CI/badge.svg)](https://github.com/pharo-ai/metrics/actions/workflows/test.yml) | [PolyMath](https://github.com/PolyMathOrg/PolyMath) |
| [Edit Distances](https://github.com/pharo-ai/edit-distances) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/edit-distances/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/edit-distances?branch=master) | [![Build status](https://github.com/pharo-ai/edit-distances/workflows/CI/badge.svg)](https://github.com/pharo-ai/edit-distances/actions/workflows/test.yml) | [PolyMath](https://github.com/PolyMathOrg/PolyMath) |

### Applications

| Name | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|
| [Spelling Correction](https://github.com/pharo-ai/spelling-correction) | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/spelling-correction/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/spelling-correction?branch=master) | [![Build status](https://github.com/pharo-ai/spelling-correction/workflows/CI/badge.svg)](https://github.com/pharo-ai/spelling-correction/actions/workflows/test.yml) | None |
