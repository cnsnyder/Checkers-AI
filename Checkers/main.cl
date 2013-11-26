;;main 


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