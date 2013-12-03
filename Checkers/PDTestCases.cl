(setupgame)
(displayboard *theBoard*)

(setf movelist ())
(setf movelist (append movelist (list '(2 3))))
(setf movelist (append movelist (list '(3 4))))
(updateBoard (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)) *theBoard* movelist)
(updateAllPieces *theBoard*)
(displayboard *theBoard*)

(setf movelist (playerdecision *theBoard*))
(updateBoard (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)) *theBoard* movelist)
(updateAllPieces *theBoard*)
(displayboard *theBoard*)

(setf movelist ()) 
(setf movelist (append movelist (list '(1 2))))
(setf movelist (append movelist (list '(3 4))))
(updateBoard (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)) *theBoard* movelist)
(updateAllPieces *theBoard*)
(displayboard *theBoard*)

(setf movelist (playerdecision))
(updateBoard (nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)) *theBoard* movelist)


;;SANDBOX
(nth (nth 1 (nth 0 movelist)) (nth (nth 0 (nth 0 movelist)) *theBoard*)) ;;to access piece to send to board
