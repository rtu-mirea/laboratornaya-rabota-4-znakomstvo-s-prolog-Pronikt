domains
	s = symbol
predicates
	built(s, s)
	stored(s, s)
	steals(s, s)
	catches(s, s)
	scutches(s, s)
	milks(s, s).
	scolds(s, s).
	wake(s, s).
clauses
	built(jek, house).
	stored(wheat, closet).
	steals(birdtit, wheat).
	catches(cat, birdtit).
	scutches(cat, birdtit).
	scutches(dog, cat).
	milks(oldlady, cow).
	scolds(shepherd, oldlady).
	wake(twococks, shepherd).
goal
	built(X,house).
	%steals(X,Y).
