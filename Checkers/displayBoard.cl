(defun displayBoard (theBoard) ;;this function is used to create a visual represention of the board that has been passed
  (print "    0 1 2 3 4 5 6 7  ")
  (dotimes (r 8)
    (let ((row (make-array 0 :element-type 'character :adjustable t :fill-pointer 0)))
      (add-char (int-char r) row)
      (add-char #\( row)
      (dotimes (c 8)
        (if (= (mod r 2) (mod c 2)) ;;if non-playable space
            (add-char #\* row)  ;;adds black-block character to represent black not playable areas
          (progn
            (if (eq (nth c (nth r theBoard)) nil) ;;else if empty space
                (add-char #\_ row)
              (progn
                (if (= (slot-value (nth c (nth r theBoard)) 'owner) 0) ;;else if player zero piece
                    (progn
                      (if (eq (slot-value (nth c (nth r theBoard)) 'isKing) t) ;;if p0 king 'M'
                          (add-char #\M row))
                      (if (eq (slot-value (nth c (nth r theBoard)) 'isKing) nil) ;;if p0 not king 'w'
                          (add-char #\W row)
                        )
                      )
                  )
                (if (= (slot-value (nth c (nth r theBoard)) 'owner) 1) ;;else if player one piece
                    (progn
                      (if (eq (slot-value (nth c (nth r theBoard)) 'isKing)  t) ;;if p1 king 'Q'
                          (add-char #\Q row))
                      (if (eq (slot-value (nth c (nth r theBoard)) 'isKing)  nil) ;;if p1 not king '0'
                          (add-char #\O row))
                      )
                  )
                )
            
              );;end if nil space
            )
          )
        );;end c dotimes
      (vector-push-extend #\) row)
      (print row)
      )
    )
  )

(defun add-char (inchar row)
  (vector-push-extend inchar row)
  (vector-push-extend #\  row))

(defun int-char (n)
  (char (write-to-string n) 0))

      