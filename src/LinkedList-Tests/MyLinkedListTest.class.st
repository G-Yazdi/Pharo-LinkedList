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

{ #category : #'removing-tests' }
MyLinkedListTest >> testRemoveBegin [
	| list|
	
	
	list := MyLinkedList new.
	
	list removeBegin.
	self assert: list head equals: nil.
	self assert: list tail equals: nil.
	self assert: list length equals: 0.
	
	list insertEnd: 0.
	
	list removeBegin.
	self assert: list head equals: nil.
	self assert: list tail equals: nil.
	self assert: list length equals: 0.
	
	list insertEnd: 1.
	list insertEnd: 2.
	list insertEnd: 3.	
	
	list removeBegin.
	self assert: (list head) value equals: 2.
	self assert: list length equals: 2.
	
	
]

{ #category : #'removing-tests' }
MyLinkedListTest >> testRemoveEnd [
	| list|
	
	
	list := MyLinkedList new.
	
	list removeEnd.
	self assert: list head equals: nil.
	self assert: list tail equals: nil.
	self assert: list length equals: 0.
	
	list insertEnd: 0.
	
	list removeEnd.
	self assert: list head equals: nil.
	self assert: list tail equals: nil.
	self assert: list length equals: 0.
	
	list insertEnd: 1.
	list insertEnd: 2.
	list insertEnd: 3.	
	
	list removeEnd.
	self assert: (list tail) value equals: 2.
	self assert: list length equals: 2.
	
	
]

{ #category : #'removing-tests' }
MyLinkedListTest >> testRemoveValue [
	|list|	
	
	list := MyLinkedList new.
	list create.
	list insertBegin: 0.
	
	list removeValue: 0.           "remove begin"
	self assert: list head isNil.
	self assert: list tail isNil.
	self assert: (list length ) equals: 0.
	
	list insertBegin: 0.
	list insertBegin: 1.
	
	list removeValue: 0.            "remove end"
	self assert: (list head) value equals: 1.
	self assert: (list tail) value equals: 1.
	self assert: (list length ) equals: 1.
	
	list insertBegin: 2.
	list insertBegin: 1.

	list removeValue: 2.            "remove midle"
	self assert: (list head) value equals: 1.
	self assert: (list tail) value equals: 1.
	self assert: (list length ) equals: 2.	
	
]
