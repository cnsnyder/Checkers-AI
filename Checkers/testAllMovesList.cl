(setupGame)
(allMoves 1 *theBoard*)
(displayBoard *theBoard*)
(setf mypiece (boarditemat *theBoard* '(5 0)))
(updateBoard mypiece *theBoard* '((5 0) (4 1)))
(displayBoard *theBoard*)
(allMoves 1 *theboard*)