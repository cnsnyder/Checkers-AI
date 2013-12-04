;;; Moves the piece at pieceLocation to end Location on a given board
;;; Locations are in the form (x y)

(defun move (pieceLocation endLocation board)
  (updateBoard (boarditemat board pieceLocation) board (list pieceLocation endLocation)))