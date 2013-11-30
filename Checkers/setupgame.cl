(defun setupGame ()
  
  ;;iterate through the board and see if one of the counts is 0 for owner
  (setf *theBoard* (initializeBoard))
  (dotimes (r 8)
    (dotimes (c 8)
      (let ((p (nth c (nth r *theBoard*))))
        (if (eq 'piece (type-of p))
            (genMoveListR (nth c (nth r *theBoard*)) *theBoard* ())
          )
        )
      )
    )
  )


