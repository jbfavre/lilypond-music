#(use-modules (ice-9 regex))
#(define-public string-upper-case #f)
#(define accented-char-upper-case? #f)
#(define accented-char-lower-case? #f)
#(let ((lower-case-accented-string "áàâäǎăāãåąæǣćĉčçďđðéèêëěĕēęəĝğģĥħíìîïǐĭīĩįĵķĺŀľļłńňñóòôöǒŏōõǫőøœŕřśŝšşťţþúùûüǔŭūųǘǜǚŵýŷÿȳźž")
(upper-case-accented-string "ÁÀÂÄǍĂĀÃÅĄÆǢĆĈČÇĎĐÐÉÈÊËĚĔĒĘƏĜĞĢĤĦÍÌÎÏǏĬĪĨĮĴĶĹĿĽĻŁŃŇÑÓÒÔÖǑŎŌÕǪŐØŒŔŘŚŜŠŞŤŢÞÚÙÛÜǓŬŪŲǗǛǙŴÝŶŸȲŹŽ"))
(define (group-by-2 chars result)
(if (or (null? chars) (null? (cdr chars)))
(reverse! result)
(group-by-2 (cddr chars)
(cons (string (car chars) (cadr chars))
result))))
(let ((lower-case-accented-chars
(group-by-2 (string->list lower-case-accented-string) (list)))
(upper-case-accented-chars
(group-by-2 (string->list upper-case-accented-string) (list))))
(set! string-upper-case
(lambda (str)
(define (replace-chars str froms tos)
(if (null? froms)
str
(replace-chars (regexp-substitute/global #f (car froms) str
'pre (car tos) 'post)
(cdr froms)
(cdr tos))))
(string-upcase (replace-chars str
lower-case-accented-chars
upper-case-accented-chars))))
(set! accented-char-upper-case?
(lambda (char1 char2)
(member (string char1 char2) upper-case-accented-chars string=?)))
(set! accented-char-lower-case?
(lambda (char1 char2)
(member (string char1 char2) lower-case-accented-chars string=?)))))

#(define-markup-command (smallCaps layout props text) (markup?)
(define (string-list->markup strings lower)
(let ((final-string (string-upper-case
(apply string-append (reverse strings)))))
(if lower
(markup #:fontsize -2 final-string)
final-string)))
(define (make-small-caps rest-chars currents current-is-lower prev-result)
(if (null? rest-chars)
(make-concat-markup (reverse! (cons (string-list->markup
currents current-is-lower)
prev-result)))
(let* ((ch1 (car rest-chars))
(ch2 (and (not (null? (cdr rest-chars))) (cadr rest-chars)))
(this-char-string (string ch1))
(is-lower (char-lower-case? ch1))
(next-rest-chars (cdr rest-chars)))
(cond ((and ch2 (accented-char-lower-case? ch1 ch2))
(set! this-char-string (string ch1 ch2))
(set! is-lower #t)
(set! next-rest-chars (cddr rest-chars)))
((and ch2 (accented-char-upper-case? ch1 ch2))
(set! this-char-string (string ch1 ch2))
(set! is-lower #f)
(set! next-rest-chars (cddr rest-chars))))
(if (or (and current-is-lower is-lower)
(and (not current-is-lower) (not is-lower)))
(make-small-caps next-rest-chars
(cons this-char-string currents)
is-lower
prev-result)
(make-small-caps next-rest-chars
(list this-char-string)
is-lower
(if (null? currents)
prev-result
(cons (string-list->markup
currents current-is-lower)
prev-result)))))))
(interpret-markup layout props
(if (string? text)
(make-small-caps (string->list text) (list) #f (list))
text)))
