key bindings
setWindowSwitchBindings
	World
		bindKeyCombination: $` command
			toAction: [ SystemWindow sendTopWindowToBack ];
		bindKeyCombination: $` command shift
			toAction: [ SystemWindow bringLastTopWindowToFront ]