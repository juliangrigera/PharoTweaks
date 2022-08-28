*MacOSKeyBindingsP9
isWordCharacterAt: index in: aString
	"By default, group alphanumeric and non-alphanumeric separately"
	| character |
	character := aString at: index.
	"In smalltalk code, colons make part of selectors too and are part of a word"
	^ character isAlphaNumeric or: [
		"Check that it is a keyword selector.
		 - followed by a colon
		 - but not by an assignment "
		(character = $_) or: [ 
			(character = $:) and: [ 
				aString size > index
					and: [  (aString at: index + 1) ~= $= ] ] ] ]