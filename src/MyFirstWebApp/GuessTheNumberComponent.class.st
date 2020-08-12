"
a GuessTheNumberComponent is a Seaside component to play ""Guess the number"" in the browser.
"
Class {
	#name : #GuessTheNumberComponent,
	#superclass : #WAComponent,
	#instVars : [
		'numberToGuess',
		'userNumber'
	],
	#category : #MyFirstWebApp
}

{ #category : #comparing }
GuessTheNumberComponent >> compareNumbersAndGetTextForTheWeb [
	userNumber  ifNil: [ ^ 'Ingresa un número.' ].
	numberToGuess = userNumber greaseInteger
		ifTrue: [ ^ 'ADIVINASTE' ]
		ifFalse: [ numberToGuess < userNumber greaseInteger
				ifTrue: [ ^ 'El numero es menor' ]
				ifFalse: [ ^ 'El numero es mayor.' ] ]
]

{ #category : #initialization }
GuessTheNumberComponent >> initialize [
	super initialize.
	numberToGuess := 25 atRandom
]

{ #category : #rendering }
GuessTheNumberComponent >> renderContentOn: aCanvas [
	aCanvas heading
		level: 1;
		with: 'ADIVINA EL NÚMERO'.
	aCanvas break.
	aCanvas
		form: [ aCanvas textInput
				callback: [ :value | userNumber := value ].
			aCanvas submitButton ].
	aCanvas heading
		level: 2;
		with: self compareNumbersAndGetTextForTheWeb
]
