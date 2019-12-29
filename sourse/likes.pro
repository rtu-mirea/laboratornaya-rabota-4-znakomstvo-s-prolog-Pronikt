predicates
  likes(symbol,symbol) - nondeterm (i,i)

clauses
  likes(ann,eat).
  likes(tom,football).
  likes(bob,basketball).
  likes(fill,swimming).
  likes(maks,tennis).
  likes(alfred,Activity):-likes(bob, Activity).
