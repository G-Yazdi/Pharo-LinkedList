Class {
	#name : #MyNodeTest,
	#superclass : #TestCase,
	#category : #'LinkedList-Tests'
}

{ #category : #'creating-tests' }
MyNodeTest >> testCreate [
| node |
	node := MyNode new.
	node create: 7.
	self assert: node value equals: 7.
	self assert: node next equals: nil.
]

{ #category : #'accessing-tests' }
MyNodeTest >> testNext [
	| node|
	node := MyNode new.
	node next: nil.
	self assert: node next equals: nil. 
]

{ #category : #'accessing-tests' }
MyNodeTest >> testValue [
	| node |
	node := MyNode new.
	node value: 7.
	self assert: node value equals: 7
]
