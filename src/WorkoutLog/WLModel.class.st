Class {
	#name : #WLModel,
	#superclass : #Object,
	#instVars : [
		'number',
		'name',
		'description'
	],
	#category : #'WorkoutLog-Models'
}

{ #category : #accessing }
WLModel >> description [

	^ description
]

{ #category : #accessing }
WLModel >> description: anObject [

	description := anObject
]

{ #category : #accessing }
WLModel >> name [

	^ name
]

{ #category : #accessing }
WLModel >> name: anObject [

	name := anObject
]

{ #category : #accessing }
WLModel >> number [

	^ number
]

{ #category : #accessing }
WLModel >> number: anObject [

	number := anObject
]
