(defun piece-array ()
  (let ((temp ()))
    (dotimes (x 8 temp)
      (let (loc (a (make-piece :owner 1 :location '(2 2))))
        (setq temp (append temp (list (make-piece :owner 1 :location '(2 2)))))
        )
      )
    )
  )