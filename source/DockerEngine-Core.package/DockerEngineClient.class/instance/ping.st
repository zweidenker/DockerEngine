queries
ping

	^ (self call: 'SystemPing' withArguments: {}) = 'OK'.
