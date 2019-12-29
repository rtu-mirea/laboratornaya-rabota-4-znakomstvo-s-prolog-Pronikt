domains
  s=symbol
predicates
	male(s)
	female(s)
	nondeterm parent(s,s)
  	nondeterm mother(s,s)
  	nondeterm father(s,s)
  	nondeterm child(s,s)
	nondeterm ancestor(s,s)
	nondeterm brother(s,s)
	nondeterm sister(s,s)
	nondeterm grandfather(s,s)
	nondeterm grandmother(s,s)
	nondeterm uncle(s,s)
clauses
	parent(tom, jake).
	parent(jane, jake).
	parent(tom, anna).
	parent(jane, anna).
	parent(kate, tom).
	parent(bob, tom).
	parent(kate, alex).
	parent(bob, alex).
	male(tom).
	male(bob).
	male(jake).
	male(alex).
	female(jane).
	female(kate).
	female(anna).
  
  child(Y,X):- parent(X,Y), Y<>X.
  mother(X,Y):- parent(X,Y),female(X), Y<>X.
  father(X,Y):-	parent(X,Y),male(X), Y<>X.
  brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X<>Y.
  sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X<>Y.
  grandfather(X,Y):-child(Z,X),parent(Z,Y),male(X),X<>Y.
  grandmother(X,Y):-child(Z,X),parent(Z,Y),female(X),X<>Y.
  ancestor(X,Z):-parent(X,Z),X<>Z.
  uncle(X,Y):-parent(Z,Y),brother(X,Z),male(X),X<>Y.
goal
  uncle(A,B).
