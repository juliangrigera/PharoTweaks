*MacOSTweaks
cursorBeginningOfText: aKeyboardEvent
	"Private - Move cursor from position in current line to beginning of
	current line. If control key is pressed put cursor at beginning of text"

	| string |
	string := self string.
	self
		moveCursor: [ :position | self sameColumn: position newLine: [ :line | line - 1 ] forward: false ]
		forward: false
		specialBlock: [ :position | 1 ]
		event: aKeyboardEvent.
	^ true