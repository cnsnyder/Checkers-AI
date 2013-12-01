(setupgame)
(displayboard)

(setf movelist ())
(setf movelist (append movelist (list '(2 3))))
(setf movelist (append movelist (list '(3 2))))
(updateBoard (nth (nth 1 (nth 0 m)) (nth (nth 0 (nth 0 m)) *theBoard*)) *theBoard* movelist)
(displayboard)

(setf movelist (playerdecision))
(updateBoard (nth (nth 1 (nth 0 m)) (nth (nth 0 (nth 0 m)) *theBoard*)) *theBoard* movelist)

(setq movelist ()) 
(setq movelist (append movelist (list '(1 2))))
(setq movelist (append movelist (list '(3 4))))
(updateBoard (nth (nth 1 (nth 0 m)) (nth (nth 0 (nth 0 m)) *theBoard*)) *theBoard* movelist)
(displayboard) 

(setf movelist (playerdecision))
(updateBoard (nth (nth 1 (nth 0 m)) (nth (nth 0 (nth 0 m)) *theBoard*)) *theBoard* movelist)


(nth (nth 1 (nth 0 m)) (nth (nth 0 (nth 0 m)) *theBoard*)) ;;to access piece to send to board
