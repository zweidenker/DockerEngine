as yet unclassified
containerWithId: aString 
	^ self
		call: 'ContainerInspect'
		withArguments: {
			#id -> aString }
