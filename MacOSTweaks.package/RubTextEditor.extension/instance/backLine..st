*MacOSTweaks
backLine: aKeyboardEvent
	"If the selection is not a caret, delete it and leave it in the backspace buffer.
	 Else, delete the line before the caret."

	| startIndex |
	self hasCursor
		ifTrue: [ startIndex := 1 max: self markIndex - 1.	"a caret, delete at least one character"
			[ startIndex > 1 and: [ (self string at: startIndex - 1) ~= Character cr ] ]
				whileTrue: [ startIndex := startIndex - 1 ] ]
		ifFalse: [ startIndex := self markIndex ].	"a non-caret, just delete it"
	self backTo: startIndex.
	^ false