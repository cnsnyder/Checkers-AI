;;; Simple AI takes in a movelist and returns a single move
;;; selected at at random

(defun simple-ai (moveList)
  (let ((rand (random (length movelist))))
    (nth rand moveList)))
  