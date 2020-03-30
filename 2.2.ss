; 2.2.5
(define lists
  ; this is the way to do it with lists
  ; but it doesn't work because list cannot
  ; return a dotted list...
  (list
    (list 'a 'b)
    (list (list (list 'c)
                (list 'd)
          )
          (list '())
    )
  )
)

(define conss
  ; this does it with cons, and the answer is correct
  (cons (cons 'a 'b)
        (cons (cons (cons 'c
                          (cons 'd '())
                    )
                    (cons '() '())
              )
              '()
        )
  )
)

; 2.2.7
(define x '((a b) (c d)))
(display (car x))                   ; (a b)
(display (car (car x)))             ; a
(display (cdr (car x)))             ; (b)
(display (car (cdr (car x))))       ; b
(display (cdr (cdr (car x))))       ; ()
(display (cdr x))                   ; ((c d))
(display (car (cdr x)))             ; (c d)
(display (car (car (cdr x))))       ; c
(display (cdr (car (cdr x))))       ; (d)
(display (car (cdr (car (cdr x))))) ; d
(display (cdr (cdr (car (cdr x))))) ; ()
