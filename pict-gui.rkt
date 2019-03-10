#lang racket/gui

(provide (contract-out
           [show-image-snip (->* ((is-a?/c image-snip%))
                                 (#:title string?)
                                 any)]))

; Shows an image-snip%, produced by sicp-pict paint, in a GUI window. 
(define (show-image-snip snip
                         #:title [title "Window"])
  (let* ([bmp (send snip get-bitmap)]
         [w (send bmp get-width)]
         [h (send bmp get-height)]
         [f (new frame%
                 [label title]
                 [width w] 
                 [height h])])
    (new canvas%
         [parent f]
         [paint-callback
          (lambda (canvas dc)
            (send dc draw-bitmap bmp 0 0))])
    (send f show #t)))
