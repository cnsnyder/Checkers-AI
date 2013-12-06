(defun mainMenu()
  (setupgame)
  (setf validInputMode nil)
  (setf validInputChoicePVAI nil)
  (setf validInputChoiceAIVAIPlayer1 nil)
  (setf validInputChoiceAIVAIPlayer2 nil)
  (setf ai1Level nil)
  (setf ai2Level nil)
  (loop while (eql validInputMode nil) do
        (print "Welcome to Checkers 2: Electric Boogaloo")
        (print "Choose a game mode!")
        (print "1. Player vs. AI")
        (print "2. Player vs. Player")
        (print "3. AI vs AI")
        (setf choice (read))
        (print choice)
        (if (= choice 1)
            (progn
              (setf validInputMode t)
              (setf *entitylist* (append *entitylist* (list '(playerDecisionPVP *theBoard* 0))))
              (loop while (eql validInputChoicePVAI nil) do
                    
                    (print "You have selected Player vs. AI")
                    (print "What difficulty would you like your AI opponent to be?")
                    (print "1.Random Movements (Easy)")
                    (print "2.Greedy (Normal)")
                    (print "3.Minimax (Hard)")
                    (setf aiChoice (read))
                    (if (= aiChoice 1)
                        (progn
                          (setf *entitylist* (append *entitylist* (list '(simple-ai *theBoard* 1))))
                          (setf validInputChoicePVAI t)
                          ))
                    (if (= aiChoice 2)
                        (progn
                          (setf *entitylist* (append *entitylist* (list '(aiDecision *theBoard* 1 0))))
                          (setf validInputChoicePVAI t)
                          ))
                    (if (= aiChoice 3)
                        (progn
                          (setf *entitylist* (append *entitylist* (list '(aiDecision *theBoard* 1 2))))
                          (setf validInputChoicePVAI t)
                          ))
                    
                    (if (eql validInputChoicePVAI nil)
                        (print "Invalid input, please try again.")
                      )
                    )
              
              ))
        (if (= choice 2)
            (progn
              (setf validInputMode t)
              (print "You have selected Player vs. Player")
              (playerVsPlayerMode)                         
              ))
        (if (= choice 3)
            
            (progn
              (setf validInputMode t)
              (loop while (and (eql validInputChoiceAIVAIPlayer1 nil) (eql validInputChoiceAIVAIPlayer2 nil)) do
                    (print "You have selected AI vs. AI")
                    (print "What difficulty would you like AI player 1 to be?")
                    (print "1.Random Movements (Easy)")
                    (print "2.Greedy (Normal)")
                    (print "3.Minimax (Hard)")
                    (setf aiChoice1 (read))
                    
                    (print "What difficulty would you like AI player 2 to be?")
                    (print "1.Random Movements (Easy)")
                    (print "2.Greedy (Normal)")
                    (print "3.Minimax (Hard)")
                    (setf aiChoice2 (read))
                    
                    (if (= aiChoice1 1)
                        (progn
                          (setf validInputChoiceAIVAIPlayer1 t)
                          (setf *entitylist* (append *entitylist* (list '(simple-ai *theBoard* 0))))
                          ))
                    (if (= aiChoice1 2)
                        (progn
                          (setf validInputChoiceAIVAIPlayer1 t)
                          (setf *entitylist* (append *entitylist* (list '(aiDecision *theBoard* 0 0))))
                          ))
                    (if (= aiChoice1 3)
                        (progn
                          (setf validInputChoiceAIVAIPlayer1 t)
                          (setf *entitylist* (append *entitylist* (list '(aiDecision *theBoard* 0 2))))
                          ))
                    
                    (if (= aiChoice2 1)
                        (progn
                          (setf validInputChoiceAIVAIPlayer2 t)
                          (setf *entitylist* (append *entitylist* (list '(simple-ai *theBoard* 1))))
                          ))
                    (if (= aiChoice2 2)
                        (progn
                          (setf validInputChoiceAIVAIPlayer2 t)
                          (setf *entitylist* (append *entitylist* (list '(aiDecision *theBoard* 1 0))))
                          ))
                    (if (= aiChoice2 3)
                        (progn
                          (setf validInputChoiceAIVAIPlayer2 t)
                          (setf *entitylist* (append *entitylist* (list '(aiDecision *theBoard* 1 2))))
                          ))
                    (if (and (eql validInputChoiceAIVAIPlayer1 nil) (eql validInputChoiceAIVAIPlayer2 nil))
                        (print "Invalid input, try again")
                      (progn
                        (print *entitylist*)
                        (AIvsAIMode *entitylist*)
                        )
                      )
                    
                    )))
        
        (if (eql validInputMode nil)
            (print "Invalid input, try again")
          )
        
        )
  )
