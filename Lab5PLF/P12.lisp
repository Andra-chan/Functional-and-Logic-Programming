(defun preordine(l)
	(cond
		((null l) nil)
		(t (APPEND
				(LIST (CAR l))
				(preordine (CADR l))
				(preordine (CADDR l))
			)
		)
	)
)

(preordine `(A (B) (C (D) (E))))

(preordine `(A (B (D) (E)) (C (F) (G)))) 

(preordine `(A (B (D (H) ()) (E (I) ())) (C (F (J) ()) (G))))
 
(preordine `(A (B (H () (I (J)))) (C (D (F (K)) (G)) (E))))