"
Metabaseline for pharo ai projects.
"
Class {
	#name : #BaselineOfAIPharo,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIPharo
}

{ #category : #baselines }
BaselineOfAIPharo >> baseline: spec [

	<baseline>
	spec for: #( common ) do: [ 
		self
			baselineSpecs: spec;
			baselineGroups: spec ]
]

{ #category : #baselines }
BaselineOfAIPharo >> baselineGroups: spec [

	spec
		group: 'Core'
		with: #( 'AIDataFrameInspector' 'AIHierarchicalClustering'
			   'AIkNN' 'AIKMeans' 'AIMetrics' 'APriori' 'DecisionTreeModel'
			   'AITfIdf' 'AIRandomPartitioner' 'AIDatasets' 'AINaiveBayesClassifier'
			   'AINLP' 'AIGaussianMixtureModel' 'AIEditDistances' 'AIGraphAlgorithms' 
				'AILinearModels');
		group: 'default' with: #( 'Core' )
]

{ #category : #baselines }
BaselineOfAIPharo >> baselineSpecs: spec [

	spec
		baseline: 'AIDataFrameInspector' with: [ spec repository: 'github://pharo-ai/data-inspector/src' ];
		baseline: 'AIHierarchicalClustering' with: [ spec repository: 'github://pharo-ai/hierarchical-clustering/src' ];
		baseline: 'AIkNN' with: [ spec repository: 'github://pharo-ai/k-nearest-neighbors/src' ];
		baseline: 'AIKMeans' with: [ spec repository: 'github://pharo-ai/k-means/src' ];
		baseline: 'AIMetrics' with: [ spec repository: 'github://pharo-ai/metrics/src' ];
		baseline: 'APriori' with: [ spec repository: 'github://pharo-ai/APriori/src' ];
		baseline: 'AINLP' with: [ spec repository: 'github://pharo-ai/nlp/src' ];
		baseline: 'AINormalization' with: [ spec repository: 'github://pharo-ai/normalization/src' ];
		baseline: 'DecisionTreeModel' with: [ spec repository: 'github://pharo-ai/decision-tree-model/src' ];
		baseline: 'AITfIdf' with: [ spec repository: 'github://pharo-ai/tf-idf/src' ];
		baseline: 'AIRandomPartitioner' with: [ spec repository: 'github://pharo-ai/random-partitioner/src' ];
		baseline: 'AIDatasets' with: [ spec repository: 'github://pharo-ai/datasets/' ];
		baseline: 'AIGaussianMixtureModel' with: [ spec repository: 'github://pharo-ai/gaussian-mixture-model/' ];
		baseline: 'AINaiveBayesClassifier' with: [ spec repository: 'github://pharo-ai/naive-bayes-classifier/src' ];
		baseline: 'AIEditDistances' with: [ spec repository: 'github://pharo-ai/edit-distances/src' ];
    	baseline: 'AIGraphAlgorithms' with: [ spec repository: 'github://pharo-ai/graph-algorithms' ];
		baseline: 'AILinearModels' with: [ spec repository: 'github://pharo-ai/linear-models/src' ]
]
