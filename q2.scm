(define (deleteAtom lst target) ;function definition, deletes all occurences of target in list/sublist
  (cond ((null? lst) ;base case, returns empty list
         '())
        ((equal? target (car lst)) ;if first item is equal to target, ignore it and recurse the rest of the list
         (deleteAtom (cdr lst) target))
        ((list? (car lst)) ;if first item is a sublist, return deleteAtom of the sublist and recurse the rest of the list
         (cons (deleteAtom (car lst) target) (deleteAtom (cdr lst) target)))
        (else ;this is not the atom you are looking for construct the list as normal and continue recursion
         (cons (car lst) (deleteAtom (cdr lst) target)))))



(deleteAtom '(2 1 '(1 3 4 1 '(1 7)) 3 4 5 6 '(1) 9 1) 1)
(deleteAtom '(a b c d a c a a) 'a)
(deleteAtom '((a b) c () d a c a a) 'a)
(deleteAtom '(((a (a)) b) c () d a c a a) 'a)
(deleteAtom '(a b c d a c (a ((a)))a a) 'a)
(deleteAtom '(11 (12) 12 11) 11)
(deleteAtom '(Hydrogen Lithium Iron Cobalt Nickel Silicon Oxygen) 'Cobalt)
(deleteAtom '((1) (1) (3) (1) (1) (1)) 1)
(deleteAtom '(a aa aaa a) 'a)
(deleteAtom '(facebook apple amazon netflix google (facebook (google))) 'facebook)
(deleteAtom '(1 (2 (3 (1 (2 (3 (1 (2 (3 (1 (2 (3 1 2 3 1) 1) 2) 3) 1) 2) 3) 1) 2) 3) 1) 2) 1)