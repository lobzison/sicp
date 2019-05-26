; Define a procedure that 
; takes three numbers as arguments 
; and returns the sum of the squares 
; of the two larger numbers.

(define (sum-sqrt-2-largest n1 n2 n3)
    (define (sum-sqrt x y)
        (+ (square x) (square y)))
    (cond ((and (> n1 n3) (> n2 n3))(sum-sqrt n1 n2))
          ((and (> n1 n2) (> n3 n2))(sum-sqrt n1 n3))
          (else (sum-sqrt n2 n3))
    )
    )

(= 
    (sum-sqrt-2-largest 1 2 3)
    13)
(=
    (sum-sqrt-2-largest 3 3 3)
    18)
(=
    (sum-sqrt-2-largest 4 3 2)
    25)
