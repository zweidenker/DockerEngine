as yet unclassified
nodes
	^ (self
		call: 'NodeList'
		withArguments: { })
			collect: [ :each | 
				DockerSwarmNode new 
					client: self;
					json: each ]
