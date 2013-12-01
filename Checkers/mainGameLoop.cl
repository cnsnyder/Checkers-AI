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
          (UpdateBoard piece *theBoard* movelist) ;Update the board to get it ready for next player turn
          (setf playerJustWent t)
          )
          )
      
    (if (= x 1)
        (progn
          (print "Player AI goes first!")
          ;;(setf movelist (aiDecision))
          ;;(setf piece (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)))
          ;;(UpdateBoard piece movelist) ;Update the board to get it ready for next player turn
          (setf aiJustWent t)
          )
      )
    
       ;;While no one has won, we want to keep playing.
      (loop while (not (eql isThereWinner t)) do
            
            ;;If someone won then the game is over
            (setf winner (isVictor))
            (if (eql winner 0)
              (print "Player 1 has won!") 
              (setf isThereWinner t)
            )
            
            (if (eql winner 1)
              (print "The AI has won!")
              (setf isThereWinner t)
            )
            (cond ((and (eql isThereWinner nil) (eql aiJustWent t))
                      
               (print "It is now the player's turn")
                 (setf aiJustWent nil)
                 (setf playerJustWent t)
                   (setf movelist (playerDecision))
               ;;grab piece from first location in movelist since playerDecision does not return it
               (setf piece (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)))
               (updateBoard piece *theBoard* movelist)  
                   )
               ((and (eql isThereWinner nil) (eql playerJustWent t))
                 (print "It is now the AI's turn")
                 (setf playerJustWent nil)
                 (setf aiJustWent t)
                 ;;(aiDecision)
                 ;;(setf movelist (aiDecision))
                 (updateBoard piece *theBoard* movelist)
                 
                 )
              )
            
            
      )
    
      )
  )
  
  
  
  
  ;;SANDBOX
  
  ;;Psuedocode
  ;;