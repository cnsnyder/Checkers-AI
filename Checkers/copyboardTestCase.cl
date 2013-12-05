(setupgame)

(displayboard *theBoard*)

(setf newBoard (copyBoard *theBoard*))

(setq movelist ())
(setq movelist (append movelist (list '(5 0))))
(setq movelist (append movelist (list '(4 1))))

(updateBoard (nth 0 (nth 5 newBoard)) newBoard movelist)

(displayboard newBoard)

(displayboard *theBoard*)


