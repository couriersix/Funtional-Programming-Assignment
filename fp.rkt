;1

(define (reverse-general L) ;establishes the function 'reverse-general'
  (cond ((null? L) '()) ;establishes the conditions, first being if the argument is null, a null list is returned
        ((list? L) ;if the argument is a list it enters the loop
         (append (reverse-general (cdr L)) ;these two lines are recursive.  It takes the argument, a list, and finds the last element, pushes it, goes through the new list and repeats. 
                 (list (reverse-general (car L))) ;each time, concatenating the element it pushes into a new list.
          )
         )
         (else L)
   )
)
