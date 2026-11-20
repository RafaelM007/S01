(defstruct erva
    nome
    preco-por-grama
    toxicidade)

(defun classifica-erva (erva)
    (cond
        ((>= (erva-toxicidade erva) 7) "Veneno" )
        ((>= (erva-toxicidade erva) 4) "Use com cuidado" )
        (t "Segura") ))

(defun preco-da-dose(erva gramas)
    (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva(erva)
    (format nil "Erva: ~a -- Preco: R$~,2f -- Classificacao: ~a"
            (erva-nome erva)
            (erva-preco-por-grama erva)
            (classifica-erva erva)))

(defun aviso(erva)
    (if (>= (erva-toxicidade erva) 7)
        "Maomao vai testar a erva em si mesmo antes!"
        "A erva esta liberada para o paciente!"))

(defun main ()
    (let ((lista
            (list
                (make-erva :nome "Erva de Energia" :preco-por-grama 6.7 :toxicidade 3)
                (make-erva :nome "Erva Sono profundo ":preco-por-grama 19.9 :toxicidade 10)
                (make-erva :nome "Erva de inteligencia" :preco-por-grama 14.5 :toxicidade 6))))

                (dolist (e lista)
                    (format t "Descricao: ~a ~% "(descreve-erva e))
                    (format t "Aviso: ~a ~%"  (aviso e)))

                (format t "Preco da ~a (dose): R$~,2f" (erva-nome (car lista))(preco-da-dose (car lista) 6 ))))

(main)
  
