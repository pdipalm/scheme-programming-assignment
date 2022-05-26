(define (deleteItem lst item)
  (cond ((null? lst)
         '())
        ((equal? item (car lst))
         (deleteItem (cdr lst) item))
        (else
         ;(if (list? (car lst))
         ;      (deleteItem (car lst) item))
         (cons (car lst) (deleteItem (cdr lst) item)))))


(define lst '(2 1 '(1) 3 4 5 6 1 9 1))
(deleteItem lst 1)