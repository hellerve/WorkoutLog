Class {
	#name : #WLMicroCycle,
	#superclass : #WLCycle,
	#instVars : [
		'workouts'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLMicroCycle class >> registry [
	^ WLMicroCycleRegistry uniqueInstance
]

{ #category : #accessing }
WLMicroCycle >> addWorkout: aWorkout [
	self workouts add: aWorkout
]

{ #category : #accessing }
WLMicroCycle >> cycles [
	^ {}
]

{ #category : #initialization }
WLMicroCycle >> initialize [
	super initialize.
	workouts := OrderedCollection new.
]

{ #category : #accessing }
WLMicroCycle >> workouts [

	^ workouts
]

{ #category : #accessing }
WLMicroCycle >> workouts: anObject [

	workouts := anObject
]
