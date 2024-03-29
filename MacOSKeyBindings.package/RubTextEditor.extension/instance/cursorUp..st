*MacOSKeyBindings
cursorUp: aKeyboardEvent

	"Private - Move cursor from position in current line to same position in
prior line. If prior line too short, put at end"

	self closeTypeIn.
	self
		moveCursor: [ :position | 
			self
				sameColumn: position
				newLine: [ :line | line - 1 ]
				forward: false ]
		forward: false
		specialBlock: [ :dummy | 
			aKeyboardEvent commandKeyPressed
				ifTrue: [ 1 ]
				ifFalse: [ dummy ] ]
		event: aKeyboardEvent.
	^ true