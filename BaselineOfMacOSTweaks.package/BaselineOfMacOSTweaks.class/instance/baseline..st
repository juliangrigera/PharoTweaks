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
			spec postLoadDoIt: #postLoadActionsPharo8 ]