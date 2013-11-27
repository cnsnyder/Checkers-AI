(defun move (piece theBoard)
  (if (piece-p piece)
      (progn
          (setf (piece-movelist piece) ())
        (mover piece theBoard ())
        )
    (print "NonPiece passed to move function")
    )
  )

(defun mover (piece theBoard theMovelist)
  
        (if (piece-isKing) 
        (progn
          (let ((r (nth 0 (piece-location piece))) (c (nth 1 (piece-location piece))))
            (let ((validlist (list (nth (- c 1) (nth (- r 1) theBoard)) (nth (+ c 1) (nth (- r 1) theBoard))
                                   (nth (+ c 1) (nth (+ r 1) theBoard)) (nth (- c 1) (nth (+ r 1) theBoard)))))
              (dotimes (x 4)
                (let ((item (nth x validlist)))
                (if (piece-p item)
                    (if (not (= (piece-owner item) (piece-owner piece)))
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (piece-location item)) (nth 0 (piece-location piece))) (nth 0 (piece-location item))))
                                (c (+ (- (nth 1 (piece-location item)) (nth 1 (piece-location piece))) (nth 1 (piece-location item)))))
                            (if (not (piece-p (nth c (nth r theBoard))))
                                (progn 
                                  (let ((myBoard theBoard) (myMovelist theMovelist))
                                    (setq myMovelist (append myMovelist (list piece-location)))
                                    
                                    
                         )
                        )
                  )
                  )
            )
          
    
  
    
        