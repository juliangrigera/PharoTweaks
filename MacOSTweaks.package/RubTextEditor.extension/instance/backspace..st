*MacOSTweaks
backspace: aKeyboardEvent
	| result startIndex |
	result := (aKeyboardEvent optionKeyPressed
		or: [ aKeyboardEvent commandKeyPressed ])
		ifTrue: [ aKeyboardEvent optionKeyPressed
				ifTrue: [ self backWord: aKeyboardEvent keyCharacter ]
				ifFalse: [ self backLine: aKeyboardEvent keyCharacter ] ]
		ifFalse: [ self hasSelection
				ifTrue: [ self replaceSelectionWith: self nullText.
					textArea changed ]
				ifFalse: [ startIndex := self markIndex
						+
							(self hasCursor
								ifTrue: [ 0 ]
								ifFalse: [ 1 ]).
					startIndex := 1 max: startIndex - 1.
					self backTo: startIndex ].
			false ].
	self closeTypeIn.
	^ result