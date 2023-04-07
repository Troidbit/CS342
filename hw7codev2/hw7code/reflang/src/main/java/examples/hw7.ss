//Q1a
(define loc1 (ref 342))
(define loc2 loc1)
(define artery loc1)
(define space (ref 100002))
(define outer_space space)
(define luke (ref 1002))
(define important luke)
//////////////////////


( define pairNode ( lambda ( fst snd ) ( lambda ( op ) ( if op fst snd ) ) ) )
( define node     ( lambda ( x )       ( pairNode x ( ref ( list ) ) ) ) )
( define getFst   ( lambda ( p )       ( p #t ) ) )
( define getSnd   ( lambda ( p )       ( p #f ) ) )

//Q1bi
(define find
	(lambda (p x)
		(if (= (getFst p) x)
			p
			(if (null? (getSnd p)) (find (getSnd p``) x) (list)
			)
		)
	)
)

//Q1bii
(define insert
	(lambda (head, x, p)
		(