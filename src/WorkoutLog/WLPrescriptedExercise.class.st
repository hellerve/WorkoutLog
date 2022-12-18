Class {
	#name : #WLPrescriptedExercise,
	#superclass : #Object,
	#instVars : [
		'exercise',
		'reps',
		'sets',
		'notes',
		'weight'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLPrescriptedExercise >> exercise [

	^ exercise
]

{ #category : #accessing }
WLPrescriptedExercise >> exercise: anObject [

	exercise := anObject
]

{ #category : #accessing }
WLPrescriptedExercise >> notes [

	^ notes
]

{ #category : #accessing }
WLPrescriptedExercise >> notes: anObject [

	notes := anObject
]

{ #category : #accessing }
WLPrescriptedExercise >> reps [

	^ reps
]

{ #category : #accessing }
WLPrescriptedExercise >> reps: anObject [

	reps := anObject
]

{ #category : #accessing }
WLPrescriptedExercise >> sets [

	^ sets
]

{ #category : #accessing }
WLPrescriptedExercise >> sets: anObject [

	sets := anObject
]

{ #category : #accessing }
WLPrescriptedExercise >> weight [

	^ weight
]

{ #category : #accessing }
WLPrescriptedExercise >> weight: anObject [

	weight := anObject
]
