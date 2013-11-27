(defun updateBoard (piece theBoard movelist)
  (dotimes (x (- (length movelist) 1))
    (setf (piece-location piece) (nth (+ x 1) movelist)) ;;sets the piece location to the next location in the move list
    (setf (nth (nth 1 (piece-location piece)) (nth (nth 0 (piece-location piece)) theBoard)) piece) ;;sets the board item at the next move list location to the piece that was just "moved" there
    (setf (nth (nth 1 (nth x movelist)) (nth (nth 0 (nth x movelist)) theBoard)) nil) ;;sets the item at previous location to nil
    (let ((prevCol (nth 1 (nth x movelist))) (prevRow (nth 0 (nth x movelist))) (curCol (nth 1 (nth (+ x 1) movelist))) (curRow (nth 0 (nth (+ x 1) movelist))))
      (if (= (+ (abs (- prevCol curCol)) (abs (- prevRow curRow))) 4) ;;checking for jump 4 = jump, 2 = no jump
          (let ((killCol (/ (- prevCol curCol) 2)) (killRow (/ (- prevRow curRow))))
            (setf (nth killCol (nth killRow theBoard)) nil) ;;clears that location!!
            )
        )
      )
    )
  )

            
    