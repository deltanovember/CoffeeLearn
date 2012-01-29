class Animal
	constructor: (@name) ->

	move: (meters) ->
		console.log @name + " moved #{meters}m."

jill = new Animal "J"
jill.move 4