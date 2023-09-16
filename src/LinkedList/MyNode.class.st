"
I am Node, the elementary part of a LinkedList.

I hold a value, as well as a link to my successor (next).
"
Class {
	#name : #MyNode,
	#superclass : #Object,
	#instVars : [
		'value',
		'next'
	],
	#category : #LinkedList
}

{ #category : #creating }
MyNode >> create: aValue [
	
	self value: aValue.
	self next: nil.
	^ self
]

{ #category : #accessing }
MyNode >> next [
	^next
]

{ #category : #accessing }
MyNode >> next: aMyNode [
	next:= aMyNode
]

{ #category : #accessing }
MyNode >> value [
	^value
]

{ #category : #accessing }
MyNode >> value: aValue [
	value:= aValue
]
