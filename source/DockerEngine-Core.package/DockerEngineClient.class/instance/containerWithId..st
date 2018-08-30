as yet unclassified
containerWithId: aString 
	^ DockerContainer new
		client: self;
		json: (self
		call: 'ContainerInspect'
		withArguments: {
			#id -> aString })
