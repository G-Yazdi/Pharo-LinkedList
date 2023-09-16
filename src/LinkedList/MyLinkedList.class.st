Class {
	#name : #MyLinkedList,
	#superclass : #Object,
	#instVars : [
		'head',
		'tail'
	],
	#category : #LinkedList
}

{ #category : #creating }
MyLinkedList >> create [
	head := tail := nil.
]

{ #category : #accessing }
MyLinkedList >> head [
	^head
]

{ #category : #inserting }
MyLinkedList >> insertBegin: aValue [
	|node|
	node := MyNode new create: aValue.
	
	node next: head.
	head := node.
	tail ifNil: [ tail:= node].
 	
]

{ #category : #inserting }
MyLinkedList >> insertEnd: aValue [

	|node|
	node := MyNode new create: aValue.

	tail ifNotNil:[ tail next: node ].
	head ifNil: [ head := node ]. 
	tail := node.
]

{ #category : #inserting }
MyLinkedList >> insertValue: aValue atPosition: aPosition [

	| len index currentNode node |
	len := self length.
	(aPosition between: 0 and: len) ifFalse: [ ^ self ].
	(aPosition = 0)ifTrue: [ ^ self insertBegin: aValue ].
	(aPosition = len)ifTrue: [ ^ self insertEnd: aValue ].
	node := MyNode new.
	node create: aValue.
	index := 0.
	currentNode := head.
	[ index < (aPosition - 1) ] whileTrue: [
		index := index + 1.
		currentNode := currentNode next ].
	node next: currentNode next.
	currentNode next: node
]

{ #category : #accessing }
MyLinkedList >> length [

	|length currentNode|
	length := 0.
	currentNode := head.
	[currentNode isNotNil] whileTrue: [ 
		length := length +1.
		currentNode := currentNode next. ].
	^length
]

{ #category : #removing }
MyLinkedList >> removeBegin [
	head ifNotNil: [
		head := head next.
		head ifNil: [ tail := nil ].
		].
]

{ #category : #removing }
MyLinkedList >> removeEnd [

	head ifNotNil: [
		|currentNode previousNode|
		
		currentNode := head.
		previousNode := nil.
		[currentNode next isNotNil] whileTrue: [
			previousNode := currentNode . 
			currentNode := currentNode next ].
		
		tail := previousNode.
		tail 
			ifNil: [ head := nil ]
			ifNotNil: [tail next: nil].
		 ]
	

]

{ #category : #removing }
MyLinkedList >> removeValue: aValue [

	| currentNode |
	
	head value = aValue ifTrue: [ ^ self removeBegin ].
	currentNode := head.
	[ currentNode next isNotNil ] whileTrue: [
		currentNode next value = aValue ifTrue: [
			currentNode next next ifNil: [ ^ self removeEnd ].
			currentNode next: currentNode next next.
			^ aValue ].
		currentNode := currentNode next ].
	^ nil
]

{ #category : #accessing }
MyLinkedList >> tail [
	^tail
]
