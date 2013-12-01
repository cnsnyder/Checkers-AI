(defun aiDecision (theBoard level)  ;;;top level function that returns the movelist chosen by the AI 
  ;;the board is the current state of the board
  ;;level is how many turns to simulate
  ;;; return
  (let ((myBoard (copy-list theBoard)))
    (setf aiMovelist (max myBoard level)) ;;return
    )
  )

(defun max (theBoard level) ;;max is owner 0
  (updateAllPieces)
  (if (= 0 level) ;;base case 
      ;;loops through the board updating the moves of all pieces
      (progn
        (let ((listofmoves ()))
        (dotimes (r 8)
          (dotimes (c 8)
            (let ((p (nth c (nth r theBoard))))
              (if (eq 'piece (type-of p))
                  (if (= 0 (slot-value p 'owner))
                  (progn
                    (let ((longestMove 0))
                      (dotimes (x (length (slot-value p 'movelist)))
                        (if (> (length (nth x (slot-value p 'movelist))) longestMove)
                            (setf longestmove (nth x (slot-value p 'movelist)))
                          )
                        )
                      (dotimes (x (length (slot-value p 'movelist)))
                        (if (= (length (nth x (slot-value p 'movelist))) longestMove)
                            (setf listofmoves (append listofmoves (nth x (slot-value p 'movelist))))
                          )
                        )
                      (if (= longestMove 2)
                          (let ((listofjumps ()))
                            (dotimes (x (length listofmoves))
                              (if (= (+ (abs (- (nth x (nth 0 (nth 1 listofmoves))) (nth x (nth 1 (nth 1 listofmoves))) )) (abs (- (nth x (nth 0 (nth 0 listofmoves))) (nth x (nth 1 (nth 0 listofmoves))) ))) 4)
                                  (setf listofjumps (append listofjumps (nth x listofmoves)))
                                )
                              )
                            (if (> 0 (length listofjumps))
                                (setf listofmoves listofjumps)
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
          (setf longestMove longestMove) ;;return the longest move possible
          )
        )
    (progn ;;recursive case
      (dotimes (r 8)
          (dotimes (c 8)
            (let ((p (nth c (nth r theBoard))))
              (if (eq 'piece (type-of p))
                  (progn
                      
                    )
                )
              )
            )
          )
    
  (let ((myBoard (copy-list theBoard)))
    
    )
  
