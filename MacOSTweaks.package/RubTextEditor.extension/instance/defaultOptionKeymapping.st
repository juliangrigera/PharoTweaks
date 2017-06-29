*MacOSTweaks
defaultOptionKeymapping
	| optMap |
	optMap := Array new: 256 withAll: #noop:.	"use temp in case of a crash"
	{(Character home -> #cursorHome:).
	(Character end -> #cursorEnd:).
	(Character backspace -> #backspace:).
	(Character pageUp -> #cursorPageUp:).
	(Character newPage -> #cursorPageDown:).
	(Character cr -> #crWithIndent:).
	(Character escape -> #escape:).
	(Character arrowLeft -> #cursorLeft:).
	(Character arrowRight -> #cursorRight:).
	(Character arrowUp -> #cursorUp:).
	(Character arrowDown -> #cursorDown:).
	(Character space -> #selectWord:).
	(Character delete -> #forwardDelete:)}
		do: [ :assoc | optMap at: assoc key asciiValue + 1 put: assoc value ].
	'([{''"<' do: [ :char | optMap at: char asciiValue + 1 put: #enclose: ].
	optMap at: $, asciiValue + 1 put: #shiftEnclose:.
	'0123456789-=' do: [ :char | optMap at: char asciiValue + 1 put: #changeEmphasis: ].
	^ optMap