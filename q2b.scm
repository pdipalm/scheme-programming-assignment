(define (replaceAtom lst target value) ;function definition, replaces all occurences of target in list/sublist with value
  (cond ((null? lst) ;base case, returns empty list
         '())
        ((equal? target (car lst)) ;if the first element is equal to target, construct a list with value and a recursive call to the rest of the list
         (cons value (replaceAtom (cdr lst) target value)))
        ((list? (car lst)) ;if first element is a sublist, return a list composing of a recursive call to the sublist and the rest of the outer list
         (cons (replaceAtom (car lst) target value) (cdr lst)))
        (else ;proceed as normal
         (cons (car lst) (replaceAtom (cdr lst) target value)))))


(replaceAtom '(2 1 '(1 3 4 1 '(1 7)) 3 4 5 6 '(1) 9 1) 1 99)
(replaceAtom '(a b c d a c a a) 'a 'sus)
(replaceAtom '((a b) c () d a c a a) 'a 'hi)
(replaceAtom '(((a (a)) b) c () d a c a a) 'a 'skeem)
(replaceAtom '(a b c d a c (a ((a)))a a) 'a 'n)
(replaceAtom '(11 (12) 12 11) 11 80)
(replaceAtom '(Hydrogen Lithium Iron Cobalt Nickel Silicon Oxygen) 'Cobalt 'Gallium)
(replaceAtom '((1) (1) (3) (1) (1) (1)) 1 21)
(replaceAtom '(a aa aaa a) 'a 'b)
(replaceAtom '(facebook apple amazon netflix google (facebook (google))) 'facebook 'meta)
(replaceAtom '(1 (2 (3 (1 (2 (3 (1 (2 (3 (1 (2 (3 1 2 3 1) 1) 2) 3) 1) 2) 3) 1) 2) 3) 1) 2) 1 'a)