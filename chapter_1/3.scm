; Exercise 1.2

(define (square num)
  (* num num))

(define (sum-of-squares first second)
  (+ (square first) (square second)))

(define (larger first second)
  (if (> first second) first second))

(define (largest-two-sum-of-squares first second third)
  (if (> first second)
      (sum-of-squares first (larger second third))
      (sum-of-squares second (larger second third))))

; Tests

(largest-two-sum-of-squares 1 2 3) ; Value: 13
(largest-two-sum-of-squares 3 2 1) ; Value: 13
(largest-two-sum-of-squares 4 4 4) ; Value: 32
