requests
version
	| operation response |
	operation := openApi operationWithId: 'SystemVersion'.
	response := ZnClient new
		url: self baseUri / operation path;
		method: operation method asUppercase ;
		execute;
		response.
	response isSuccess ifFalse: [ 
		Error signal: 'request failed: ', response contents asString ].
	^ response contents