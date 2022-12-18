Class {
	#name : #WLMacroCycleForm,
	#superclass : #WLCreationForm,
	#category : #'WorkoutLog-Forms'
}

{ #category : #accessing }
WLMacroCycleForm >> commit [
	^ (self modelClass new
		name: self name;
		number: self number;
		description: self description) register
]

{ #category : #accessing }
WLMacroCycleForm >> modelClass [
	^ WLMacroCycle
]
