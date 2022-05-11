; inlocuire(l, niv) = { l + 1 , l e atom, l e numar, l % 2 = 1, niv % 2 = 0
; { l , l e atom, l e numar, niv % 2 = 1
; { l , l e atom, l nu e numar
; { inlocuire(l1,niv+1) U ... U inlocuire(ln,niv+1) , altfel
; inlocuire(l:list, niv:intreg)
(defun inlocuire(l niv)
 (cond
 (
 (AND (atom l) (numberp l) (equal 1 (mod l 2)) (equal 0 (mod niv 2)))
 (+ l 1)
 )
 (
 (AND (atom l) (numberp l) (equal 1 (mod niv 2)))
 l
 )
 (
 (AND (atom l) (not (numberp l)))
 l
 )
 (T
 (mapcar #'(lambda(x)
 (
 inlocuire x (+ niv 1)
 )
 )
 l
 )
 )
 )
)
; main(l) = inlocuire(l, 0)
; main(l:list)
(defun main(l)
 (inlocuire l 0)
)

(main '(1 s 4 ( 3 f (7)))) 