Class {
	#name : #WLCycleRegistry,
	#superclass : #Object,
	#traits : 'TGtUniqueInstance',
	#classTraits : 'TGtUniqueInstance classTrait',
	#instVars : [
		'models'
	],
	#category : #'WorkoutLog-Registry'
}

{ #category : #accessing }
WLCycleRegistry >> findNumbered: aNumber ifNone: aBlock [
	^ self models detect: [:aModel | aModel number = aNumber ] ifNone: aBlock
]

{ #category : #accessing }
WLCycleRegistry >> initialize [
	self models: OrderedCollection new
]

{ #category : #accessing }
WLCycleRegistry >> isRegistered: aModel [
	^ (self findNumbered: aModel ifNone: [ nil ]) isNotNil
]

{ #category : #accessing }
WLCycleRegistry >> models [

	^ models
]

{ #category : #accessing }
WLCycleRegistry >> models: anObject [

	models := anObject
]

{ #category : #accessing }
WLCycleRegistry >> register: aModel [
	self models add: aModel
]
