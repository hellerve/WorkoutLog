Class {
	#name : #WLWorkout,
	#superclass : #Object,
	#instVars : [
		'day',
		'exercises'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLWorkout >> day [

	^ day
]

{ #category : #accessing }
WLWorkout >> day: anObject [

	day := anObject
]

{ #category : #accessing }
WLWorkout >> exercises [

	^ exercises
]

{ #category : #accessing }
WLWorkout >> exercises: anObject [

	exercises := anObject
]

{ #category : #initialization }
WLWorkout >> initialize [
	self exercises: OrderedCollection new
]
