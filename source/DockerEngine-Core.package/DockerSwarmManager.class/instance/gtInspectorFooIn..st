as yet unclassified
gtInspectorFooIn: composite
	<gtInspectorPresentationOrder: 0>
	composite roassal2
			title: 'Task';
			painting: [ :view | | elements |
				elements := (RTBox new color: Color lightGray) elementsOn: self nodes.
				view addAll: elements.	
				RTNest new
	for: elements
	add: [ :group :model | | comp el |
		comp := RTCompositeShape 
			with: (RTBox new width: 80; height: 10; color: Color lightBlue)
			with: (RTLabel new height: 4; text: [: node | node id first: 10  ]).
			el := comp elementsOn: (model tasks) .
			group addAll: el.
		RTGridLayout new gapSize: 2; applyOn: group ].
RTFlowLayout new on: elements.
elements @ RTPopup @ RTDraggable.
view 
 ]