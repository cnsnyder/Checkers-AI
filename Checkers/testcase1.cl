(setupgame)
(setq movelist ())
(setq movelist (append movelist (list '(5 0))))
(setq movelist (append movelist (list '(4 1))))
(displayboard *theBoard*)
(updateBoard (nth 0 (nth 5 *theBoard*)) *theBoard* movelist)
(setq movelist ())
(setq movelist (append movelist (list '(2 3))))
(setq movelist (append movelist (list '(3 2))))
(displayboard *theBoard*)
(updateBoard (nth 3 (nth 2 *theBoard*)) *theBoard* movelist)
(setq movelist ())
(setq movelist (append movelist (list '(4 1))))
(setq movelist (append movelist (list '(2 3))))
(displayboard *theBoard*)
(updateBoard (nth 1 (nth 4 *theBoard*)) *theBoard* movelist)
(setq movelist ())
(setq movelist (append movelist (list '(1 2))))
(setq movelist (append movelist (list '(3 4))))
(displayboard *theBoard*)
(updateBoard (nth 2 (nth 1 *theBoard*)) *theBoard* movelist)
(setq movelist ())
(setq movelist (append movelist (list '(5 2))))
(setq movelist (append movelist (list '(4 3))))
(displayboard *theBoard*)
(updateBoard (nth 2 (nth 5 *theBoard*)) *theBoard* movelist)
(setq movelist ())
(setq movelist (append movelist (list '(5 6))))
(setq movelist (append movelist (list '(4 5))))
(updateBoard (nth 6 (nth 5 *theBoard*)) *theBoard* movelist)
(displayboard *theBoard*)
(setf (nth 0 (nth 7 *theBoard*)) nil)
(genMoveListR (nth 4 (nth 3 *theBoard*)) *theBoard* (list (slot-value (nth 4 (nth 3 *theBoard*)) 'location)))
(displayboard *theBoard*)
(slot-value (nth 4 (nth 3 *theBoard*)) 'movelist)
(updateBoard (nth 4 (nth 3 *theBoard*)) *theBoard* (nth 1 (slot-value (boarditemat *theboard* 3 4) 'movelist)))
