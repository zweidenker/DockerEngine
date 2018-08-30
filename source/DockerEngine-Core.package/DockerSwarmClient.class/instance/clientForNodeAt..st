accessing
clientForNodeAt: aNumber
	^ DockerEngineClient new
		openApi: openApi;
		baseUri: (self baseUri copy host: ( self nodes at: aNumber) Status Addr ) 