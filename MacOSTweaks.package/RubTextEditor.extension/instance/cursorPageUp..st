*MacOSTweaks
cursorPageUp: aKeyboardEvent
	self closeTypeIn.
	self
		moveCursor:
			[ :position | self sameColumn: position newLine: [ :line | line - 1 ] forward: false ]
		forward: false
		specialBlock:
			[ :position | self sameColumn: position newLine: [ :lineNo | lineNo - self pageHeight ] forward: false ]
		event: aKeyboardEvent.
	^ true