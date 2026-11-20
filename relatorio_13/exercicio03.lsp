(defstruct garota-magica
    nome
    escuridao
    bruxas)

(defun escuridao-total (grupo)
    (if (null grupo)
        0
        (+ (garota-magica-escuridao (car grupo))
           (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
    (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
    (make-garota-magica :nome (garota-magica-nome g)
                        :escuridao (if (>= quantidade (garota-magica-escuridao g))
                                        0
                                        (- (garota-magica-escuridao g) quantidade))
                        :bruxas (garota-magica-bruxas g)))

(defun main ()
    (let ((grupo
        (list
            (make-garota-magica :nome "Luciana" :escuridao 30 :bruxas 7)
            (make-garota-magica :nome "Ana" :escuridao 70 :bruxas 3)
            (make-garota-magica :nome "Clara" :escuridao 10 :bruxas 9))))

    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Total de bruxas derrotadas: ~a~%" (total-de-bruxas grupo))

    (let ((grupo-novo
            (cons (make-garota-magica :nome "Maria" :escuridao 5 :bruxas 14) grupo)))

    (format t "Escuridao total do grupo antigo: ~a~%" (escuridao-total grupo))
    (format t "Escuridao total do grupo novo: ~a~%" (escuridao-total grupo-novo)))

    (let ((Luciana (car grupo))
        (Luciana-pura (purifica (car grupo) 20)))

    (format t "Escuridao original de Luciana: ~a~%"
        (garota-magica-escuridao Luciana))
    (format t "Escuridao depois da purificacao de Luciana: ~a~%"
              (garota-magica-escuridao Luciana-pura)))))

(main)
  
