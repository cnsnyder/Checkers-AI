(defun isVictor( &optional currentPlayer)
  ;;iterate through board and count the owners, if one side of board has no pieces
  ;;then that side lost

  (setf owner1PiecesCount 0)
  (setf owner2PiecesCount 0)
  ;; Shawn's obligatory change
  (let ((winner ()))
    (dotimes (r 8)
      (dotimes (c 8)    
        (let ((p (nth c (nth r *theBoard*))))
          (if (eq 'piece (type-of p))    ;;validates that there is a piece on that spot on the board
              (progn ;;counts pieces for each side
                (if (= (slot-value p 'owner) 0) 
                    (setf owner1PiecesCount (+ owner1PiecesCount 1)))
                (if (= (slot-value p 'owner) 1)
                    (setf owner2PiecesCount (+ owner2PiecesCount 1)))
                )
            )
          )
        )
      )
    
    (if (not (eql currentPlayer nil))
        (progn 
          (setf movelist (allmoves currentPlayer *theBoard*))
          (if (eql movelist nil)
              (progn
                (if (eql currentPlayer 0)
                    (setf winner 1))
                (if (eql currentPlayer 1)
                    (setf winner 0)))
            (progn ;;else
              (if (= owner1PiecesCount 0)
                  (setf winner 1))
              (if (= owner2PiecesCount 0)
                  (setf winner 0))
              )
            ))
      (progn ;;else
        (if (= owner1PiecesCount 0)
            (setf winner 1))
        (if (= owner2PiecesCount 0)
            (setf winner 0))
        )
      )
    

    
    (setf winner winner))   ;;return the player who won, if its nil then no one won
    
  )