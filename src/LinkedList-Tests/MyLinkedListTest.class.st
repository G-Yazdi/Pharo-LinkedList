Class {
	#name : #MyLinkedListTest,
	#superclass : #TestCase,
	#category : #'LinkedList-Tests'
}

{ #category : #'inserting-tests' }
MyLinkedListTest >> testInsertBegin [

	| value list|
	
	value := 0.
	
	list := MyLinkedList new.
	list insertBegin: value.
	
	self assert: (list head) value equals: 0.
	self assert: (list tail) value equals: 0.
	
	value := 1.
	list insertBegin: value.
	self assert: (list head) value equals: 1.
	self assert: (list tail) value equals: 0.
	
	value := 2.
	list insertBegin: value.
	self assert: (list head) value equals: 2.
	self assert: (list tail) value equals: 0.
]

{ #category : #'inserting-tests' }
MyLinkedListTest >> testInsertEnd [
	| value list|
	
	value := 0.
	
	list := MyLinkedList new.
	list insertEnd: value.
	
	self assert: (list head) value equals: 0.
	self assert: (list tail) value equals: 0.
	
	value := 1.
	list insertEnd: value.
	self assert: (list head) value equals: 0.
	self assert: (list tail) value equals: 1.
	
	value := 2.
	list insertEnd: value.
	self assert: (list head) value equals: 0.
	self assert: (list tail) value equals: 2.
]

{ #category : #'inserting-tests' }
MyLinkedListTest >> testInsertValueAtPosition [
	|value list|
	
	value := 0.
	
	list := MyLinkedList new.
	list create.
	list insertValue: 0 atPosition: 0.
	self assert: (list head) value equals: 0.
	self assert: (list tail) value equals: 0.
	self assert: (list length ) equals: 1.
	
	list insertValue: 1 atPosition: 1.
	self assert: (list head) value equals: 0.
	self assert: (list tail) value equals: 1.
	self assert: (list length ) equals: 2.
	
	list insertValue: 2 atPosition: 1.
	self assert: (list head) value equals: 0.
	self assert: (list tail) value equals: 1.
	self assert: (list length ) equals: 3.
	
	list insertValue: 22 atPosition: 2.
	self assert: (list head) value equals: 0.
	self assert: (list tail) value equals: 1.
	self assert: (list length ) equals: 4.
	
	list insertValue: 3 atPosition: 0.	
	self assert: (list head) value equals: 3.
	self assert: (list tail) value equals: 1.
	self assert: (list length ) equals: 5.
	
	list insertValue: 3 atPosition: 10.	
	self assert: (list head) value equals: 3.
	self assert: (list tail) value equals: 1.
	self assert: (list length ) equals: 5.
	
	"list insertValue: 3 atPosition: -1.	
	self assert: (list head) value equals: 3.
	self assert: (list tail) value equals: 1.
	self assert: (list length ) equals: 4.	"
		
	
	
]

{ #category : #'accessing-tests' }
MyLinkedListTest >> testLength [
	| value list|
	
	value := 0.
	
	list := MyLinkedList new.
	list insertBegin: value.
	
	self assert: (list length) value equals: 1.
	
	value := 1.
	list insertBegin: value.
	self assert: (list length) value equals: 2.
	
	value := 2.
	list insertEnd: value.
	self assert: (list length) value equals: 3.
]
