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
		spec
			baseline: 'AIDataFrameInspector' with: [ spec repository: 'github://pharo-ai/data-inspector/src' ];
			baseline: 'AIKNearestNeighbors' with: [ spec repository: 'github://pharo-ai/k-nearest-neighbors/src' ];
			baseline: 'AIKMeans' with: [ spec repository: 'github://pharo-ai/k-means/src' ];
			baseline: 'AIMetrics' with: [ spec repository: 'github://pharo-ai/metrics/src' ];
			baseline: 'AIAPriori' with: [ spec repository: 'github://pharo-ai/APriori/src' ];
			baseline: 'AINLP' with: [ spec repository: 'github://pharo-ai/nlp/src' ];
			baseline: 'AIDecisionTreeModel' with: [ spec repository: 'github://pharo-ai/decision-tree-model/src' ];
			baseline: 'AITfIdf' with: [ spec repository: 'github://pharo-ai/tf-idf/src' ];
			baseline: 'AIDataPartitioners' with: [ spec repository: 'github://pharo-ai/data-partitioners/src' ];
			baseline: 'AIDataImputers' with: [ spec repository: 'github://pharo-ai/data-imputers/src' ];
			baseline: 'AIDataPreProcessing' with: [ spec repository: 'github://pharo-ai/data-preprocessing/src' ];
			baseline: 'AIDatasets' with: [ spec repository: 'github://pharo-ai/datasets/' ];
			baseline: 'AINaiveBayesClassifier' with: [ spec repository: 'github://pharo-ai/naive-bayes-classifier/src' ];
			baseline: 'AIEditDistances' with: [ spec repository: 'github://pharo-ai/edit-distances/src' ];
			baseline: 'AIGraphAlgorithms' with: [ spec repository: 'github://pharo-ai/graph-algorithms' ];
			baseline: 'AILinearModels' with: [ spec repository: 'github://pharo-ai/linear-models/src' ];
			baseline: 'AINgramModel' with: [ spec repository: 'github://pharo-ai/NgramModel/src' ] ]
]
