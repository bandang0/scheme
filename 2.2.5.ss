(define lists
  ;;; This is the way to do it with lists.
  ;;; But it doesn't work because list cannot
  ;;; return a dotted list...
  (list
    (list 'a 'b)
    (list
      (list
        (list 'c)
        (list 'd)
      )
      (list '())
    )
  )
)

(define conss
  ;;; This does it with cons, and the answer is correct.
  (cons
    (cons 'a 'b)
    (cons
      (cons
        (cons 'c
          (cons 'd '())
        )
        (cons '() '())
      )
      '()
    )
  )
)
