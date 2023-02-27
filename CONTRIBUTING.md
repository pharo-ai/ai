# Contributing to Pharo-AI

First of all, you can see the [Pharo contribution guide](https://github.com/pharo-project/pharo/blob/Pharo11/CONTRIBUTING.md). There are explained all the principla things for contributing with a Pull Request, opening an issue, and so on.

## Naming conventions 

Pharo-AI has some naming conventions we will expose here. 

### Projet names

Pharo-AI is a meta repository. The differents project of the Pharo-AI organisation should follow this convention:
- No `ai` prefix
- All lower cases
- Spaces ar replaced by dash

Examples:
pharo-ai / apriori
pharo-ai / metrics
pharo-ai / neural-networks
pharo-ai / linear-regression
pharo-ai / k-means

### Package names

The packages names should:
- Start with `AI-`
- Be camel case
- Test packages should end with `-Tests`

Examples:
AI-APriori
AI-Metrics-Tests
AI-NeuralNetworks
AI-LinearRegression
AI-KMeans-Tests

### Classe names

Class names should:
- Start with `AI`
- Start with `AIT` for Traits
- Ends with `Test` for test cases

Examples:
AIAPriori
AITUtil
AINeuralNetworkTest

### Baseline names 

Baseline names should:
- Start with `BaselineOfAI`
- Be followed by the name of the project in camel case

Examples:
BaselineOfAIAPriori
BaselineOfAIMetrics
BaselineOfAINeuralNetworks
BaselineOfAILinearRegression
BaselineOfAIKMeans 

## Proposing new features or algorithms

If you have some idea you are welcome to propose it. If it is an idea for an existing algorithm, you can create an issue in the correspondig repository. Feel free to tag the mainteiners.

If you would like to implement a new algoritm, you can also create an issue, or you can send an email to lse-pharoai@inria.fr

## Injecting external dependencies

For us, an external dependency is dependency that lives outside pharo-ai.

If you are implementing a new algorithm or if you are working on an existing one, and if you need to add an external dependencies, please do it using [external-dependencies](https://github.com/pharo-ai/external-dependencies) package. There is a README file where it is explained how to use it.

But basically, it is a package that only containts a baseline that will load for you an external dependency, like [PolyMath](https://github.com/PolyMathOrg/PolyMath) or [Roassal3](https://github.com/ObjectProfile/Roassal3). It manages for you the version of the dependency. Like that, if in the future we want to change the version of PolyMath that we are using, we only need to do it in one place.

## Projects maturity

In order to be integrated in the version 1 of Pharo-ai, all projects must follow those rules:
- Follow the naming convention
- Have a read me with an explanation on how to depend on it and a quick start
- Have tests
- Have a good code coverage
- Have a documentation in the folder `./resources/doc` with a general description of the algorithme, a description of the API and at least one concrete example
- A running CI

For the future releases we want also to have a bigger documentation in the form of booklets or a chapter for a future book
