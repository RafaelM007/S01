(defstruct dominio
    nome
    elemento
    dificuldade
    mora)

(defun bonus-elemental (elemento)
    (case elemento
        (:electro 1.5)
        (:hydro 1.2)
        (otherwise 1)))

(defun recompensa-final (d)
    (* (dominio-mora d)(bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
    (let* ((filtrados (remove-if-not (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))lista))
           (escolhas(mapcar (lambda (d) (format nil "Nome: ~a -- Recompensa: ~,2f"(dominio-nome d)(recompensa-final d)))filtrados)))
    escolhas))

(defun main ()
    (let ((dominios
        (list
            (make-dominio :nome "Ruinas Ardentes" :elemento :pyro :dificuldade 2 :mora 230)
            (make-dominio :nome "Palácio Oculto" :elemento :hydro :dificuldade 4 :mora 350)
            (make-dominio :nome "Vale escuro" :elemento :electro :dificuldade 2 :mora 250)
            (make-dominio :nome "Vele sombrio" :elemento :cryo :dificuldade 3 :mora 300)
            (make-dominio :nome "Ruínas Abandonadas" :elemento :anemo :dificuldade 5 :mora 400))))

    (format t "Rota para a dificuldade maxima 3: ~%")
    (dolist (caminho (rota dominios 3))
        (format t "  . ~a~%" caminho))
    
    (format t "~% total de moras da lista inteira de dominios: ~a ~%" (reduce #'+ (mapcar #'recompensa-final dominios)))

     (let ((copia (copy-dominio (car dominios))))
            (setf (dominio-mora copia) 300)
            (format t "Moras da copia: ~a~%"
                (dominio-mora copia))
            (format t "Moras do original: ~a"
                (dominio-mora (car dominios))))))
(main)
  
