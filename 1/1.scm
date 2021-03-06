; 1.1

10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
; expected result:
; 10
; 12
; 8
; 3
; 6
; 19
; false - #f
; 4
; 16
; 6
; 16

; output: 
; 10
; ;Value: 10

; 1 ]=> (+ 5 3 4)
; ;Value: 12

; 1 ]=> (- 9 1)
; ;Value: 8

; 1 ]=> (/ 6 2)
; ;Value: 3

; 1 ]=> (+ (* 2 4) (- 4 6))
; ;Value: 6

; 1 ]=> (define a 3)
; ;Value: a

; 1 ]=> (define b (+ a 1))
; ;Value: b

; 1 ]=> (+ a b (* a b))
; ;Value: 19

; 1 ]=> (= a b)
; ;Value: #f

; 1 ]=> (if (and (> b a) (< b (* a b)))
;     b
;     a)
; ;Value: 4

; 1 ]=> (cond ((= a 4) 6)
;       ((= b 4) (+ 6 7 a))
;       (else 25))
; ;Value: 16

; 1 ]=> (+ 2 (if (> b a) b a))
; ;Value: 6

; 1 ]=> (* (cond ((> a b) a)
;          ((< a b) b)
;          (else -1))
;    (+ a 1))
; ;Value: 16