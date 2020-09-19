Class {
	#name : #BaselineOfRydnrWorkbench,
	#superclass : #BaselineOf,
	#category : #BaselineOfRydnrWorkbench
}

{ #category : #baselines }
BaselineOfRydnrWorkbench >> baseline: aSpec [
	<baseline>
	aSpec
		for: #common
		do: [ aSpec blessing: #baseline.
			self declareRydnrWorkbenchIn: aSpec.
			self declarePackagesIn: aSpec ]
]

{ #category : #baselines }
BaselineOfRydnrWorkbench >> declarePackagesIn: aSpec [
	aSpec package: 'Rydnr-Workbench-Misc'.
	^ aSpec
]

{ #category : #baselines }
BaselineOfRydnrWorkbench >> declareRydnrWorkbenchIn: aSpec [
	aSpec baseline: 'RydnrWorkbench' with: [ aSpec repository: 'github://rydnr/pharo-workbench:develop/src' ].
	^ aSpec
]
