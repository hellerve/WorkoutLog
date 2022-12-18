Class {
	#name : #WLCreationWidget,
	#superclass : #BrFrame,
	#category : #'WorkoutLog-Elements'
}

{ #category : #'instance creation' }
WLCreationWidget class >> forMacroCycle [
	^ self basicNew initializeWith: (WLMacroCycleForm new)
]

{ #category : #'instance creation' }
WLCreationWidget class >> forMesoCycle [
	^ self basicNew initializeWith: (WLMesoCycleForm new)
]

{ #category : #'instance creation' }
WLCreationWidget class >> forMicroCycle [
	^ self basicNew initializeWith: (WLMicroCycleForm new)
]

{ #category : #accessing }
WLCreationWidget >> initializeWith: aForm [
	super initialize.
	
	self layout: BlFlowLayout vertical.
	self margin: (BlInsets all: 5).
	self
		constraintsDo: [ :c | 
			c horizontal exact: 400.
			c vertical fitContent ].

	aForm onAccept: [ :aModel | self phlow spawnObject: aModel ].

	self addChild: aForm asGtMagritteViewModel asElement
]
