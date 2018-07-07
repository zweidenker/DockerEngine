queries
ping
	| operation response |
	operation := openApi operationWithId: 'SystemPing'.
	response := ZnClient new
		url: self baseUri / operation path;
		method: operation method asUppercase ;
		execute.
	(response = 'OK') ifTrue: [ 
		^ true ].
	^ false