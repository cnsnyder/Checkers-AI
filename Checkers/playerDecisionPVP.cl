(defun playerDecisionPVP(*theBoard* currentPlayer)
  
  ;;(displayBoard *theBoard*)
  (let ((validPiece ()) (validMove ()) (row ()) (col ()) (piece ()) (mymovelist ()) (choice nil))
    (loop do
          
          (setf mymovelist ())
          (loop while (not (eql validPiece t)) do
                (print "Enter the row and column of the piece you would like to move ")
                (setf row (read))
                (setf col (read)) 
                (setf choice nil)
                
                (if (not (eq (nth col (nth row *theBoard*)) nil)) ;;if there is a piece at that location
                    (progn
                      (setf piece (nth col (nth row *theBoard*)))
                      (if (= (slot-value piece 'owner) currentPlayer) ;;player1 is 0, player2 is 1 
                          (progn 
                            (if (not (every #'null (slot-value piece 'movelist)))
                                (progn
                                  ;; (setf mymovelist (append mymovelist (list row col))) is set in next loop instead
                                  (setf validPiece t)
                                  )
                              
                              (print "That piece has no moves")
                              )
                            )
                        (print "That is not your piece. Choose again") ;;else choice is invalid, loop will  restart
                        
                        )
                      )
                  (print "There is no piece there. Choose again") ;;else choice is invalid, loop will restart
                  
                  )
                ) ;;end while loop
          (let ((jumpCount 0))  
            (loop while (not (eql validMove t)) do
                  
                  (if (not (eql validMove t))
                      (progn ;; not valid move yet
                        
                        (setf mymovelist (append mymovelist (list row col)))
                        
                    (print mymovelist)
                        (print "Enter the row and column of where you would like to move the piece")
                        (setf row (read))
                        (setf col (read))  
                    (print mymovelist)
                        ;;(print (append (list mymovelist) (list (append row col)))) 
                        ;;(print (slot-value piece 'movelist))
                        (if (not (eq (find (append (list mymovelist) (list (append (list row col)))) (allmoves (slot-value piece 'owner) *theBoard*) :test #'equal) nil))  ;; if move is located in movelist
                            (progn ;;if move is found  
                              (setf validMove t)
                              (setf mymovelist (append (list mymovelist) (list (append (list row col)))))
                              )
                          (progn ;;if move not found
                            (print mymovelist)
                            (print "This is not a valid move. (A)dd a jump or (S)tart move from begining")
                            (setf choice (read))
                            (if (eq choice 'S)
                                (progn
                                  (setf validPiece nil)
                                  (loop-finish)
                                  )
                              )
                            (if (eq choice 'A)
                                (progn
                                  (setf mymovelist (append (list mymovelist) (list (append (list row col)))))
                                  )
                            )
                            )
                          )
                        (loop while (and (eq choice 'A) (< jumpCount 9)) do 
                              (progn 
                                (let ((jrow()) (jcol()))
                                  (setf jumpCount (+ 1 jumpCount))
                                  (print "Your current jump count:")
                                  (print jumpCount)
                                  (print "If you exceed 9 jumps, you movelist will be restarted")
                                  (displayBoard *theBoard*)
                                  ;;(setf mymovelist (append (list mymovelist) (list (append (list row col)))))
                                  (print "Your current movelist:")
                                  (print mymovelist)
                                  (print "Enter the row and column of where you would like to jump the piece")
                                  (setf jrow (read))
                                  (setf jcol (read))
                                  ;;(print (append  mymovelist (list (append (list jrow jcol)))))
                                  ;;(print (allmoves (slot-value piece 'owner) *theBoard*))
                                      (if (not (eq (find (append mymovelist (list (append (list jrow jcol)))) (allmoves (slot-value piece 'owner) *theBoard*) :test #'equal) nil))
                                          (progn
                                            (setf validMove t)
                                            (setf mymovelist (append mymovelist (list (append (list jrow jcol)))))
                                            (setf choice nil)
                                            ;;(print mymovelist)
                                            )
                                        (progn
                                          (print "Your current movelist:")
                                 	  (print mymovelist)
                                          (print "This is not a valid move. (A)dd a jump or (S)tart move from beginning")
                                          (setf choice (read))
                                          (if (eq choice 'A)
                                              (progn
                                              ;;(setf mymovelist (append (list mymovelist) (list (append (list jrow jcol)))))
                                                ;;(print mymovelist)
                                                )
                                                (progn
                                              (loop-finish)
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )   
                          
                        )
                    )
                    
                  
                  )          
            
            )
        while (not (eql choice nil)))
    
        
    ;;(print mymovelist)
    (setf mymovelist mymovelist) ;; return move list
    )
  )
  

    
    
  
 