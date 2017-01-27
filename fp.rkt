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

;2

(define (sum-up-numbers-simple L) ;establishes the function 'sum-up-numbers-simple'
  (cond ((null? L) 0) ;this begins the conditions.  if there is nothing, 0 is returned
         ((list? (car L)) (sum-up-numbers-simple (cdr L))) ;if the number or character is a list, it is removed, and the recursion begins
         ((number? (car L)) (+ (car L) (sum-up-numbers-simple (cdr L)))) ;if the element is a number, it is held and concatenated to the other numbers (that are not a list)
         (else (sum-up-numbers-simple(cdr L))) ;covers and characters, envokes the recursion
  )       
)

;3

(define (sum-up-numbers-general)
  (cond ((null? L) 0)
        ((list? (car L)) (sum-up-numbers-general (cdr L)))
        ((number? (car L)) (+ (car L) (sum-up-numbers-general (cdr L))))
        (else (sum-up-numbers-general(cdr L)))
   )
)  