*MacOSKeyBindings
keyDown: anEvent
	"Handle a keystroke event."
	(anEvent key = KeyboardKey enter or: [ anEvent key = KeyboardKey keypadEnter ])
		ifTrue: [ self handleReturnKey
				ifTrue: [ ^ self ] ].

	anEvent hand anyButtonPressed
		ifTrue: [ ^ self ].

	self handleEdit: [ self editor keyDown: anEvent ].