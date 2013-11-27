;;function definitions 
(defun updateboard (board movelist)
  ;;for each move in move list change board
  ;;check if either player has won
  ;;returns true if someone has won
  )

(defun playermove (piece move)
  (if (valid piece move)
      (progn
        (setq movelist (append movelist move))
        


;;main
;;player 0 = ai, player 1 = actual player
(setq currentPlayer 0)
(while (not (updateboard board movelist))
  (setq currentPlayer (mod (+ currentPlayer 1) 2))
  (if (= currentPlayer 0) 
      (