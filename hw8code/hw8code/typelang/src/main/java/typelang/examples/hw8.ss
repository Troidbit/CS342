//Q6
(define compression
	(lambda (l : List <num>)
		(if (null? l) (list)
			(if (null? (cdr l)) (car l)
				(if (= (car l) (car (cdr l)))
					(compression (cons (car l) (cdr (cdr l))))
					(cons (car l) (compression cdr l))
				)
			)
		)
	)
)




