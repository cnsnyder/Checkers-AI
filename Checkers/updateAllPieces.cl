(defun updateAllPieces (theBoard) ;;this function both clears and calls genmovelistR for each pieces movelist
 ;;Generates a move list for all pieces on board
  (dotimes (r 8)
    (dotimes (c 8)
      (let ((p (nth c (nth r theBoard))))
        (if (eq 'piece (type-of p))
            (progn
              (setf (slot-value p 'movelist) ())
              (genMoveListR (nth c (nth r theBoard)) theBoard (list (slot-value (nth c (nth r theBoard)) 'location)))
              )
          )
        )
      )
    )
  )