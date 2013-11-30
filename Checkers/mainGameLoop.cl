(defun mainGameLoop()
  (let winner
  ;;while not winner 
  (setf *random-state* (make-random-state t));
  (setf x (random 2));
  (if (= x 0)
      (print "Player 1 goes first!");
      (setf *theBoard* (playerDecision theBoard)); 
      )
  (if (= x 1)
      (print "Player 2 goes first!");
      (setf *theBoard* (AIDecision theBoard));
    ) 
    
   )
  )