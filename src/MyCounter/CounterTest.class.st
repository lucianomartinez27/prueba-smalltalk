Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testCounterDecrement [
	| c |
	c := Counter new.
	c count: 0.
	c decrement .
	self assert: c count equals: -1
]

{ #category : #tests }
CounterTest >> testCounterIncrement [
	| c |
	c := Counter new.
	c count: 0.
	c increment.
	self assert: c count equals: 1. 
]

{ #category : #tests }
CounterTest >> testValueAtCreationIsZero [
	self assert: Counter new count equals: 0 
]
