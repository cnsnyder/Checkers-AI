;;; Simple AI takes in a board and the color of the ai player (1 or 0) and moves a random piece

(defun simple-ai (board aicolor)
  (updateAllPieces board)
  (let* ((movelist (allmoves aiColor board)))
    (if (> (length movelist) 0)
    (let* ((randomMove (nth (random (length movelist)) moveList)) (piece (boardItemAt board (car randomMove))))
    randomMove
      )
      '(((7 7) (0 0))) ;;return the sentinal value for AI lost
    )
    )
  )
  