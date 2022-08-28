*MacOSKeyBindings
backspace: aKeyboardEvent

	| result startIndex |
	self closeTypeIn.
	result := aKeyboardEvent backspaceModifierPressed
		          ifTrue: [ 
			          aKeyboardEvent commandKeyPressed
				          ifTrue: [ self backLine: aKeyboardEvent keyCharacter ]
				          ifFalse: [ self backWord: aKeyboardEvent keyCharacter ] ]
		          ifFalse: [ 
			          self hasSelection
				          ifTrue: [ 
					          self replaceSelectionWith: self nullText.
					          textArea changed ]
				          ifFalse: [ 
					          startIndex := self markIndex + (self hasCursor
						                         ifTrue: [ 0 ]
						                         ifFalse: [ 1 ]).
					          startIndex := 1 max: startIndex - 1.
					          self backTo: startIndex ].
			          false ].
	^ result