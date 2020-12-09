Class {
	#name : #BaselineOfMLPharo,
	#superclass : #BaselineOf,
	#category : #BaselineOfMLPharo
}

{ #category : #baselines }
BaselineOfMLPharo >> baseline: spec [
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec 
				baseline: 'MLHierarchicalClustering' 	with: [ spec repository: 'github://pharo-ai/MLHierarchicalClustering:main/src' ];
				baseline: 'MLkNN'								with: [ spec repository: 'github://pharo-ai/MLkNN:main/src' ];
				baseline: 'KMeans'								with: [ spec repository: 'github://pharo-ai/KMeans/src' ];
				baseline: 'MLMetrics'							with: [ spec repository: 'github://pharo-ai/MLMetrics:main/src' ];
				baseline: 'MLViz'								with: [ spec repository: 'github://pharo-ai/MLViz:main/src' ];
				baseline: 'APriori'							with: [ spec repository: 'github://pharo-ai/APriori/src' ];
				baseline: 'NgramModel'						with: [ spec repository: 'github://pharo-ai/NgramModel/src' ];
				baseline: 'DecisionTreeModel'				with: [ spec repository: 'github://pharo-ai/DecisionTreeModel/src' ];
				baseline: 'Tfidf'								with: [ spec repository: 'github://pharo-ai/TF-IDF/src' ];
				baseline: 'Polyglot'							with: [ spec repository: 'github://PolyMathOrg/Polyglot/src' ];
				baseline: 'StringMetrics'					with: [ spec repository: 'github://pharo-ai/StringMetrics/src' ];
				baseline: 'RandomPartitioner'				with: [ spec repository: 'github://pharo-ai/RandomPartitioner/src' ];
				baseline: 'Datasets'							with: [ spec repository: 'github://pharo-ai/Datasets/' ];
				baseline: 'NaiveBayesClassifier'			with: [ spec repository: 'github://pharo-ai/NaiveBayesClassifier/src' ].
			spec
				group: 'Core' 						with: #('MLHierarchicalClustering' 'MLkNN' 'KMeans' 'MLMetrics' 'MLViz' 'APriori' 'NgramModel' 'DecisionTreeModel' 'Tfidf' 'Polyglot'  'StringMetrics' 'RandomPartitioner' 'Datasets' 'NaiveBayesClassifier');
				group: 'default' 					with: #('Core') ]
]
