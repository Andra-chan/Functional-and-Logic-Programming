(defun produs(l)
	(cond
		((NUMBERP l) l)
		((ATOM l) 1)
		(t (APPLY #'* (MAPCAR #'produs l)))
	)
)

(produs `((1 2 3 4 5) 10 2))
(produs `(1 (2 3) 10 (5)))
(produs `(10 (10 2) b (1 a)))