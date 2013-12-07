(defun boardItemAt (theBoard r &optional c) ;;this is essentially a macro to make calls to locations in the board easier
  (if (eq c nil)
  (let ((c (nth 1 r)) (r (nth 0 r))) ;;parse from r as it is actually a location eg (1 2)
    (nth c (nth r theBoard)))
    (nth c (nth r theBoard))
    )
  )
