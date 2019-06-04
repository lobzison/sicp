(define (fast-exp b n)
    (define (even? n)
        (= (remainder n 2) 0))
    (define (loop b n a)
        (cond ((= n 0) a)
            ((even? n) (loop (* b b) (/ n 2) a))
            (else (loop b (- n 1) (* a b)))
            ))
        (loop b n 1)
        )


(fast-exp 5 10)
