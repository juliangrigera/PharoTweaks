*MacOSTweaks
newDefaultKeymappingIndex
	defaultKeymappingIndex := IdentityDictionary new.
	defaultKeymappingIndex at: #command put: self defaultCommandKeymapping.
	defaultKeymappingIndex at: #option put: self defaultOptionKeymapping.
	defaultKeymappingIndex at: #shiftCommand put: self defaultShiftCommandKeymapping.
	^ defaultKeymappingIndex 