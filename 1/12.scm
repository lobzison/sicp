(define (pascal r c)
    (cond
        ((or (= c 1) (= r c)) 1)
        ((or (> c r) (< c 1)) 0)
        (else 
            (+ (pascal (-1+ r) (-1+ c))
                (pascal (-1+ r) c)))
    )
    )


(pascal 5 3)
