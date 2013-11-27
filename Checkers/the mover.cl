(defun move (piece theBoard)
  (if (piece-p piece)
      (progn
          (setf (piece-movelist piece) ()) ;;reset move list for given piece
        (mover piece theBoard ())
        )
    (print "NonPiece passed to move function")
    )
  )

(defun mover (thePiece theBoard theMovelist)
  
        (if (piece-isKing thePiece) 
        (progn
          (let ((r (nth 0 (piece-location thePiece))) (c (nth 1 (piece-location thePiece))))
            (let ((validlist (list (nth (- c 1) (nth (- r 1) theBoard)) (nth (+ c 1) (nth (- r 1) theBoard))
                                   (nth (+ c 1) (nth (+ r 1) theBoard)) (nth (- c 1) (nth (+ r 1) theBoard)))))
              (dotimes (x 4)
                (let ((item (nth x validlist)))
                (if (piece-p item)
                    (if (not (= (piece-owner item) (piece-owner thePiece)))
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (piece-location item)) (nth 0 (piece-location thePiece))) (nth 0 (piece-location item))))
                                (c (+ (- (nth 1 (piece-location item)) (nth 1 (piece-location thePiece))) (nth 1 (piece-location item)))))
                            (if (not (piece-p (nth c (nth r theBoard))))
                                (progn 
                                  (let ((myBoard theBoard) (myMovelist theMovelist) (myPiece thePiece))
                                    (setf myMovelist (append myMovelist (list (piece-location thePiece))))
                                    (updateBoard myPiece myBoard myMovelist)
                                    (mover myPiece myBoard myMovelist)
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
 
          
    
  
    
        