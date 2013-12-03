(defun score (owner theBoard)
  (let ((ownerscore 0) (kingvalue 1.5) (piecevalue 1)) ;;allow for weightings of pieces to be changed
    (dotimes (r 8)
      (dotimes (c 8)
        (let ((p (nth c (nth r theBoard))))
          (if (eq 'piece (type-of p)) ;;make sure the item is a piece
              (if (eq owner (slot-value p 'owner)) 
                  (if (slot-value p 'isKing)   ;;add for pieces owned by the provided owner
                      (setf ownerscore (+ ownerscore kingvalue))
                    (setf ownerscore (+ ownerscore piecevalue)))
                (if (slot-value p 'isKing)     ;;subtract for pieces not owned by the provided owner
                      (setf ownerscore (- ownerscore kingvalue))
                    (setf ownerscore (- ownerscore piecevalue)))
                  )
            )
          )
        )
      )
    (setf ownerscore ownerscore) ;;return ownerscore
    )
  )