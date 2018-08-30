as yet unclassified
nodes
	^ nodes ifNil: [ 
		nodes := client nodes ]