*MacOSTweaks
bringLastTopWindowToFront
	"Bring the last window that was top back to the top. Relies on #submorphs array being ordered top to bottom. "

	| otherSystemWindows |
	otherSystemWindows := ActiveWorld submorphs select: [ :morph | morph isSystemWindow ].
	otherSystemWindows ifNotEmpty: [ otherSystemWindows last activate ]