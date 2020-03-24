; 2.4.1
; a.
(let ((3a (* 3 a)))
     (+ (- 3a b) (+ 3a b))
)

; 2-arg procedure version
(define func (lambda (a b)
                     (let ((u (* 3 a)))
                          (+ (- u b)
                             (+ u b)
                          )
                     )
             )
)

; b.
(let (lst (list a b c))
     (cons (car lst) (cdr lst))
)

; 2.4.3
; a. this is ((c . b) (a . d))
(let ((x 'a) (y 'b))
      (list (let ((z 'c))
                 (cons z y)
            )
            (let ((t 'd))
                 (cons x t)
            )
       )
)

; b. this is (c b a b)
(let ((x '((a b) c)))
     (cons (let ((y (cdr x)))
                (car y)
           )
           (let ((t (car x)))
                (cons (let ((u (cdr t)))
                           (car u)
                      )
                      (cons (let ((h (car t)))
                                 h
                            )
                            (cdr t)
                      )
                )
           )
     )
)
