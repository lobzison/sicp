(define (good-enough? guess x)
    (define fract (/ x 1000))
    (< (abs (- guess x))
        fract
    ))

; good for small numbers bad for big