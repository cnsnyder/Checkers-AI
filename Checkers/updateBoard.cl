(defun updateBoard! (piece theBoard movelist) ;;destructive 
  (dotimes (x (- (length movelist) 1))
    (setf (slot-value piece 'location) (nth (+ x 1) movelist)) ;;sets the piece location to the next location in the move list
    (setf (nth (nth 1 (slot-value piece 'location)) (nth (nth 0 (slot-value piece 'location)) theBoard)) piece) ;;sets the board item at the next move list location to the piece that was just "moved" there
    (setf (nth (nth 1 (nth x movelist)) (nth (nth 0 (nth x movelist)) theBoard)) nil) ;;sets the item at previous location to nil
    (let ((prevCol (nth 1 (nth x movelist))) (prevRow (nth 0 (nth x movelist))) (curCol (nth 1 (nth (+ x 1) movelist))) (curRow (nth 0 (nth (+ x 1) movelist))))
      (if (= (+ (abs (- prevCol curCol)) (abs (- prevRow curRow))) 4) ;;checking for jump 4 = jump, 2 = no jump
          (let ((killCol (/ (+ prevCol curCol) 2)) (killRow (/ (+ prevRow curRow) 2)))
            (setf (nth killCol (nth killRow theBoard)) nil) ;;clears that location!!(defun make-king (piece)
            )
            )
        )
    )
  (makekings theBoard)
  )

(defun updateBoard (Orgpiece OrgtheBoard Orgmovelist) ;;safe
  (let ((piece (make-instance 'piece :owner (slot-value Orgpiece 'owner) :location (slot-value Orgpiece 'location) :canJump (slot-value Orgpiece 'canJump) :isKing (slot-value Orgpiece 'isKing) :movelist (slot-value Orgpiece 'movelist)))
    (theBoard OrgtheBoard)
        (movelist (copy-list Orgmovelist)))
    (setf 
  (dotimes (x (- (length movelist) 1))
    (setf (slot-value piece 'location) (nth (+ x 1) movelist)) ;;sets the piece location to the next location in the move list
    (setf (nth (nth 1 (slot-value piece 'location)) (nth (nth 0 (slot-value piece 'location)) theBoard)) piece) ;;sets the board item at the next move list location to the piece that was just "moved" there
    (setf (nth (nth 1 (nth x movelist)) (nth (nth 0 (nth x movelist)) theBoard)) nil) ;;sets the item at previous location to nil
    (let ((prevCol (nth 1 (nth x movelist))) (prevRow (nth 0 (nth x movelist))) (curCol (nth 1 (nth (+ x 1) movelist))) (curRow (nth 0 (nth (+ x 1) movelist))))
      (if (= (+ (abs (- prevCol curCol)) (abs (- prevRow curRow))) 4) ;;checking for jump 4 = jump, 2 = no jump
          (let ((killCol (/ (+ prevCol curCol) 2)) (killRow (/ (+ prevRow curRow) 2)))
            (setf (nth killCol (nth killRow theBoard)) nil) ;;clears that location!!(defun make-king (piece)
            )
        )
      )
    )
    (makekings theBoard)
    (setf theBoard OrgtheBoard)
    theBoard ;;return the modified board
    )
    )
  )
  
      
  