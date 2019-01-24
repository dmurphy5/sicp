#lang sicp
(define (square x)
  (* x x))

(define (sum-squares x y)
  (+ (square x)(square y)))


(define (sum-sq-largest-two x y z)
  (cond
         ((and (>= x z)(>= y z)) (sum-squares x y))
         ((and (>= y x)(>= z x)) (sum-squares y z))
         ((and (>= x y)(>= z y)) (sum-squares x z))))

(sum-sq-largest-two 1 2 3)