#lang sicp

(define (square x) (* x x))
(define (sum-squares x y) (+ (square x) (square y)))
(define (get-larger x y) (if (> x y) x y))

; sslp stands for Sum Squares of Largest Pair
(define (sslp x y z)
  (if (> x y)
      (sum-squares x (get-larger y z))
      (sum-squares y (get-larger x z))
      )
  )

(sslp 1 1 1)
; -> 1^2 + 1*2
; -> 2

(sslp 3 1 4)
; -> 3^2 + 4^2)
; -> 25

(sslp 5 4 -7)
; -> 5^2 + 4^2
; -> 41

(sslp -19 -7 -5)
; -> (-7)^2 + (-5)^2)
; -> 74