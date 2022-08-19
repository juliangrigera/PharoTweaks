*MacOSKeyBindings
nextWord: position

	| string index initialIsAlphaNumeric nextCrIndex lineEnd |
	string := self string.
	index := position.
	position >= string size ifTrue: [ ^ position ].
	initialIsAlphaNumeric := self isWordCharacterAt: index - 1 in: string.
	nextCrIndex := (string allButFirst: position - 1) indexOf: Character cr.
	lineEnd := nextCrIndex = 0
		           ifTrue: [ string size ]
		           ifFalse: [ nextCrIndex + position - 1 ].

	initialIsAlphaNumeric ifFalse: [ 
		[ 
		index < lineEnd and: [ 
			(self isWordCharacterAt: index in: string) not ] ] whileTrue: [ 
			index := index + 1 ] ].

	[ index <= lineEnd and: [ self isWordCharacterAt: index in: string ] ] 
		whileTrue: [ index := index + 1 ].
	^ index