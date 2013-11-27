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
        

(defun setUpBoard()
  
  (print "Legend");
  (print "0 = Empty Space");
  (print "X = Player Piece");
  (print "Y = AI Piece");
  (print "* = Forbidden Space");
  (print '----------------------------------);
  (print '(* X * X * X * X));
  (print '(X * X * X * X *));
  (print '(* X * X * X * X));
  (print '(0 * 0 * 0 * 0 *));
  (print '(* 0 * 0 * 0 * 0));
  (print '(Y * Y * Y * Y *));
  (print '(* Y * Y * Y * Y));
  (print '(Y * Y * Y * Y *));
  (print '-);

  (setf *random-state* (make-random-state t));
  (setf x (random 2));
  (if (= x 0)
      (print "Player goes first!");
    ;; Here is where we call the Player Function
        )
  (if (= x 1)
      (print "AI goes first!");
    ;; Here is where we call the AI Function
        )
  
  )
