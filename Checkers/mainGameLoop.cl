(defun mainGameLoop()
  (setupGame)
  (let (winner) 
    ;;(loop while (not (eql winner t))  LOOP BEGINS LATER AFTER SETUP
    ;;while not winner
    (setf aiJustWent nil)
    (setf playerJustWent nil)
    (setf isThereWinner nil)
    (setf *random-state* (make-random-state t))
    (setf x (random 2))
    (if (= x 0)
        (progn
          (print "Player 1 goes first!")
          (setf movelist (playerDecision)) 
          ;;grab piece from first location in movelist since playerDecision does not return it
          (setf piece (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)))
          (UpdateBoard piece movelist) ;Update the board to get it ready for next player turn
          (setf playerJustWent t)
          )
          )
      
    (if (= x 1)
        (progn
          (print "Player AI goes first!")
          (UpdateBoard piece movelist) ;Update the board to get it ready for next player turn
          (setf aiJustWent t)
          )
      )
      
      (loop while (not (eql isThereWinner t)) do
            ;;While no one has won, we want to keep playing.
            
            (setf winner (isVictor))
            (if (eql winner 0)
              (print "Player 1 has won!") 
              (setf isThereWinner t)
            )
            
            (if (eql winner 1)
              (print "The AI has won!")
              (setf isThereWinner t)
            )
            
            (if (and (eql winner nil) (eql aiJustWent t))
               (progn
               (print "It is now the player's turn")
               (setf aiJustWent nil)
               (playerDecision)
              ))
            (if (and (eql winner nil) (eql playerJustWent t))
               (progn
               (print "It is now the AI's turn")
               (setf playerJustWent nil)
               ;;(aiDecision)
            ))
            
            ;;If someone won then the game is over
      )
    
      )
    )
  
  
  
  
  ;;SANDBOX
  
  ;;Psuedocode
  ;;