*MacOSTweaks
cursorHome: aKeyboardEvent
	"Private - Move cursor from position in current line to beginning of
	current line. If control key is pressed put cursor at beginning of text"

	| string |
	string := self string.
	self
		moveCursor: [ :position | position - 1 max: 1 ]
		forward: false
		specialBlock: [ :position | 
			aKeyboardEvent keyValue = 1
				ifTrue: [ 1 ]
				ifFalse: [ (string
						lastIndexOf: Character cr
						startingAt: position - 1
						ifAbsent: [ 0 ]) + 1 ] ]
		event: aKeyboardEvent.
	^ true