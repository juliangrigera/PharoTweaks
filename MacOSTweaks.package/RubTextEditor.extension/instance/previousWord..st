*MacOSTweaks
previousWord: position
	| string index |
	string := self string.
	index := position.
	position <= 1
		ifTrue: [ ^ position ].
	[ index := index - 1 ]
		doWhileTrue: [ (index > 0 and: [ (string at: index) isWordSeparator not ])
				and: [ index > (string lastIndexOf: Character cr startingAt: position - 1 ifAbsent: [ 0 ]) ] ].
	^ index + 1