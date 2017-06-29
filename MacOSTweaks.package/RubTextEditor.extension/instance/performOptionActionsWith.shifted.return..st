*MacOSTweaks
performOptionActionsWith: aKeyboardEvent shifted: aBoolean return: return
	| asciiValue actions action |
	asciiValue := aKeyboardEvent keyValue + 1.
	actions := self optionActions.
	action := actions at: asciiValue.
	action == #noop:
		ifTrue: [ ^ false ].
	return value: (self perform: action with: aKeyboardEvent)