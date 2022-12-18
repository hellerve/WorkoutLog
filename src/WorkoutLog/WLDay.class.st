Class {
	#name : #WLDay,
	#superclass : #WLModel,
	#instVars : [
		'exercises'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLDay >> exercises [

	^ exercises
]

{ #category : #accessing }
WLDay >> exercises: anObject [

	exercises := anObject
]

{ #category : #accessing }
WLDay >> initialize [
	exercises := OrderedCollection new
]
