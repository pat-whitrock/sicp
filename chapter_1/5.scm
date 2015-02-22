; Exercise 5

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; Applicative-Order Evaluation

; The interpreter will evaluate each of the combination's subexpressions before
; evaluating the combintaion. When the interpreter attempts to evaluate
; (test 0 (p)), (p), will recursively evaluate to (p) and (test 0 (p)) will
; never be fully evaluated.

; Normal-Order Evaluation

; The interpreter will not attempt to evaluate the combination's operands until
; they are needed. It will substitute operand expressions for parameters until
; the combination is expressed only through primitive operators and then
; evalute the expression. Since the if's predicate expression (= x 0) will evaluate
; truthfully, its alternative clause will never be evaluated and never have the
; opportunity to enter an infinitely recursive loop.
