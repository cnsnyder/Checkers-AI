(defun playerDecision (*theBoard*)
  
  (displayBoard *theBoard*)
  (let ((validPiece ()) (validMove ()) (row ()) (col ()) (piece ()) (mymovelist ()))
    
    (loop while (not (eql validPiece t)) do
          (print "Enter the row and column of the piece you would like to move ")
          (setf row  (read))
          (setf col  (read))
          
          (if (not (eq (nth col (nth row *theBoard*)) nil)) ;;if there is a piece at that location
              (progn
                (setf piece (nth col (nth row *theBoard*)))
                (if (= (slot-value piece 'owner) 1) ;;player is player 1, AI is 0 
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
    (let ((choice 'S) (jumpCount 0))  
      (loop while (not (eql validMove t)) do
            
            (if (not (eql validMove t))
                (progn ;; not valid move
                  
                  (setf mymovelist (append mymovelist (list row col)))
                  (print "Enter the row and column of where you would like to move the piece")
                  (setf row (list (read)))
                  (setf col (list (read)))
          ;;(print mymovelist)
          ;;(print (append (list mymovelist) (list (append row col)))) 
          ;;(print (slot-value piece 'movelist))
                  (if (not (eq (find (append (list mymovelist) (list (append row col))) (slot-value piece 'movelist) :test #'equal) nil))  ;; if move is located in movelist
                      (progn ;;if move is found
                        (setf validMove t)
                        (setf mymovelist (append (list mymovelist) (list (append row col))))
                        )
                    (progn ;;if move not found
                      
                      (print "This is not a valid move. (A)dd a jump or (S)tart move from begining")
                      (setf choice (read))
                      (loop while (and (eq choice 'A) (< jumpCount 9)) do 
                        (progn 
                          (let ((jrow()) (jcol()))
                            (setf jumpCount (+ 1 jumpCount))
                            (print "Your current jump count:")
                            (print jumpCount)
                            (print "If you exceed 9 jumps, you movelist will be restart")
                            (displayBoard)
                            (print "Your current movelist:")
                            (print mymovelist)
                            (print "Enter the row and column of where you would like to jump the piece")
                            (setf jrow (list (read)))
                            (setf jcol (list (read)))
                            (if (not (eq (find (append (list mymovelist) (list (append row col)) (list (append jrow jcol))) (slot-value piece 'movelist) :test #'equal) nil))
                                (progn
                                  (setf validMove t)
                                  (setf mymovelist (append (list mymovelist) (list (append row col)) (list (append jrow jcol))))
                                  (setf choice 'S)
                                  )
                              (progn
                                (print "This is not a valid move. (A)dd a jump or (S)tart move from beginning")
                                (setf choice (read))
                                (if (eq choice 'A)
                                    (setf mymovelist (append (list mymovelist) (list (append row col)) (list (append jrow jcol))))
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
      )
     (setf mymovelist mymovelist) ;; return move list
    )
  
 
  )

  
  
  
  
  
  
  
  
  
  
  ;; SANDBOX
  ;; (nth killCol (nth killRow theBoard)) nil) 
  ;; (slot-value thePiece 'owner)
  ;;Psuedo code
