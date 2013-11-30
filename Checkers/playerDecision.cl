(defun playerDecision (theBoard)
  (displayBoard theBoard)
  (let ((validPiece ()) (validMove ()) (row ()) (col ()) (piece ()) (mymovelist ()))
    (loop while (not (eql validPiece t)) do
          (print "Enter the row and column of the piece you would like to move ")
          (setf row  (read))
          (setf col  (read))
          (if (not (eq (nth col (nth row theBoard)) nil)) ;;if there is a piece at that location
              (progn
                (setf piece (nth col (nth row theBoard)))
                (if (= (slot-value piece 'owner) 1) ;;player is player 1, AI is 0 
                    (progn 
                      (setf mymovelist (append mymovelist (list row col)))
                      (setf validPiece t)
                      )
                  (print "That is not your piece. Choose again") ;;else choice is invalid, loop will  restart
                  )
                )
            (print "There is no piece there. Choose again")
                   
                   
                ) ;;else choice is invalid, loop will restart
            
          );;end while loop
    
    (loop while (not (eql validMove t)) do 
          (print "Enter the row and column of where you would like to move the piece")
          (setf row (list (read)))
          (setf col (list (read)))
          (if (not (eq (find (list row col) (slot-value piece 'movelist)) nil))  ;; if move is located in movelist
              (progn
                (setf validMove t)
                (setf mymovelist (append mymovelist (list row col)))
                )
            (print "This is not a valid move. Choose again")
            )
          )
    (setf mymovelist mymovelist) ;; return move list
                

    );;end let
  )

  
  
  
  
  
  
  
  
  
  
  ;; SANDBOX
  ;; (nth killCol (nth killRow theBoard)) nil) 
  ;; (slot-value thePiece 'owner)
  ;;Psuedo code
  ;;Print board
  ;;ask location of piece the user would like to move
  ;;save piece as variable playedPiece if a valid piece loop until valid piece
  ;;set ValidChoice boolean to false
  ;;while not a valid choice:
  ;;;;;;ask for move decision and check validity against piece movelist
  ;;;;;;if decision not valid
  ;;;;;;;;;print "choice not valid, choose again"
  ;;append choice to movelist (which will be returned)
  