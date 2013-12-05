;;; Moves the piece at pieceLocation to end Location on a given board
;;; Locations are in the form (x y)

(defun move (pieceLocation endLocation board)
  (updateBoard (boarditemat board pieceLocation) board (list pieceLocation endLocation)))

;;Returns if a piece can jump without accessing its canjump property
(defun piece-can-jump (piece)
  (if (eq 'piece (type-of piece))
      (let ((movelist (slot-value piece 'movelist)))
        (if (eq movelist nil) nil
          (if (eq (abs (- (car (car (car movelist))) (car (cadr (car movelist))))) 2) T nil)
          )
        )
    )
  )
  