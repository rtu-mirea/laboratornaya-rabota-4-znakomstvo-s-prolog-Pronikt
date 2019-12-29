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
	/* Факты */
	built(jek, house).
	stored(wheat, closet).
	steals(birdtit, wheat).
	milks(oldlady, cow).
	scolds(shepherd, oldlady).
	wake(twococks, shepherd).
	catches(cat, birdtit).
	scutches(cat, birdtit).
	/* Правило */
	scutches(dog, cat):- 
	catches(cat, birdtit),
	scutches(cat, birdtit).
goal
	%built(X,house).
	scutches(dog,Y).
	%steals(X,Y).
