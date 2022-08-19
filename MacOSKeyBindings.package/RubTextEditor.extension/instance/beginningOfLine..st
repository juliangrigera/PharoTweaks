*MacOSKeyBindings
beginningOfLine: position

	^ (self string
		   lastIndexOf: Character cr
		   startingAt: position - 1
		   ifAbsent: [ 0 ]) + 1