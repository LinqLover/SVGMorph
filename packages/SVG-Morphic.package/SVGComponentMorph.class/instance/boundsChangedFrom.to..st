as yet unclassified
boundsChangedFrom: oldBounds to: newBounds
	oldBounds extent = newBounds extent ifFalse:[
		"transform := transform composedWithGlobal:
			(MatrixTransform2x3 withOffset: oldBounds origin negated).
		transform := transform composedWithGlobal:
			(MatrixTransform2x3 withScale: newBounds extent / oldBounds extent).
		transform := transform composedWithGlobal:
			(MatrixTransform2x3 withOffset: newBounds origin)."
		rectangle := rectangle withWidth: newBounds width.
		rectangle := rectangle withHeight: newBounds height.
	].
	transform offset: transform offset + (newBounds origin - oldBounds origin)