#lang sicp

(define (square x) (* x x))
(define (abs x)
  (if (< x 0)
      (- x)
      x))
(define (average x y)
  (/ (+ x y) 2))
(define (improve guess x)
  (average guess (/ x guess)))

; original good-enough?
; continues until the difference of the square of the
; guess and x is less than 0.001
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

; new good-enough?
; continues until the change in guess is less than 0.1%
(define (new-good-enough? previous-guess guess)
  (< (/ (abs (- previous-guess guess)) guess) 0.001))
(define (new-sqrt-iter previous-guess guess x)
  (if (new-good-enough? previous-guess guess)
      guess
      (new-sqrt-iter guess
                     (improve guess x)
                     x)))

; 0.0001^0.5 = 0.01

(sqrt-iter 1 0.0001)
; -> 0.03230844833048122

(new-sqrt-iter 0 1 0.0001)
; -> 0.010000000025490743

; 100000000000000^0.5 = 10000000

; (sqrt-iter 1 100000000000000.0)
; is stuck in an infinite loop

(new-sqrt-iter 0 1 100000000000000.0)
; -> 100000 + some small fraction