baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'MacOSTweaks'.
			spec group: 'default' with: #('MacOSTweaks').
			spec postLoadDoIt: #postLoadActions ]