(define (abslist lst) ;definition for abslist function takes list as param, returns a list of the absolute value of all memebers
  (if (null? lst) ;base case returns an empty list when list is empty
      '()
      (cons (abs (car lst)) (abslist (cdr lst))))) ;recursive construction of the absolute value list, 1st value is abs'd and appended to output list and recrusion resumes for the rest of the list


(abslist '(-1 -9 8 23 29 -90 -21 87 -4 -99))
(abslist '(-12))
(abslist '(-100000 -100 -1234 -90))
(abslist '(1 2 3 4 5))
(abslist '())
(abslist '(0 -1 2 -3 4 -5 6 -7 8 -9))
(abslist '(-0 -11))
(abslist '(-3.14159265 -0.111359 19 -90))
(abslist '(-01 0.001 -023 -8))
(abslist '(-.2 21 -4 -99 808))
(abslist '(-1 -10 -100 -1000 -100000 -1000000 -10000000))