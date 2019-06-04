(define (fast-mult a b)
    (define (double n)
        (+ n n))
    (define (halve n)
        (/ n 2))
    (define (even? x)
        (= (remainder x 2) 0))
    (define (loop a b acc)
        (cond ((= b 1) (+ a acc))
            ((even? b) (loop (double a) (halve b) acc))
            (else (loop a (- b 1) (+ acc a))))    
        )
    (loop a b 0)

)

(fast-mult 10 5)

(fast-mult 100 5000)