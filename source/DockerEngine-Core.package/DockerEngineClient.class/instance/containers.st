requests
containers
	| operation response responseObject |
	operation := openApi operationWithId: 'ContainerList'.
	response := ZnClient new
		url: self baseUri / operation path;
		method: operation method asUppercase ;
		execute;
		response.
	^ operation handleResponse: response.
