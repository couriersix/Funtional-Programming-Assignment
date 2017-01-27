;1

(define (reverse-general L)
  (cond ((null? L) '())
        ((list? L)
         (