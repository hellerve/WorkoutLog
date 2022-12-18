Class {
	#name : #WLCycle,
	#superclass : #WLModel,
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLCycle class >> numbered: aNumber [
	^ self registry findNumbered: aNumber ifNone:[ self new number: aNumber ]
]

{ #category : #accessing }
WLCycle class >> registry [
	^ WLCycleRegistry uniqueInstance
]

{ #category : #accessing }
WLCycle >> cycles [
	^ self subclassResponsibility
]

{ #category : #view }
WLCycle >> gtCyclesFor: aView [
	<gtView>
	^ aView list
		title: 'Cycles';
		priority: 3;
		items: [ self cycles ]
]

{ #category : #view }
WLCycle >> gtWorkoutsFor: aView [
	<gtView>
	^ aView list
		title: 'Workouts';
		priority: 2;
		items: [ self workouts ]
]

{ #category : #accessing }
WLCycle >> register [
	self class registry register: self
]

{ #category : #accessing }
WLCycle >> registered [
	^ self class registry isRegistered: self
]

{ #category : #accessing }
WLCycle >> workouts [
	^ self cycles flatCollect: #workouts
]
