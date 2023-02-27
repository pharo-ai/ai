# Contribution

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

## Projects maturity

In order to be integrated in the version 1 of Pharo-ai, all projects must follow those rules:
- Follow the naming convention
- Have a read me with an explanation on how to depend on it and a quick start
- Have tests
- Have a good code coverage
- Have a documentation in the folder `./resources/doc` with a general description of the algorithme, a description of the API and at least one concrete example

For the future releases we want also to have a bigger documentation in the form of booklets or a chapter for a future book