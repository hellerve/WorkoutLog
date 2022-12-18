Class {
	#name : #WLCreationForm,
	#superclass : #Object,
	#instVars : [
		'number',
		'name',
		'description',
		'onAccept'
	],
	#category : #'WorkoutLog-Forms'
}

{ #category : #magritte }
WLCreationForm >> acceptAction [
	<magritteActionDescription>
	^ MAActionDescription new
		label: 'Accept';
		action: [ :aModel :aButton | self onAccept ifNotNil: [ :aBlock | aBlock value: self commit ] ];
		beCommitAction
]

{ #category : #callbacks }
WLCreationForm >> commit [
	^ self subclassResponsibility
]

{ #category : #accessing }
WLCreationForm >> description [

	^ description
]

{ #category : #accessing }
WLCreationForm >> description: anObject [

	description := anObject
]

{ #category : #magritte }
WLCreationForm >> descriptionDescription [
	<magritteDescription>
	^ MAStringDescription new
		name: 'Description';
		priority: 3;
		accessor: #description
]

{ #category : #accessing }
WLCreationForm >> initialize [
	number := 1.
	name := ''.
	description := ''
]

{ #category : #accessing }
WLCreationForm >> modelClass [
	^ self subclassResponsibility
]

{ #category : #accessing }
WLCreationForm >> name [

	^ name
]

{ #category : #accessing }
WLCreationForm >> name: anObject [

	name := anObject
]

{ #category : #magritte }
WLCreationForm >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		name: 'Name';
		priority: 2;
		accessor: #name
]

{ #category : #accessing }
WLCreationForm >> number [

	^ number
]

{ #category : #accessing }
WLCreationForm >> number: anObject [

	number := anObject
]

{ #category : #magritte }
WLCreationForm >> numberDescription [
	<magritteDescription>
	^ MANumberDescription new
		name: 'Number';
		priority: 1;
		accessor: #number;
		addCondition: [:aValue | (self modelClass numbered: aValue) registered not ]
		labelled: 'Number is already registered';
		addCondition: [:aValue | aValue > 0 ]
		labelled: 'Number must be positive'
]

{ #category : #accessing }
WLCreationForm >> onAccept [

	^ onAccept
]

{ #category : #accessing }
WLCreationForm >> onAccept: anObject [

	onAccept := anObject
]
