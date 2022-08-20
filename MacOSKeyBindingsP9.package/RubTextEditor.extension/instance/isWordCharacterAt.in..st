*MacOSKeyBindingsP9
isWordCharacterAt: index in: aString
	"By default, group alphanumeric and non-alphanumeric separately"
	^ (aString at: index) isAlphaNumeric