Class {
	#name : #WLDayForm,
	#superclass : #WLCreationForm,
	#category : #'WorkoutLog-Forms'
}

{ #category : #accessing }
WLDayForm >> commit [
	^ (self modelClass new
		name: self name;
		number: self number;
		description: self description) register
]

{ #category : #accessing }
WLDayForm >> modelClass [
	^ WLDay
]
