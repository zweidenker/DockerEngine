as yet unclassified
taskWithId: aString 
	^ self
		call: 'TaskInspect'
		withArguments: {
			#id -> aString }
