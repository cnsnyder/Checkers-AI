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
    (setf *theMovelist* (aiDecision *theBoard* 0 0))
    (updateboard (nth (nth 1 (nth 0 *theMovelist*)) (nth (nth 0 (nth 0 *theMovelist*)) *theBoard*)) *theBoard* *theMovelist*)
    (print "Player 2 turn!")
    (displayboard *theBoard*)
    (setf *theMovelist* (aiDecision *theBoard* 1 2))
    (updateboard (nth (nth 1 (nth 0 *theMovelist*)) (nth (nth 0 (nth 0 *theMovelist*)) *theBoard*)) *theBoard* *theMovelist*)
    )
  )