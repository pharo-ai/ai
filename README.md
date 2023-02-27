# Pharo-AI - Machine Learning in Pharo

[![Pharo version](https://img.shields.io/badge/Pharo-11-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo version](https://img.shields.io/badge/Pharo-10-%23aac9ff.svg)](https://pharo.org/download)
[![CI](https://github.com/pharo-ai/ai/actions/workflows/continuous.yml/badge.svg)](https://github.com/pharo-ai/ai/actions/workflows/continuous.yml)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/PolyMathOrg/PolyMath/master/LICENSE)


- [Pharo-AI](#pharo-ai---machine-learning-in-pharo)
  * [Description](#description)
  * [Installation](#installation)
  * [Implemented Algorithms](#implemented-algorithms)
    + [Machine Learning](#machine-learning)
    + [Data Mining](#data-mining)
    + [Natural Language Processing](#natural-language-processing)
    + [Data Preprocessing](#data-preprocessing)
    + [Datasets](#datasets)
    + [Metrics](#metrics)
    + [Applications](#applications)
    + [Tools](#tools)
    + [Work in Progress](#work-in-progress)
  * [Pharo-AI and Pharo-Launcher](#pharo-ai-and-pharo-launcher)

## Description

A meta package to load all related Machine Learning libraries in Pharo.

For more information about the naming convention or the requirement to be integrated in Pharo-AI, refere to the [Contribution file](CONTRIBUTION.md).

## Installation

You can load all the Artificial Intelligence packages from the pharo-ai project into a fresh Pharo image by going to the Playground (Ctrl + OW/Cmd + OW) and executing the following expression (select it and press Do-it button or Ctrl+D/Cmd+D):

```smalltalk
EpMonitor disableDuring: [
    Metacello new
        baseline: 'AIPharo';
        repository: 'github://pharo-ai/ai/src';
	onWarningLog;
	onConflictUseIncoming;
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
| [K-Means](https://github.com/pharo-ai/k-means) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/k-means/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/k-means?branch=master) | [![Build status](https://github.com/pharo-ai/k-means/workflows/CI/badge.svg)](https://github.com/pharo-ai/k-means/actions/workflows/test.yml) | [AIEditDistances](https://github.com/pharo-ai/edit-distances) |
| [K-Nearest Neighbours](https://github.com/pharo-ai/k-nearest-neighbors) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/k-nearest-neighbors/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/k-nearest-neighbors?branch=master) | [![Build status](https://github.com/pharo-ai/k-nearest-neighbors/workflows/CI/badge.svg)](https://github.com/pharo-ai/k-nearest-neighbors/actions/workflows/test.yml) | [AIEditDistances](https://github.com/pharo-ai/edit-distances) |
| [Naive Bayes Classifier](https://github.com/pharo-ai/naive-bayes-classifier) | No | No | [![Coverage Status](https://coveralls.io/repos/github/olekscode/NaiveBayesClassifier/badge.svg?branch=master)](https://coveralls.io/github/olekscode/NaiveBayesClassifier?branch=master) | [![Build status](https://github.com/pharo-ai/NaiveBayesClassifier/workflows/CI/badge.svg)](https://github.com/pharo-ai/NaiveBayesClassifier/actions/workflows/test.yml) | None |
| [Decision Tree Model](https://github.com/pharo-ai/decision-tree-model) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/DecisionTreeModel/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/DecisionTreeModel?branch=master) | [![Build status](https://github.com/pharo-ai/DecisionTreeModel/workflows/CI/badge.svg)](https://github.com/pharo-ai/DecisionTreeModel/actions/workflows/test.yml) | [DataFrame](https://github.com/PolyMathOrg/DataFrame), [AIDatasets](https://github.com/pharo-ai/Datasets) |

### Data Mining

| Name | Chapter | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|---|
| [A-Priori](https://github.com/pharo-ai/APriori) | Yes | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/APriori/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/APriori?branch=master) | [![Build status](https://github.com/pharo-ai/APriori/workflows/CI/badge.svg)](https://github.com/pharo-ai/APriori/actions/workflows/test.yml) | [ContainersOrderedSet](https://github.com/pharo-containers/Containers-OrderedSet) |

### Natural Language Processing

| Name | Chapter | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|---|
| [N-gram Model](https://github.com/pharo-ai/NgramModel) | No | Yes* | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/NgramModel/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/NgramModel?branch=master) | [![Build status](https://github.com/pharo-ai/NgramModel/workflows/CI/badge.svg)](https://github.com/pharo-ai/NgramModel/actions/workflows/test.yml) |  |
| [Term Frequency - Inverse Document Frequency](https://github.com/pharo-ai/tf-idf) | Yes | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/tf-idf/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/tf-idf?branch=master) | [![Build status](https://github.com/pharo-ai/tf-idf/workflows/CI/badge.svg)](https://github.com/pharo-ai/tf-idf/actions/workflows/test.yml) | None |

### Data Preprocessing

| Name | Chapter | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|---|
| [Data Partitioners](https://github.com/pharo-ai/data-partitioners) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/PharoAI/DataPartitioners/badge.svg?branch=master)](https://coveralls.io/github/PharoAI/DataPartitioners?branch=master) | [![CI](https://github.com/pharo-ai/data-partitioners/actions/workflows/cimatrix.yml/badge.svg)](https://github.com/pharo-ai/data-partitioners/actions/workflows/cimatrix.yml) | None |
| [Normalization](https://github.com/pharo-ai/normalization) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/normalization/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/normalization?branch=master) | [![Build status](https://github.com/pharo-ai/normalization/workflows/CI/badge.svg)](https://github.com/pharo-ai/normalization/actions/workflows/test.yml) | None |

### Datasets

| Name | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|
| [Datasets](https://github.com/pharo-ai/datasets) | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/datasets/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/datasets?branch=master) | [![Build status](https://github.com/pharo-ai/datasets/workflows/CI/badge.svg)](https://github.com/pharo-ai/datasets/actions/workflows/test.yml) | [External Dependencies](https://github.com/pharo-ai/external-dependencies) (DataFrame) |

### Metrics

| Name | Chapter | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|---|
| [Metrics](https://github.com/pharo-ai/metrics) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/metrics/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/metrics?branch=master) | [![Build status](https://github.com/pharo-ai/metrics/workflows/CI/badge.svg)](https://github.com/pharo-ai/metrics/actions/workflows/test.yml) | [External Dependencies](https://github.com/pharo-ai/external-dependencies) (PolyMath) |
| [Edit Distances](https://github.com/pharo-ai/edit-distances) | No | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/edit-distances/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/edit-distances?branch=master) | [![Build status](https://github.com/pharo-ai/edit-distances/workflows/CI/badge.svg)](https://github.com/pharo-ai/edit-distances/actions/workflows/test.yml) | [External Dependencies](https://github.com/pharo-ai/external-dependencies) (PolyMath) |

### Applications

| Name | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|
| [Spelling Correction](https://github.com/pharo-ai/spelling-correction) | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/spelling-correction/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/spelling-correction?branch=master) | [![Build status](https://github.com/pharo-ai/spelling-correction/workflows/CI/badge.svg)](https://github.com/pharo-ai/spelling-correction/actions/workflows/test.yml) | None |

### Tools

| Name | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|
| [Data inspector](https://github.com/pharo-ai/data-inspector) | Yes | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/data-inspector/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/data-inspector?branch=master) | [![Build status](https://github.com/pharo-ai/data-inspector/workflows/CI/badge.svg)](https://github.com/pharo-ai/data-inspector/actions/workflows/CI.yml) |  [External Dependencies](https://github.com/pharo-ai/external-dependencies) (DataFrame, Roassal3) |

### Work in Progress

Machine Learning: 

| Name | "How to use" | Coverage | CI Status | Dependencies |
|---|---|---|---|---|
| [Gaussian Mixture Model](https://github.com/pharo-ai/gaussian-mixture-model) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/gaussian-mixture-model/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/gaussian-mixture-model?branch=master) | [![Build status](https://github.com/pharo-ai/gaussian-mixture-model/workflows/CI/badge.svg)](https://github.com/pharo-ai/gaussian-mixture-model/actions/workflows/test.yml) | [External Dependencies](https://github.com/pharo-ai/external-dependencies) (PolyMath) |
| [Hierarchical Clustering](https://github.com/pharo-ai/hierarchical-clustering) | No | No | [![Coverage Status](https://coveralls.io/repos/github/pharo-ai/hierarchical-clustering/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/hierarchical-clustering?branch=master) | [![Build status](https://github.com/pharo-ai/hierarchical-clustering/workflows/CI/badge.svg)](https://github.com/pharo-ai/hierarchical-clustering/actions/workflows/test.yml) |  [External Dependencies](https://github.com/pharo-ai/external-dependencies) (DataFrame), [CollectionExtensions](https://github.com/pharo-contributions/CollectionExtensions), [AILinearAlgebra](https://github.com/pharo-ai/linear-algebra) |

## Pharo-AI and Pharo-Launcher

Pharo-launcher is a great tool to manage Pharo images and here we are going to explain how to be able to get pharo-ai images from it. 

Pharo launcher comes with a default set of sources to fetch Pharo images. It also allows one to add its own sources, and we will show here how to add Pharo-AI as one of your own source.

It is doable thanks to the `mysources.list` of pharo-launcher file located in the `PhLUserTemplateSources sourcesFile` folder. If present, this file defines additional template sources beyond the official list of templates. At this time, there is no UI to add them.

To find the right folder:

* Open the Pharo Launcher
* Open a Playground (Ctrl + O, Ctrl + W)
* Execute `PhLUserTemplateSources sourcesFile`

You can now edit `mysources.list` in this folder to add the Pharo-AI images you wish to have in your Pharo launcher. Here is an example:

```st
[
	PhLTemplateSource {
		#type : #URLGroup,
		#name : 'Pharo-AI',
		#templates : [
			PhLTemplateSource {
				#type : #URL,
				#name : 'AI Pharo 10 - master',
				#url : 'https://github.com/pharo-ai/ai/releases/download/continuous/Pharo-AI-Pharo64-10.zip'
			},
			PhLTemplateSource {
				#type : #URL,
				#name : 'AI Pharo 11 - master',
				#url : 'https://github.com/pharo-ai/ai/releases/download/continuous/Pharo-AI-Pharo64-11.zip'
			},
			PhLTemplateSource {
				#type : #URL,
				#name : 'AI Pharo 10 - v0.8.0',
				#url : 'https://github.com/pharo-ai/ai/releases/download/v0.8.0/Pharo-AI-Pharo64-10.zip'
			},
			PhLTemplateSource {
				#type : #URL,
				#name : 'AI Pharo 11 - v0.8.0',
				#url : 'https://github.com/pharo-ai/ai/releases/download/v0.8.0/Pharo-AI-Pharo64-11.zip'
			}
		]
	}
]
```

This templates will add a Pharo-AI group in the templates of the Pharo-Launcher. This group will contain 4 entries:
- Pharo AI built from the latest commit of master in Pharo 10
- Pharo AI built from the latest commit of master in Pharo 11
- Pharo AI built from release v0.8.0 in Pharo 10
- Pharo AI built from release v0.8.0 in Pharo 11

You can then adapt those sources to what you need
