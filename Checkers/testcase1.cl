(setupgame)
(setq movelist ())
(setq movelist (append movelist (list '(5 0))))
(setq movelist (append movelist (list '(4 1))))
(updateBoard (nth 0 (nth 5 theBoard)) theBoard movelist)
(setq movelist ())
(setq movelist (append movelist (list '(2 3))))
(setq movelist (append movelist (list '(3 2))))
(updateBoard (nth 3 (nth 2 theboard)) theBoard movelist)
(setq movelist ())
(setq movelist (append movelist (list '(4 1))))
(setq movelist (append movelist (list '(2 3))))
(updateboard (nth 1 (nth 4 theBoard)) theBoard movelist)
(setq movelist ())
(setq movelist (append movelist (list '(1 2))))
(setq movelist (append movelist (list '(3 4))))
(updateboard (nth 2 (nth 1 theboard)) theBoard movelist)
(setq movelist ())
(setq movelist (append movelist (list '(5 2))))
(setq movelist (append movelist (list '(4 3))))
(updateboard (nth 2 (nth 5 theboard)) theboard movelist)
(genMoveListR (nth 4 (nth 3 theboard)) theboard ())
(slot-value (nth 4 (nth 3 theboard)) 'movelist)
