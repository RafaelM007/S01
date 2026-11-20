(defstruct criatura
    nome
    bioma
    profundidade
    perigo)

(defun texto-do-perigo (perigo)
    (case perigo
        (:inofensiva "Inofensiva")
        (:agressiva "Agressiva")
        (:leviata "Leviata: mantenha distancia!")
        (otherwise "Desconhecido")))

(defun descreve-criatura (c)
    (format nil "Nome: ~a -- Bioma: ~a -- Profundidade: ~a -- Perigo: ~a"
            (criatura-nome c)
            (criatura-bioma c)
            (criatura-profundidade c)
            (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
    (remove-if-not (lambda (c)(> (criatura-profundidade c) metros))catalogo))

(defparameter *catalogo*
    (list
        (make-criatura :nome "Tubarao tenebroso" :bioma "Oceano Tropical" :profundidade 20 :perigo :agressiva )
        (make-criatura :nome "Demonio do oceano" :bioma "Oceano Selvagem" :profundidade 60 :perigo :leviata )
        (make-criatura :nome "Peixegorgon" :bioma "Oceano equatorial" :profundidade 40 :perigo :agressiva )
        (make-criatura :nome "Golfidemo" :bioma "Oceano raso" :profundidade 10 :perigo :inofensiva )))

(defun main ()
    (dolist (criatura (mapcar #'descreve-criatura *catalogo*))
        (format t "~a~%" criatura))
    (format t "~%Criaturas abaixo de 20 metros:~%")
    (dolist (criatura (mapcar #'descreve-criatura (abaixo-de 20 *catalogo*)))
        (format t "~a~%" criatura))
    (format t "Total abaico de 20 metros: ~a~%" (length (abaixo-de 20 *catalogo*))))

(main)
  
