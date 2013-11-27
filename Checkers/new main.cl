(defstruct piece
  owner
  location
  canJump
  isKing
  moveList
  (isOnBoard t))


(defun setupBoard ()
  (setq a (make-piece :owner 0 :location '(0 0) :canjump f :isKing f
  (setq piecelist '((
  (setq 
(defun move (piece theBoard)
  (let ((myBoard theBoard))
  (if (piece-p piece)
      (progn
        (if (piece-isKing piece)
            (progn
              
              )
        ))
    (print "Move function not passed a piece"))
  
  
