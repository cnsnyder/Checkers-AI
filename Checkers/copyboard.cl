(defun copyboard (theBoard)
  (let ((returnboard ()))
    (dotimes (r 8)
      (setf returnboard (append returnboard (list (copy-list (nth r theboard)))))
      (dotimes (c 8)
        (let ((p (boardItemAt returnboard r c)))
          (if (eq 'piece (type-of p))
              (setf (nth c (nth r returnboard)) (make-instance 'piece :owner (slot-value p 'owner) :location (slot-value p 'location) :canJump (slot-value p 'canJump) :isKing (slot-value p 'isKing) :movelist (slot-value p 'movelist)))
            )
          )
        )
      )
    returnboard
    )
  )