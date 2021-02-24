Class {
	#name : #BaselineOfAIPharo,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIPharo
}

{ #category : #baselines }
BaselineOfAIPharo >> baseline: spec [
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec 
				baseline: 'AIHierarchicalClustering' 	with: [ spec repository: 'github://pharo-ai/hierarchical-clustering/src' ];
				baseline: 'AIkNN'								with: [ spec repository: 'github://pharo-ai/kNN/src' ];
				baseline: 'AIKMeans'							with: [ spec repository: 'github://pharo-ai/k-means/src' ];
				baseline: 'AIMetrics'							with: [ spec repository: 'github://pharo-ai/metrics/src' ];
				baseline: 'AIViz'								with: [ spec repository: 'github://pharo-ai/viz/src' ];
				baseline: 'APriori'							with: [ spec repository: 'github://pharo-ai/APriori/src' ];
				baseline: 'AINLP'								with: [ spec repository: 'github://pharo-ai/nlp/src' ];
				baseline: 'AINormalization'					with: [ spec repository: 'github://pharo-ai/normalization/src' ];
				baseline: 'DecisionTreeModel'				with: [ spec repository: 'github://pharo-ai/DecisionTreeModel/src' ];
				baseline: 'Tfidf'								with: [ spec repository: 'github://pharo-ai/TF-IDF/src' ];
				baseline: 'StringMetrics'					with: [ spec repository: 'github://pharo-ai/StringMetrics/src' ];
				baseline: 'RandomPartitioner'				with: [ spec repository: 'github://pharo-ai/RandomPartitioner/src' ];
				baseline: 'AIDatasets'						with: [ spec repository: 'github://pharo-ai/Datasets/' ];
				baseline: 'NaiveBayesClassifier'			with: [ spec repository: 'github://pharo-ai/NaiveBayesClassifier/src' ].
			spec
				group: 'Core' 						with: #('AIHierarchicalClustering' 'AIkNN' 'AIKMeans' 'AIMetrics' 'AIViz' 'APriori' 'DecisionTreeModel' 'Tfidf' 'StringMetrics' 'RandomPartitioner' 'AIDatasets' 'NaiveBayesClassifier');
				group: 'default' 					with: #('Core') ]
]
