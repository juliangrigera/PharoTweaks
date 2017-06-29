*MacOSTweaks
nextWord: position
	| string index |
	string := self string.
	index := position.
	position >= string size
		ifTrue: [ ^ position ].
	[ (index <= string size and: [ (string at: index) isWordSeparator not ])
		and: [ (string at: index) ~= Character cr ] ]
		whileTrue: [ index := index + 1 ].
	^ index