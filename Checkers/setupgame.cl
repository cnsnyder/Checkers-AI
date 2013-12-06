(defun setupGame ()

  (setf *theBoard* (initializeBoard))
  (setf *n* 0)
  (setf *entitylist* ())
  (updateAllPieces *theBoard*)
  
  )


