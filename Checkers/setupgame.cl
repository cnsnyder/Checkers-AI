(defun setupGame () ;;this function is called to setup some of the initial variables to be used in the simulations and to construct the initial board

  (setf *theBoard* (initializeBoard))
  (setf *n* 0)
  (setf *entitylist* ())
  (updateAllPieces *theBoard*)
  
  )


