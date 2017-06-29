*MacOSTweaks
isWordSeparator
	"Answer whether the receiver is a separator for intra-word navigation."

	^self isSpecial or: [ self isSpace or: [ '"[{(' includes: self ] ]