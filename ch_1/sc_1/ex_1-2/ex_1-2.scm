#lang sicp
; This exercise includes a couple of illegible terms
; that are likely rational numbers. I will interpret as
; (5 + (1/2) + (2 - (3 - (6 + 1/5)))) /
; (3(6 - 2)(2 - 7))
; -> (5.5 + (2 - (3 - 6.2)) / (-60)
; -> (5.5 + (2 - (-3.2)) / (-60)
; -> (5.5 + 5.2) / (-60)
; -> 10.7 / (-60)
; -> -107/600

(/
 (+ 5 (/ 1 2) (- 2 (- 3 (+ 6 (/ 1 5)))))
 (* 3 (- 6 2) (- 2 7))
)