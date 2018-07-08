requests
inspectContainer: aContainer
	^ self
		call: 'ContainerInspect'
		withArguments: {
			#id -> aContainer Id }
