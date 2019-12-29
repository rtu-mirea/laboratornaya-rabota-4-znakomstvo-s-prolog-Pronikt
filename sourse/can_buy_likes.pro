predicates
	can_buy(symbol, symbol)
	clothes(symbol)
	person(symbol)
	likes(symbol, symbol)
	for_sale(symbol)
clauses
	person(fill).
	person(anna).
	clothes(jeans).
	clothes(shorts).
	likes(fill, jeans).
	likes(anna,apples).
	for_sale(apples).
	for_sale(jeans).
	for_sale(shorts).

	can_buy(X,Y):-person(X),clothes(Y),likes(X,Y), for_sale(Y).
	
goal
	can_buy(anna, jeans).
