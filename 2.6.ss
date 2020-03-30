; 2.6.1
(define double-any
        (lambda (f x)
                (f x
                   x
                )
        )
)

; (double-any double-any double-any) => infinite recursion...

; 2.6.2
; 1st way
(define compose
        (lambda (f g)
                (lambda (x)
                        (f (g x))
                )
        )
)

; 2nd way
(define (compose-bis f g)
        (lambda (x)
                (f (g x))
        )
)

; 3rd way, only works when evaluating the composed function directly
(define ((compose-ter f g) x)(f (g x)))

; 2.6.3
(define (compose-four f g h j) (lambda (x) (f (g (h (j x))))))

(define caaaar (compose-four car car car car))
(define caaadr (compose-four car car car cdr))
(define caadar (compose-four car car cdr car))
(define caaddr (compose-four car car cdr cdr))
(define cadaar (compose-four car cdr car car))
(define cadadr (compose-four car cdr car cdr))
(define caddar (compose-four car cdr cdr car))
(define cadddr (compose-four car cdr cdr cdr))
(define cdaaar (compose-four cdr car car car))
(define cdaadr (compose-four cdr car car cdr))
(define cdadar (compose-four cdr car cdr car))
(define cdaddr (compose-four cdr car cdr cdr))
(define cddaar (compose-four cdr cdr car car))
(define cddadr (compose-four cdr cdr car cdr))
(define cdddar (compose-four cdr cdr cdr car))
(define cddddr (compose-four cdr cdr cdr cdr))
