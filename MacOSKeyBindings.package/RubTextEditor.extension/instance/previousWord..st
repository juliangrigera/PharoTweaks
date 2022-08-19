*MacOSKeyBindings
previousWord: position

	| string initialIsAlphaNumeric lineBeginning index |
	string := self string.
	index := position.
	position <= 1 ifTrue: [ ^ position ].
	initialIsAlphaNumeric := self isWordCharacterAt: index in: string.
	lineBeginning := (string first: position)
		                 lastIndexOf: Character cr
		                 ifAbsent: [ 1 ].
	initialIsAlphaNumeric ifFalse: [ 
		[ index := index - 1 ] doWhileTrue: [ 
			index > lineBeginning and: [ 
				(self isWordCharacterAt: index in: string) not ] ] ].
	[ index := index - 1 ] doWhileTrue: [ 
		index > lineBeginning and: [ 
			self isWordCharacterAt: index in: string ] ].
	^ index = 1
		  ifTrue: [ 1 ]
		  ifFalse: [ index + 1 ]