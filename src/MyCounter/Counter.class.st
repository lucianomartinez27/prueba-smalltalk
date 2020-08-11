"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message withValue:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
	"return the current value of the count instance variable"
	^ count
]

{ #category : #accessing }
Counter >> count: aNumber [
	"set the value of the count instance variable"
	count := aNumber 
]

{ #category : #operations }
Counter >> decrement [
	count := count -1
]

{ #category : #operations }
Counter >> increment [
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [ 
	"set the initial value of count to 0"
	count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: self count printString
]
