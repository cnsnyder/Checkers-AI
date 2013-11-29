(defun generateMoves (theBoard)
  (dotimes (r (length theBoard))
    (dotimes (c (length theBoard)))
    (let ((curPiece))
      (setf curPiece (nth c (nth r theBoard)))
      (if (piece-p curPiece)
          (progn
            (setf (piece-movelist curPiece) ()) ;;reset move list for given piece
            (mover piece theBoard ())
            )
        (print "NonPiece passed to move function")
        )
      )


    
  
    
        