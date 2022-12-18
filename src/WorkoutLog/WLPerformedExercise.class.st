Class {
	#name : #WLPerformedExercise,
	#superclass : #Object,
	#instVars : [
		'prescription',
		'reps',
		'weight',
		'sets'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLPerformedExercise >> reps [

	^ reps
]

{ #category : #accessing }
WLPerformedExercise >> reps: anObject [

	reps := anObject
]

{ #category : #accessing }
WLPerformedExercise >> sets [

	^ sets
]

{ #category : #accessing }
WLPerformedExercise >> sets: anObject [

	sets := anObject
]

{ #category : #accessing }
WLPerformedExercise >> weight [

	^ weight
]

{ #category : #accessing }
WLPerformedExercise >> weight: anObject [

	weight := anObject
]
