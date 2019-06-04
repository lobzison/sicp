(define (f1 n)
    (if (< n 3)
        n 
        (+  (f1 (- n 1)) 
            (* 2 (f1 (- n 2)))
            (* 3 (f1 (- n 3)))
            )))

(f1 10)
(f1 20)
(f1 3)
(f1 4)
(f1 5)

(define (f2 n)
    (define (loop x y z n)
        (if (= n 0)
        x
        (loop   y
                z
                (+ z (* 2 y) (* 3 x))
                (-1+ n))
        ))
    (loop 0 1 2 n)
)

(f2 10)
(f2 1000)

