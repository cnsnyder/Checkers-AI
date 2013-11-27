(defun displayBoard (theBoard) 
  (dotimes (r 8)
    (let ((row ()))
      (dotimes (c 8)
        (if (= (mod r 2) (mod c 2)) ;;if non-playable space
            (setf row (append row (list '?)))  ;;adds black-block character to represent black not playable areas
          (progn
            (if (eq (nth c (nth r theBoard)) nil) ;;else if empty space
                (setq row (append row (list '_)))
              (progn
            (if (= (piece-owner (nth c (nth r theBoard))) 0) ;;else if player zero piece
                (progn
                  (if (eq (piece-isKing (nth c (nth r theBoard))) t) ;;if p0 king 'M'
                      (setf row (append row (list 'M))))
                  (if (eq (piece-isKing (nth c (nth r theBoard))) nil) ;;if p0 not king 'w'
                      (setf row (append row (list 'W)))
                    )
                  )
              )
            (if (= (piece-owner (nth c (nth r theBoard))) 1) ;;else if player one piece
                (progn
                  (if (eq (piece-isKing (nth c (nth r theBoard))) t) ;;if p1 king 'Q'
                      (setf row (append row (list 'Q))))
                  (if (eq (piece-isKing (nth c (nth r theBoard))) nil) ;;if p1 not king '0'
                      (setf row (append row (list 'O))))
                    )
              )
                )
            
                  );;end if nil space if
              )
            )
 
        );;end c dotimes
      (print row)
      )
    )
  
  )
            
      