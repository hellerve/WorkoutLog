Class {
	#name : #WLMesoCycle,
	#superclass : #WLCycle,
	#instVars : [
		'micros',
		'days'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLMesoCycle class >> registry [
	^ WLMesoCycleRegistry uniqueInstance
]

{ #category : #accessing }
WLMesoCycle >> addDay: aDay [
	self days add: aDay
]

{ #category : #accessing }
WLMesoCycle >> cycles [
	^ self micros
]

{ #category : #accessing }
WLMesoCycle >> days [

	^ days
]

{ #category : #accessing }
WLMesoCycle >> days: anObject [

	days := anObject
]

{ #category : #accessing }
WLMesoCycle >> gtDaysFor: aView [
	<gtView>
	^ aView list
		title: 'Days';
		priority: 1;
		items: [ self days ]
]

{ #category : #initialization }
WLMesoCycle >> initialize [
	super initialize.
	micros := OrderedCollection new.
	days := OrderedCollection new.
]

{ #category : #accessing }
WLMesoCycle >> micros [

	^ micros
]

{ #category : #accessing }
WLMesoCycle >> micros: anObject [

	micros := anObject
]
