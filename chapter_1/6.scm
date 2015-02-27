; Exercise 6

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; What happens when Alyssa attempts to use this to compute square roots? Explain.

; Due to the interpreter's applicative-order evaluation, sqrt-iter will not be
; able to evaluate. When using the new-if procedure, the interpreter will attempt
; to evaluate each of its operands, the second of which is the sqrt-iter
; procedure. This recursion does not occur when we use if because if is a
; special form, not a procedure, so it will not evaluate its operands in order
; first. Instead, it will evaluate the predicate and then evaluate either the
; then-clause or the else-clause. Eventually, the predicate will evaluate to #t
; and the then-clause will be evaluated, preventing the infinite recursion
; we encounter with new-if.
