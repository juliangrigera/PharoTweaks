*MacOSKeyBindings
cursorDown: aKeyboardEvent

	"Private - Move cursor from position in current line to same position in
	next line. If next line too short, put at end. If shift key down,
	select."

	self closeTypeIn.
	self
		moveCursor: [ :position | 
			self
				sameColumn: position
				newLine: [ :line | line + 1 ]
				forward: true ]
		forward: true
		specialBlock: [ :dummy | 
			aKeyboardEvent commandKeyPressed
				ifTrue: [ self string size + 1 ]
				ifFalse: [ dummy ] ]
		event: aKeyboardEvent.
	^ true