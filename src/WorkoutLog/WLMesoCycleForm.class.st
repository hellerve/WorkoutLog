Class {
	#name : #WLMesoCycleForm,
	#superclass : #WLCreationForm,
	#category : #'WorkoutLog-Forms'
}

{ #category : #accessing }
WLMesoCycleForm >> commit [
	^ (self modelClass new
		name: self name;
		number: self number;
		description: self description) register
]

{ #category : #accessing }
WLMesoCycleForm >> modelClass [
	^ WLMesoCycle
]
