(defun utility (owner theBoard theMovelist) ;;the function returns the difference of the score of one board state vs the suggested move.
  (if (equal themovelist '(((0 0) (7 7)))) ;;this means given owner won
      999
    (if (equal themovelist '(((7 7) (0 0)))) ;;this means the given owner lost
        -999 ;;should be negative
      (let ((A (score owner theBoard)) (B 0))
        (setf copyboard (copy-list theBoard))
        (updateboard (boarditemat theBoard (nth 0 theMovelist)) theBoard theMovelist)
        (setf B (score owner theBoard))
        (setf theBoard copyBoard)
        (- B A)
        )
      )
    )
  )
