(defun allmoves (owner theBoard)
  (let ((allmovelist ()))
    (dotimes (r 8)
      (dotimes (c 8)
        (let ((p (nth c (nth r theBoard))))
          (if (eq 'piece (type-of p))
              (if (eq owner (slot-value p 'owner)) 
                  (setf allmovelist (append allmovelist (list (slot-value p 'movelist))))
                )
            )
          )
        )
      )
    (setf allmovelist allmovelist)
    )
  )
                    
