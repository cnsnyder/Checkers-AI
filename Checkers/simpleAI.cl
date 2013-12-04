;;; Simple AI takes in a board and updates the board with a random move

(defun simple-ai (board)
  (let* ((aiColor 1)
         (movelist (allmoves aiColor board))
         (randomMove (nth (random (length movelist)) moveList))
         (piece (boardItemAt board (car randomMove))))
    (print randomMove)
    (print moveList)
    (updateBoard piece board randomMove)))
  