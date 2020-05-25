\version "2.18.2"

% Used * for lyrics layout
#(define-markup-command (columns layout props args) (markup-list?)
   (let ((line-width (/ (chain-assoc-get 'line-width props
                         (ly:output-def-lookup layout 'line-width))
                        (max (length args) 1))))
     (interpret-markup layout props
       (make-line-markup (map (lambda (line)
                                (markup #:pad-to-box `(0 . ,line-width) '(0 . 0)
                                  #:override `(line-width . ,line-width)
                                  line))
                               args)))))

% Used in Psaumes/* & ChantsLiturgiques/*
silence = #(
  define-music-function (parser location arg) (ly:music?) (
    map-some-music (
      lambda (m) (
        and (music-is-of-type? m 'note-event)
        (make-music 'SkipEvent m)
      )
    ) arg
  )
)

% Used in Psaumes/* & ChantsLiturgiques/*
markCustom =
   #(define-music-function
     (parser location markName)
     (markup?)
   #{
     \once \override Score.RehearsalMark.self-alignment-X = #LEFT
     { \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps #markName }} }
   #})

% Used in Psaumes/*
parenthesizeAll = #(define-music-function (parser location note) (ly:music?)
#{
  \once \override ParenthesesItem.font-size = #-1
  \once \override ParenthesesItem.stencil = #(lambda (grob)
       (let* ((acc (ly:grob-object (ly:grob-parent grob Y) 'accidental-grob))
              (dot (ly:grob-object (ly:grob-parent grob Y) 'dot)))
         (if (not (null? acc)) (ly:pointer-group-interface::add-grob grob 'elements acc))
         (if (not (null? dot)) (ly:pointer-group-interface::add-grob grob 'elements dot))
         (parentheses-item::print grob)))
  \parenthesize $note
#})

% Used to accelerate Psalmody
% Avoid endless \breve notes
tAcceBreve = {
  \set Score.tempoHideNote = ##t
  \tempo 2=100
}
tAcceRonde = {
  \set Score.tempoHideNote = ##t
  \tempo 2=80
}
tRall = {
  \set Score.tempoHideNote = ##t
  \tempo 4=60
}
