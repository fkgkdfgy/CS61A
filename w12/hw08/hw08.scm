(define (cadr s) (car (cdr s)))
(define (caddr s) (car (cdr (cdr s))))

; derive returns the derivative of EXPR with respect to VAR
(define (derive expr var)
  (cond ((number? expr) 0)
        ((variable? expr) (if (same-variable? expr var) 1 0))
        ((sum? expr) (derive-sum expr var))
        ((product? expr) (derive-product expr var))
        ((exp? expr) (derive-exp expr var))
        (else 'Error)))

; Variables are represented as symbols
(define (variable? x) (symbol? x))
(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

; Numbers are compared with =
(define (=number? expr num)
  (and (number? expr) (= expr num)))

; Sums are represented as lists that start with +.
(define (make-sum a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2)) (+ a1 a2))
        (else (list '+ a1 a2))))
(define (sum? x)
  (and (list? x) (eq? (car x) '+)))
(define (first-operand s) (cadr s))
(define (second-operand s) (caddr s))

; Products are represented as lists that start with *.
(define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2)) (* m1 m2))
        (else (list '* m1 m2))))
(define (product? x)
  (and (list? x) (eq? (car x) '*)))
; You can access the operands from the expressions with
; first-operand and second-operand
(define (first-operand p) (cadr p))
(define (second-operand p) (caddr p))

(define (derive-sum expr var)
 ;'YOUR-CODE-HERE
 (cond ((sum? expr) (make-sum (derive (first-operand expr) var)
		       (derive (second-operand expr) var)
		       )
		    )
	(else 0)
	)
)

(define (derive-product expr var)
  ;'YOUR-CODE-HERE
  (cond ((product? expr) (make-sum 
			   (make-product (derive (first-operand expr) var)
			    		 (second-operand expr)
					 )
			    (make-product  (derive (second-operand expr) var)
			       		   (first-operand expr)
			                 )
	 		 	   )
			 )
	(else 0)
    	)
)

; Exponentiations are represented as lists that start with ^.
(define (make-exp base exponent)
  ;'YOUR-CODE-HERE
  (define recur_mul (lambda (x y) (if (= y 0) 1 (* x (recur_mul x (- y 1))))))
  (cond ((and (number? base) (= base 0)) 0)
    	((and (number? exponent) (= exponent 0)) 1)
	((and (number? base) (number? exponent)) (recur_mul base exponent))
	()
	(else (list '^ base exponent))
    	)
)

(define (exp? expr)
  ;'YOUR-CODE-HERE
  (if (and (list? expr) (eq? (car expr) '^))
      #t
      #f
      )
)

(define x^2 (make-exp 'x 2))
(define x^3 (make-exp 'x 3))

(define (derive-exp exp var)
  'YOUR-CODE-HERE
)

