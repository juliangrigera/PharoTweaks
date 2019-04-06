*MacOSTweaks
cursorEnd: aKeyboardEvent
	"Private - Move cursor end of current line."

	| string |
	self closeTypeIn.
	string := self string.
	self
		moveCursor: [ :position | position + 1 ]
		forward: true
		specialBlock: [ :position | 
			aKeyboardEvent keyValue = 4
				ifTrue: [ string size + 1 ]
				ifFalse: [ string
						indexOf: Character cr
						startingAt: position
						ifAbsent: [ string size + 1 ] ] ]
		event: aKeyboardEvent.
	^ true