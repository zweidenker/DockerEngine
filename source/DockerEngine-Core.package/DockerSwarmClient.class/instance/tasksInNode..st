as yet unclassified
tasksInNode: node
	^ (self
		call: 'TaskList'
		withArguments: {
			#filters -> ('{"node":["', node id asString,'"],"desired-state":["running"]}') })
			collect: [ :each | 
				DockerSwarmTask new
					client: self;
					json: each ]
