(define (filter-lst fn lst)
  'YOUR-CODE-HERE
  (cond 
    ((null? lst)
     nil)
    ((fn (car lst))
     (cons (car lst) (filter-lst fn (cdr lst))))
    (else
     (filter-lst fn (cdr lst)))))

; ;; Tests
(define (even? x) (= (modulo x 2) 0))

(filter-lst even? '(0 1 1 2 3 5 8))

; expect (0 2 8)
(define (interleave first second)
  'YOUR-CODE-HERE
  (cond 
    ((and (null? first) (null? second))
     (list))
    ((or (> (car first) (car second)) (null? first))
     (list (car second)
           (interleave first (cdr second))))
    (else
     (list (car first) (interleave (cdr first) second)))))

(interleave (list 1 3 5) (list 2 4 6))

; expect (1 2 3 4 5 6)
(interleave (list 1 3 5) nil)

; expect (1 3 5)
(interleave (list 1 3 5) (list 2 4))

; expect (1 2 3 4 5)
(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (cond 
    ((= n 1)
     (+ start (term n)))
    (else
     (+ (term n)
        (accumulate combiner start (- n 1) term)))))

(define (no-repeats lst)
  'YOUR-CODE-HERE
  (define (in x lst)
    (cond 
      ((null? lst)
       #f)
      (else
       (or (= x (car lst)) (in x (cdr lst)))))
    (define (helper lst seen)
      (cond 
        ((null? lst)
         nil)
        ((in (car lst) seen)
         (begin (helper (cdr lst) seen)))
        (else
         (begin (cons (car lst)
                      (helper (cdr lst) (cons (car lst) seen)))))))
    (helper lst (list))))
