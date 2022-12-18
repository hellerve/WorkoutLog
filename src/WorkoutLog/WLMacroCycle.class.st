Class {
	#name : #WLMacroCycle,
	#superclass : #WLCycle,
	#instVars : [
		'mesos'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLMacroCycle class >> registry [
	^ WLMacroCycleRegistry uniqueInstance
]

{ #category : #accessing }
WLMacroCycle >> cycles [
	^ mesos
]

{ #category : #initialization }
WLMacroCycle >> initialize [
	super initialize.
	mesos := OrderedCollection new.
]

{ #category : #accessing }
WLMacroCycle >> mesos [

	^ mesos
]

{ #category : #accessing }
WLMacroCycle >> mesos: anObject [

	mesos := anObject
]
