requests
call: aString withArguments: aCollection
	| operation response |
	aCollection ifNotEmpty: [ self halt ].
	operation := openApi operationWithId: aString.
	response := ZnClient new
		url: self baseUri / operation path;
		method: operation method asUppercase ;
		execute;
		response.
	^ operation handleResponse: response.
