baseline
baseline: spec
	<baseline>
	spec
		for: #common
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
			spec postLoadDoIt: #postLoadActionsPharo7 ]