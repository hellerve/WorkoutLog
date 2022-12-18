Class {
	#name : #WLExerciseRegistry,
	#superclass : #Object,
	#traits : 'TGtUniqueInstance',
	#classTraits : 'TGtUniqueInstance classTrait',
	#instVars : [
		'exercises'
	],
	#category : #'WorkoutLog-Registry'
}

{ #category : #accessing }
WLExerciseRegistry >> exerciseNamed: aName [
	^ self exercises detect: [:anExercise | anExercise name = aName ]
]

{ #category : #accessing }
WLExerciseRegistry >> exercises [

	^ exercises
]

{ #category : #accessing }
WLExerciseRegistry >> exercises: anObject [

	exercises := anObject
]

{ #category : #accessing }
WLExerciseRegistry >> initialize [
	exercises := OrderedCollection new
]
