instance creation
forCheckSendReceive: nnSocket
	| inst |
	inst := self new.
	inst fd: nnSocket descriptor.
	inst events: (self nnPollIn + self nnPollOut).
	^inst