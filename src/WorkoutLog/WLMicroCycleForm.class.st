Class {
	#name : #WLMicroCycleForm,
	#superclass : #WLCreationForm,
	#category : #'WorkoutLog-Forms'
}

{ #category : #accessing }
WLMicroCycleForm >> commit [
	^ (self modelClass new
		name: self name;
		number: self number;
		description: self description) register
]

{ #category : #accessing }
WLMicroCycleForm >> modelClass [
	^ WLMicroCycle
]
