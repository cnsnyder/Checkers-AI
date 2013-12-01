(defun setupGame ()
  
  ;;iterate through the board and see if one of the counts is 0 for owner
  (setf *theBoard* (initializeBoard))
  (updateAllPieces)
  )


