*MacOSTweaks
cursorPageDown: aKeyboardEvent
	self closeTypeIn.
	self
		moveCursor:
			[ :position | self sameColumn: position newLine: [ :line | line + 1 ] forward: true ]
		forward: true
		specialBlock:
			[ :position | self sameColumn: position newLine: [ :lineNo | lineNo + self pageHeight ] forward: true ]
		event: aKeyboardEvent.
	^ true