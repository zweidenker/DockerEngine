accessing
clientForNode: node
	^ DockerEngineClient new
		openApi: openApi;
		baseUri: (self baseUri copy host: node ipAddress) 