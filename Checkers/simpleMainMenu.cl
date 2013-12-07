(defun simpleMainMenu() ;; this function handles the display of the main menu to be used for demonstrations of the AI
  (setupgame)
  (setf validInputMode nil)
  (loop while (eql validInputMode nil) do
        (print "Welcome to Checkers 2: Electric Boogaloo")
        (print "Choose a game mode!")
        (print "1. Simple vs Simple AI")
        (print "2. Simple vs. Greedy AI")
        (print "3. Simple vs. Minimax AI")
        (print "4. Greedy vs. Greedy AI")
        (print "5. Greedy vs. Minimax AI")
        (print "6. Minimax vs. Minimax AI")
        (setf aiChoice (read))
        (setf validInputMode nil)
        
        (if (= aiChoice 1)
            (progn
            (setf validInputMode t)  
            (simpleVsSimple)))
        (if (= aiChoice 2)
            (progn
            (setf validInputMode t)
            (simpleVsGreedy)))
        (if (= aiChoice 3)
            (progn
            (setf validInputMode t)
            (simpleVsMiniMax)))
        (if (= aiChoice 4)
            (progn
            (setf validInputMode t)
            (greedyVsGreedy)))
        (if (= aiChoice 5)
            (progn
            (setf validInputMode t)
            (greedyVsMiniMax)))
        (if (= aiChoice 6)
            (progn
            (setf validInputMode t)
            (miniMaxVsMiniMax)))
        (if (eql validInputMode nil)
            (print "You did not pick a valid choice, try again"))
  
  ))