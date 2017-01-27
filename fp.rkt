;1

(define (reverse-general L)
  (cond ((null? L) '())
        ((list? L)
         (append (reverse-general (cdr L))
                 (list (reserve-general (car L)))
          )
         )
         (else L)
   )
)
