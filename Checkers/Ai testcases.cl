(setupgame)
(displayboard *theBoard*)
(setf *theMovelist* (aiDecision *theBoard* 0 0))
(updateboard (nth (nth 1 (nth 0 *theMovelist*)) (nth (nth 0 (nth 0 *theMovelist*)) *theBoard*)) *theBoard* *theMovelist*)
(displayboard *theBoard*)




;;Gabe's loop to try to test full game. Does not work all the way.  
(setupgame)
(loop while (eql (isVictor) nil) do
      (progn 
        (print "Player 1 turn!")
        (displayboard *theBoard*)
        (setf *theMovelist* (playerdecision)
        (if (equal *theMovelist* '(((7 7) (0 0))))
            (print "Player 2 won!!")
          (progn
            (updateboard (nth (nth 1 (nth 0 *theMovelist*)) (nth (nth 0 (nth 0 *theMovelist*)) *theBoard*)) *theBoard* *theMovelist*)
            )
          )
        (print "Player 2 turn!")
        (displayboard *theBoard*)
        (setf *theMovelist* (aiDecision *theBoard* 1 2))
        (if (equal *theMovelist* '(((7 7) (0 0))))
            (print "Player 1 won!!")
          (progn
            (updateboard (nth (nth 1 (nth 0 *theMovelist*)) (nth (nth 0 (nth 0 *theMovelist*)) *theBoard*)) *theBoard* *theMovelist*)
            )
          )
        )
      )
(if (= 0 (isvictor))
    (print "Player 1 Won!!")
  (print "Player 2 Won!!")
  )
(displayboard *theBoard*)