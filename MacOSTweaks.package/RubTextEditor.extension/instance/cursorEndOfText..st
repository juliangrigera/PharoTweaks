*MacOSTweaks
cursorEndOfText: aKeyboardEvent
	"Private - Move cursor end of current line."

	| string |
	self closeTypeIn.
	string := self string.
	self
		moveCursor: [ :position | self sameColumn: position newLine: [ :line | line + 1 ] forward: true ]
		forward: true
		specialBlock: [ :position | string size + 1 ]
		event: aKeyboardEvent.
	^ true