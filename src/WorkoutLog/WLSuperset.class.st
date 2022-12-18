Class {
	#name : #WLSuperset,
	#superclass : #Object,
	#instVars : [
		'exercises'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLSuperset >> addExercise: anExercise [
	self exercises add: anExercise
]

{ #category : #accessing }
WLSuperset >> exercises [

	^ exercises
]

{ #category : #accessing }
WLSuperset >> exercises: anObject [

	exercises := anObject
]

{ #category : #initialization }
WLSuperset >> initialize [
	exercises := OrderedCollection new
]
