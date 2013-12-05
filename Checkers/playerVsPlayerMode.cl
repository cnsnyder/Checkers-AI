(defun playerVsPlayerMode ()
  (setupGame)
    
    (setf playerJustWent nil)
    (setf player2JustWent nil)
    (setf isThereWinner nil)
    (setf *random-state* (make-random-state t))
    (setf x (random 2))
    (if (= x 0)
        (progn
          (print "Player 1 goes first!")
          (setf movelist (playerDecisionPVP *theBoard* x)) 
          ;;grab piece from first location in movelist since playerDecision does not return it
          (setf piece (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)))
          
          (UpdateBoard piece *theBoard* movelist) ;Update the board to get it ready for next player turn
          (updateAllPieces *theBoard*)
          (setf playerJustWent t)

          )
          )
      
    (if (= x 1)
        (progn
          (print "Player 2 goes first!")
          (setf movelist (playerDecisionPVP *theBoard* x)) 
          ;;grab piece from first location in movelist since playerDecision does not return it
          (setf piece (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)))
          (UpdateBoard piece *theBoard* movelist) ;Update the board to get it ready for next player turn
          (updateAllPieces *theBoard*)
          (setf player2JustWent t)

          )
      )
    
  ;;While no one has won, we want to keep playing.
  

      (loop while (eql isThereWinner nil) do
         
            ;;If someone won then the game is over
            (setf winner (isVictor))
            (if (eql winner 0)
                (progn
              (print "Player 1 has won!") 
              (setf isThereWinner t)
            ))
            
            (if (eql winner 1)
                (progn
                  (print "Player 2 has won!")
                  (setf isThereWinner t)
                  )
              )
            (cond ((and (eql isThereWinner nil) (eql player2JustWent t))
                      
               (print "It is now Player one's turn")
                 (setf player2JustWent nil)
                 (setf playerJustWent t)
                   (setf movelist (playerDecisionPVP *theBoard* 0))
               ;;grab piece from first location in movelist since playerDecision does not return it
               (setf piece (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)))
               (updateBoard piece *theBoard* movelist) 
               (updateAllPieces *theBoard*)
                   )
               ((and (eql isThereWinner nil) (eql playerJustWent t))
                 (print "It is now Player two's turn")
                 (setf playerJustWent nil)
                 (setf player2JustWent t)
                 (setf movelist (playerDecisionPVP *theBoard* 1))
                 (setf piece (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)))
                 (updateBoard piece *theBoard* movelist)
                 (updateAllPieces *theBoard*)
                 
                 )
              )
            
            
      )
    
      
  )

  
 