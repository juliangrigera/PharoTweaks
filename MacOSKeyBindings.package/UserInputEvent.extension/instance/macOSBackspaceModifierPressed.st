*MacOSKeyBindings
macOSBackspaceModifierPressed

	^ self optionKeyPressed or: [ self commandKeyPressed ]