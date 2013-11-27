(defun mover (piece theBoard theMovelist)
  
  (let ((myBoard theBoard) (myMovelist theMovelist))
    (if (piece-isKing) 
        (progn
          (let ((r (nth 0 (piece-location piece))) (c (nth 1 (piece-location piece))))
            (let ((validlist (list (list (- r 1) (- c 1)) (list (- r 1) (+ c 1)) (list (+ r 1) (+ c 1)) (list (+ r 1) (- c 1)))))
              (let ((validlist (list (nth (nth 1 (nth 0 validlist)) (nth (nth 0 (nth 0 validlist)) myBoard)) (nth (nth 1 (nth 1 validlist)) (nth (nth 0 (nth 1 validlist)) myBoard)) (nth c (nth r myBoard)) (nth c (nth r myBoard)))))
                
                )
            )