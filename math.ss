; inverse function
(define reciprocal
  (lambda (n)
          (if (or (not (number? n))
                  (= n 0)
              )
              "oops!"
              (/ 1 n)
          )
  )
)

; square function
(define square
  (lambda (x)
          (* x x)
  )
)
