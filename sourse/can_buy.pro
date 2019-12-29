domains
  s=symbol
  n=integer
predicates
  whants(s, s)
  costs(s, n)
  money(s, n)
  can_buy(s, s)
clauses
  whants(tom, jeans).
  whants(ann, apple).
  costs(jeans, 3000).
  costs(apple, 20).
  money(tom, 2500).
  money(ann, 4000).
  can_buy(Person, Item) :- whants(Person, Item), money(Person, Has), costs(Item, Cost), Cost<=Has.
goal
  can_buy(tom, jeans).
