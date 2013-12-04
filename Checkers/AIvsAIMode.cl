;;TODO: Test this function! Currently all levels of AI do not work so this hasn't been tested throughly!
(defun AIvsAIMode(ai1Level ai2Level)
  (setupGame)

    (setf aiJustWent nil)
    (setf ai2JustWent nil)
    (setf isThereWinner nil)
    (setf allPossibleMoves nil)
    (setf *random-state* (make-random-state t))
    (setf x (random 2))
    (if (= x 0)
        (progn
          (print "AI 1 goes first!")
          (if (= ai1Level 1)
              (simple-ai *theBoard* 0))
          (displayBoard *theBoard*)
          (sleep 2)
          (setf ai1JustWent t)
          )
      )
      
    (if (= x 1)
        (progn
          (print "AI 2 goes first!")
          (if (= ai2Level 1)
              (simple-ai *theBoard* 1))
          (displayBoard *theBoard*)
          (sleep 2)
          (setf ai2JustWent t)
          )
      )
    
       ;;While no one has won, we want to keep playing.
    (loop while (eql isThereWinner nil) do
            
            ;;If someone won then the game is over
          (setf winner (isVictor))
          (if (eql winner 0)
              (progn
                (print "AI 1 has won!") 
                (setf isThereWinner t))
            )
            
          (if (eql winner 1)
              (progn
                (print "AI 2 has won!")
                (setf isThereWinner t))
            )
          (cond ((and (eql isThereWinner nil) (eql ai1JustWent t))
                      
                 (print "It is now AI 2's turn")
                 (if (= ai2Level 1)
                     (simple-ai *theBoard* 1))  
                 (displayBoard *theBoard*)
                 (sleep 2)
                 (setf ai1JustWent nil)
                 (setf ai2JustWent t)
                 )
                ((and (eql isThereWinner nil) (eql ai2JustWent t))
                 (print "It is now AI 1's turn")
                 (if (= ai1Level 1)
                     (simple-ai *theBoard* 0))
                 (displayBoard *theBoard*)
                 (sleep 2)
                 (setf ai2JustWent nil)
                 (setf ai1JustWent t)
                 
                 )
                )
            
            
          )
    
      )

  
  