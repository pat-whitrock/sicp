; Exercise 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; In order to evaluate a combination, we must first evaluate its subexpressions.
; Those subexpressions include both the operator (a procedure) and its operands
; (argument(s)).
; In the above combination, we must evaluate a subexpression before its return
; value (+ or -), a procedure, can be applied to the arguments (a and b).
