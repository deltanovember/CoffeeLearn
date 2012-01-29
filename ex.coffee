Genie = ->
Genie::wishesLeft = 3

Genie::grantWish = ->
	if @wishesLeft > 0
		console.log 'Granted'
		@wishesLeft--

g = new Genie
g.grantWish
