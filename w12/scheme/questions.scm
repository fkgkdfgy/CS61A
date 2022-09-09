(define (caar x) (car (car x)))

(define (cadr x) (car (cdr x)))

(define (cdar x) (cdr (car x)))

(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement
(define (zip pairs) 'replace-this-line)

; ; Problem 15
; ; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15
  (begin (define (inner_helper expr index)
           (cond 
             ((eq? expr nil)
              nil)
             (else
              (cons (cons index (car expr))
                    (inner_helper (cdr expr) (+ index 1))))))
         (inner_helper s 0)))

; END PROBLEM 15
; ; Problem 16
; ; Merge two lists LIST1 and LIST2 according to COMP and return
; ; the merged lists.
(define (merge comp list1 list2)
  ; BEGIN PROBLEM 16
  (begin (define (inner_helper comp expr1 expr2)
           (cond 
             ((and (eq? expr1 nil) (eq? expr2 nil))
              nil)
             ((eq? expr1 nil)
              (cons (car expr2)
                    (inner_helper comp expr1 (cdr expr2))))
             ((eq? expr2 nil)
              (cons (car expr1)
                    (inner_helper comp (cdr expr1) expr2)))
             ((eq? (comp (car expr1) (car expr2)) #t)
              (cons (car expr1)
                    (inner_helper comp (cdr expr1) expr2)))
             (else
              (cons (car expr2)
                    (inner_helper comp expr1 (cdr expr2))))))
         (inner_helper comp expr1 expr2)))

; END PROBLEM 16
(merge < '(1 5 7 9) '(4 8 10))

; expect (1 4 5 7 8 9 10)
(merge > '(9 7 5 1) '(10 8 4 3))

; expect (10 9 8 7 5 4 3 1)
; ; Problem 17
(define (nondecreaselist s)
  ; BEGIN PROBLEM 17
  (define (inner_helper expr)
    (cond 
      ((eq? expr nil)
       nil)
      (else
       (begin (define sub_list (inner_helper (cdr expr)))
              (if (or (eq? (car sub_list) nil)
                      (> (car expr) (car (car sub_list))))
                  (cons (car expr) sub_list)
                  (begin (define new_head_list
                                 (cons (car expr) (car sub_list)))
                         (cons new_head_list (cdr sub_list))))))))
  (inner_helper s))

; END PROBLEM 17
; ; Problem EC
; ; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))

(define define? (check-special 'define))

(define quoted? (check-special 'quote))

(define let? (check-special 'let))

; ; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond 
    ((atom? expr)
     ; BEGIN PROBLEM EC
     'replace-this-line
     ; END PROBLEM EC
    )
    ((quoted? expr)
     ; BEGIN PROBLEM EC
     'replace-this-line
     ; END PROBLEM EC
    )
    ((or (lambda? expr) (define? expr))
     (let ((form (car expr))
           (params (cadr expr))
           (body (cddr expr)))
       ; BEGIN PROBLEM EC
       'replace-this-line
       ; END PROBLEM EC
     ))
    ((let? expr)
     (let ((values (cadr expr))
           (body (cddr expr)))
       ; BEGIN PROBLEM EC
       'replace-this-line
       ; END PROBLEM EC
     ))
    (else
     ; BEGIN PROBLEM EC
     'replace-this-line
     ; END PROBLEM EC
    )))
