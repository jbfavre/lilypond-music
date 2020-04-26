
% Huge thanks to Jan Nieuwenhuizen for helping me with this!

#(define (grob-get-ancestor-with-interface grob interface axis)
  (let ((parent (ly:grob-parent grob axis)))
   (if (null? parent)
    #f
    (if (grob::has-interface parent interface)
     parent
     (grob-get-ancestor-with-interface parent interface axis)))))

#(define (grob-get-paper-column grob)
  (grob-get-ancestor-with-interface grob 'paper-column-interface X))

#(define (dump-spacetime-info grob)
  (let* ((extent       (ly:grob-extent grob grob X))
         (system       (ly:grob-system grob))
         (x-extent     (ly:grob-extent grob system X))
         (left         (car x-extent))
         (right        (cdr x-extent))
         (paper-column (grob-get-paper-column grob))
         (time         (ly:grob-property paper-column 'when 0))
         (cause        (ly:grob-property grob 'cause))
         (origin       (ly:event-property cause 'origin))
         (location     (ly:input-file-line-char-column origin))
         (file         (list-ref location 0))
         (line         (list-ref location 1))
         (char         (list-ref location 2))
         (column       (list-ref location 3))
         (pitch        (ly:event-property cause 'pitch))
         (midi-pitch   (if (ly:pitch? pitch) (+ 0.0 (ly:pitch-tones pitch)) "no pitch")))
   (if (not (equal? (ly:grob-property grob 'transparent) #t))
    (format #t "\nly2video: (~23,16f, ~23,16f) pitch ~d:~a:~a @ ~23,16f from ~a:~3d:~d"
                left right
                (ly:pitch-octave pitch)
                (ly:pitch-notename pitch)
                (ly:pitch-alteration pitch)
                (+ 0.0 (ly:moment-main time) (* (ly:moment-grace time) (/ 9 40)))
                file line char))))

#(define (dump-spacetime-info-barline grob)
  (let* ((extent       (ly:grob-extent grob grob X))
         (system       (ly:grob-system grob))
         (x-extent     (ly:grob-extent grob system X))
         (left         (car x-extent))
         (right        (cdr x-extent))
         (paper-column (grob-get-paper-column grob))
         (time         (ly:grob-property paper-column 'when 0))
         (cause        (ly:grob-property grob 'cause)))
   (if (not (equal? (ly:grob-property grob 'transparent) #t))
    (format #t "\nly2videoBar: (~23,16f, ~23,16f) @ ~23,16f"
                left right
                (+ 0.0 (ly:moment-main time) (* (ly:moment-grace time) (/ 9 40)))
                ))))

\layout {
  \context {
    \Voice
    \override NoteHead  #'after-line-breaking = #dump-spacetime-info
  }
  \context {
    \Staff
    \override BarLine  #'after-line-breaking = #dump-spacetime-info-barline
  }
  \context {
    \ChordNames
    \override ChordName #'after-line-breaking = #dump-spacetime-info
  }
}
\paper {
   page-breaking = #ly:one-line-breaking
   top-margin    = 148\mm
   bottom-margin = 148\mm
   left-margin   = 46\mm
   right-margin  = 46\mm
}
