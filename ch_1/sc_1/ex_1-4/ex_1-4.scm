#lang sicp

; The following procedure chooses the + operator if
; the second argument is greater than 0 and the -
; operator otherwise.  The net effect is that it adds
; the the absolute value of the second argument to the
; first argument.

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 2)
; -> 1 + 2
; -> 1 + |2|
; 3

(a-plus-abs-b 3 -4)
; -> 3 - (-4)
; -> 3 + 4
; -> 3 + |-4|
; -> 7

(a-plus-abs-b -5 -7)
; -> -5 - (-7)
; -> -5 + 7
; -> -5 + |-7|
; -> 2

(a-plus-abs-b -9 -5)
; -> -9 - (-5)
; -> -9 + 5
; -> -9 + |-5|
; -> -4