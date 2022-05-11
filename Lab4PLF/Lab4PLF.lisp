(defun inserare(l a i)
	(cond
		((AND (= (mod i 2) 1) (null l)) (LIST a))
		((null l) nil)
		((= (mod i 2) 0) (APPEND (LIST (CAR l)) (LIST a) (inserare (CDR l) a (+ i 1))))
		(t (APPEND (LIST (CAR l)) (inserare (CDR l) a (+ i 1))))
	)
)


(defun invers(l)
	(cond
		((null l) nil)
		((ATOM (CAR l)) (APPEND (invers (CDR l)) (LIST (CAR l))))
		((LISTP (CAR l)) (APPEND (invers (CDR l)) (invers (CAR l))))
	)
)

(defun cmmdc(a b)
	(cond
		((= b 0) a)
		(t (cmmdc b (mod a b)))
	)
)

(defun cmmdc_list(l)
	(cond
		((null l) 0)
		((LISTP (CAR l)) (cmmdc (cmmdc_list (CAR l)) (cmmdc_list (CDR l))))
		(t (cmmdc (CAR l) (cmmdc_list (CDR l))))
        ;APPEND ( 1 2) (3 ( 4 5 ) 6)
        ;1 2 3 4 5 6 
	)
)

(defun aparitii(l a)
	(cond
		((null l) 0)
		((LISTP (CAR l)) (+ (aparitii (CAR l) a) (aparitii (CDR l) a)))
		((equal (CAR l) a) (+ 1 (aparitii (CDR l) a)))
		(t (aparitii (CDR l) a))
	)
)


(inserare `(1 2 3 4 5) 10 1)

(invers `(1 (2 3) 4))

(cmmdc_list `(8 (16) 32))

(aparitii `(1 1 5 6 1 9 1 2 2) 1)