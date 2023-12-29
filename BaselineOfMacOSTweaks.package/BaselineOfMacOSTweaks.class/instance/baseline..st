baseline
baseline: spec
	<baseline>
	spec
		for: #'pharo6.x'
		do: [ spec
				package: 'MacOSTweaks';
				package: 'MacOSTweaks-Pharo6'.
			spec group: 'default' with: #('MacOSTweaks' 'MacOSTweaks-Pharo6').
			spec postLoadDoIt: #postLoadActions ].
	spec
		for: #'pharo7.x'
		do: [ spec
				package: 'MacOSTweaks';
				package: 'MacOSTweaks-Pharo7'.
			spec group: 'default' with: #('MacOSTweaks' 'MacOSTweaks-Pharo7').
			spec postLoadDoIt: #postLoadActionsPharo7 ].
	spec
		for: #'pharo8.x'
		do: [ spec
				package: 'MacOSTweaks';
				package: 'MacOSTweaks-Pharo7'.
			spec group: 'default' with: #('MacOSTweaks' 'MacOSTweaks-Pharo7').
			spec postLoadDoIt: #postLoadActionsPharo8 ].
	spec
		for: #'pharo9.x'
		do: [ spec
				package: 'MacOSKeyBindingsP9';
				package: 'MacOSKeyBindings';
				package: 'MacOSTweaks-Pharo10'.
			spec group: 'default' with: #('MacOSKeyBindingsP9' 'MacOSKeyBindings' 'MacOSTweaks-Pharo10').
			spec postLoadDoIt: #postLoadActionsPharo10 ].
	spec
		for: #'pharo10.x'
		do: [ spec
				package: 'MacOSKeyBindings';
				package: 'MacOSTweaks-Pharo10'.
			spec group: 'default' with: #('MacOSKeyBindings' 'MacOSTweaks-Pharo10').
			spec postLoadDoIt: #postLoadActionsPharo10 ].
	spec
		for: #'pharo11.x'
		do: [ spec
				package: 'MacOSKeyBindings';
				package: 'MacOSTweaks-Pharo10'.
			spec group: 'default' with: #('MacOSKeyBindings' 'MacOSTweaks-Pharo10').
			spec postLoadDoIt: #postLoadActionsPharo10 ]