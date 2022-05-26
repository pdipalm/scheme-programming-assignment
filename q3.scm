(define (bubble-swap lst) ;defintion for bubble swapping function, takes list as param
  (if (null? (cdr lst)) ;if the rest of the list is null, return the list
      lst
      (if (> (car lst) (cadr lst)) ;if the first item of the list is greater than the second
          (cons (cadr lst) (bubble-swap (cons (car lst) (cddr lst)))) ;this element is not locally sorted, swap and move on
          (cons (car lst) (bubble-swap (cdr lst)))))) ;locally sorted, proceed as normal

(define (bubblesortR lst n) ;recursive call to bubble sort, when list is unsorted, recurses again, when sorted, returns list
  (if (= n 1)
      lst
      (bubblesortR (bubble-swap lst) (- n 1))))

(define (bubblesort lst) ;outer function call
  (bubblesortR lst (length lst)))

(bubblesort '(9 21 3 4 90 29 -1 50 -12 100 7))
(bubblesort '(46 51 14 16 95 17 50 74 35 94))
(bubblesort '(75 99 -24 56 34 53 -18 46 91 57))
(bubblesort '(12 11 63 80 48 16 61 15 19 83))
(bubblesort '(-6 70 31 42 -100 8 8 51 97 78))
(bubblesort '(48 99 69 64 79 89 51 22 14 86))
(bubblesort '(44 86 69 62 16 -4 92 41 56 -51))
(bubblesort '(46 -19 58 98 52 38 47 19 66 90))
(bubblesort '(50 3 -1 79 38 -70 79 92 -52 85))
(bubblesort '(96 8 -84 -75 20 33 75 94 88 97))
(bubblesort '(86 75 -6 30 79 84 60 29 6 -28))