(setupgame)
(displayboard *theBoard*)
(setf *theMovelist* (aiDecision *theBoard* 0 0))
(updateboard (nth (nth 1 (nth 0 *theMovelist*)) (nth (nth 0 (nth 0 *theMovelist*)) *theBoard*)) *theBoard* *theMovelist*)
(displayboard *theBoard*)




;;Gabe's loop to try to test full game. Does not work all the way.  
(setupgame)
<<<<<<< HEAD
(loop while (eql (isVictor) nil) do
      (progn 
        (print "Player 1 turn!")
        (displayboard *theBoard*)
        (setf *theMovelist* (aidecision *theBoard* 0 2))
        (if (equal *theMovelist* '(((7 7) (0 0))))
            (print "Player 2 won!!")
          (progn
            (updateboard (nth (nth 1 (nth 0 *theMovelist*)) (nth (nth 0 (nth 0 *theMovelist*)) *theBoard*)) *theBoard* *theMovelist*)
=======
(let ((count 0) (victor ()))
  (loop while (eql victor nil) do
        (progn 
          (incf count)
          (print "Player 1 turn!")
          (displayboard *theBoard*)
          (setf *theMovelist* (simple-ai *theBoard* 0))
          (setf victor (isVictor 0))
          (if (equal *theMovelist* '(((7 7) (0 0))))
              (print "Player 2 won!!")
            (progn
              (updateboard (nth (nth 1 (nth 0 *theMovelist*)) (nth (nth 0 (nth 0 *theMovelist*)) *theBoard*)) *theBoard* *theMovelist*)
              )
>>>>>>> f262c2e6bfa427b5f1588e93df2f7c85b11b56b9
            )
          (if (eq victor nil)
              (progn
                (print "Player 2 turn!")
                (displayboard *theBoard*)
                (setf *theMovelist* (aiDecision *theBoard* 1 2))
                (if (equal *theMovelist* '(((7 7) (0 0))))
                    (print "Player 1 won!!")
                  (progn
                    (updateboard (nth (nth 1 (nth 0 *theMovelist*)) (nth (nth 0 (nth 0 *theMovelist*)) *theBoard*)) *theBoard* *theMovelist*)
                    )
                  )
                
                (setf victor (isVictor 1))
                
                (print "turn: ")
                (print count)
                )
            )
          )
        )
  (displayboard *theBoard*)
  
  (if (= 0 victor)
      (print "Player 1 Won!!")
    (print "Player 2 Won!!")
    )
  )


