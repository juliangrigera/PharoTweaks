*MacOSKeyBindings
endOfLine: aKeyboardEvent

	^ self string
		  indexOf: Character cr
		  startingAt: aKeyboardEvent
		  ifAbsent: [ self string size + 1 ]