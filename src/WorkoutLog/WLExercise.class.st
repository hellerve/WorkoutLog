Class {
	#name : #WLExercise,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLExercise class >> ckasregistry [
	^ WLExerciseRegistry uniqueInstance
]

{ #category : #accessing }
WLExercise >> name [

	^ name
]

{ #category : #accessing }
WLExercise >> name: anObject [

	name := anObject
]
