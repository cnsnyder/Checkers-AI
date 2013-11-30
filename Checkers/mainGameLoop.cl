(defun mainGameLoop()
  (setupGame)
  (let (winner) 
    ;;(loop while (not (eql winner t))  LOOP BEGINS LATER AFTER SETUP
          ;;while not winner
    (setf *random-state* (make-random-state t))
    (setf x (random 2));
    (if (= x 0)
        (progn
          (print "Player 1 goes first!")
          ;;(setf *theBoard* (playerDecision theBoard)) 
          
          )
      )
    (if (= x 1)
        (progn
          (print "Player 2 goes first!")
          ;;(setf *theBoard* (AIDecision theBoard))
          ) 
    
      )
    )
  
  
  
  ;;SANDBOX
  
  ;;Psuedocode
  ;;