\version "2.22.0"
\language "english"
\include "libs/commonFunctions.ily"

headers = \header {
  title = "Les petits riens"
  composer = "Jean Baptiste Favre"
  poet = "@ConteurDeNotes"
  opus = "Op. 3"
  dedication = \markup { \italic "Clichy la Garenne, mai 2021" }
  subtitle = "pour chœur à quatre voix"
  tagline = ""
  date = "Clichy la Garenne, avril 2021"
}

% Fragments

% Paroles
intro_un = \lyricmode {
  Pas -- sent les jours,
}
intro_deux = \lyricmode {
  Pas -- sent les jours, mais pas le temps.
}
refrain_un = {\intro_un \intro_deux}
refrain_deux = \lyricmode {
  Pas -- sent les, les jours mais, mais pas le, pas le temps.
}
refrain_trois = \lyricmode {
  Pas -- sent les jours mais, mais pas le temps.
}
strophe_un = \lyricmode {
  Tom -- be la pluie, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges "blancs ;"
}
strophe_un_alternate = \lyricmode {
  Tom -- be la la plui -- e, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges "blancs ;"
}
strophe_deux = \lyricmode {
  La ma -- rée monte, et puis des -- cend,
  Vol d'al -- ba -- tros, dans le cou -- "chant ;"
}
strophe_trois = \lyricmode {
  La vieil -- le~hor -- loge dans le sa -- lon,
  Son -- ne les heures et les sai -- sons;
}
strophe_quatre = \lyricmode {
  Pom -- mes au four, pou -- les au pot,
  Le thé au lait, les bons gâ -- teaux;
}
strophe_conclusion_soliste = \lyricmode {
  Un jour vien -- dra où, d'é -- phé -- mères,
  ces pe -- tits riens, bel -- les chi -- mères,
  De -- vien -- dront d'é -- ter -- nels ins -- tants;
}
strophe_conclusion_accompagnement = \lyricmode {
  d'é -- ter -- nels ins -- tants
}

% Refrain
refrain_Sopranes = { e4 d8 d e4 r8 e8
                     d4. c8 b4 r4 }
refrain_Altos    = { r8 e8 g f r8 e8 a g
                     r8 fs8 b a r8 a8 fs gs }
refrain_Tenors   = { c4 b8 a g4 r8 c8
                     a4 fs gs r4 }
refrain_Basses   = { a4 b8 b c4 r8 c8
                     d4 d e4 r4 }

refrain_Sopranes = { e4 d c r8 bf8
                     a8 (c) b! (a) a gs a b
                     }
refrain_Altos    = { a8 (g) g8 f f (e) r4
                     f4 fs e e
                     }
refrain_Tenors   = { c4 b g a
                     a b b d
                     }
refrain_Basses   = { a4 b c4 cs
                     d4 ds e e
                     }

% Lettre A
lettre_A_Intro_Sopranes = { r2 r r r }
lettre_A_Intro_Altos    = { r2 r4 r8 e8 e4 f? gs4 r4 }
lettre_A_Intro_Tenors   = { r2 r r r }
lettre_A_Intro_Basses   = { a4 a8 a e4 r8 e8 a,4 d e r4 }

lettre_A_Couplet_Sopranes = { e4 d8 c b4 b8 r8
                              a8 (b) c8 d e4 r4
                              r8 e8 d c b4 r8 b8
                              a8 b c d c8 (b) c (d)
                              }
lettre_A_Couplet_Altos    = { r8 e8 fs fs gs4 gs8 r
                              r8 e8 f? f gs4 r4
                              e4 fs8 fs gs4 r8 e8
                              e4 f! gs r4
                              }
lettre_A_Couplet_Tenors   = { c4 d8 d d4 d8 r8
                              c4 b8 b b4 r4
                              c4 c8 c b4 r8 b
                              c4 d d r
                              }
lettre_A_Couplet_Basses   = { a,4 a8 a e'4 e8 r8
                              a4 f8 f e4 r4
                              a,4 a8 a e'4 r8 e8
                              a4 f e r4
                              }

% Lettre B
lettre_B_Intro_Sopranes = { r2 r4 r8 e8
                            a4 b b r4
                            }
lettre_B_Intro_Altos    = { r2 r4 r8 e8
                            e4 fs gs r4
                            }
lettre_B_Intro_Tenors   = { a4 a8 a e'4 r8 e8
                            c8 (d) d4 d r4
                            }
lettre_B_Intro_Basses   = { a4 a8 a e4 r8
                            e8 a,4 d e r4
                            }

lettre_B_Couplet_Sopranes = { c4 b8 a b4 b8 r8
                              c4 d8 c b4 r4
                              e4 d8 c d4 r4
                              c4 c8 b b4 c8 (d)
                              }
lettre_B_Couplet_Altos = { g4 fs8 fs gs4 gs8 r8
                           g?4 f? gs r
                           a8 gs fs4 gs r8 gs
                           a8 (gs) fs4 gs r
                           }
lettre_B_Couplet_Tenors = { c8 e d4 d d8 r8
                            r8 c b c d4 r
                            c4 b8 a b4 r8 b8
                            e4 d d4 r
                           }
lettre_B_Couplet_Basses = { a8 a a4 e e8 r8
                            a4 d, e r
                            a4 a8 a e4 r8 e
                            a,4 d e4 r
                           }

% Lettre C
lettre_C_Intro_Sopranes = { a4 a8 a e'4 r8 e8 c8 (d) d (c) b4 r4 }
lettre_C_Intro_Altos    = { r2 r4 r8 e8 e4 fs gs r4 }
lettre_C_Intro_Tenors   = { r2 r r r }
lettre_C_Intro_Basses   = { a4 a8 a e4 r8 e8 a,4 d e r4 }

lettre_C_Couplet_Sopranes = { c4 b8 a b4 b8 r8
                              c4 d8 c b4 r4
                              e4 d8 c d4 d8 \breathe d
                              c4 c8 (b) b4 c8 (d)
                              }
lettre_C_Couplet_Altos = { g4 fs8 fs gs4 gs8 r
                           g?4 f?8 f gs4 r
                           a8 gs fs4 gs gs8 \breathe gs
                           a8 (gs) fs4 gs r
                           }
lettre_C_Couplet_Tenors = { c8 e d4 d d8 r
                            r8 c b c d4 r
                            c4 b8 a b4 b8 \breathe b8
                            e4 d d4 r
                           }
lettre_C_Couplet_Basses = { a8 a a4 e e8 r
                            a4 d,8 d e4 r
                            a4 a8 a e4 e8 \breathe e
                            a,4 d e4 r
                           }

% Lettre D
lettre_D_Couplet_Sopranes = { r8 c8 b8 a b4 r4
                              c4 d8 c b4 r4
                              e4 d8 c d4 r8 d8
                              c4 c8 (b) b4 c8 (d)
                              }
lettre_D_Couplet_Altos = { g4 fs8 fs gs4 r
                           g?4 f? gs r
                           a8 gs fs4 gs r8 gs
                           a8 (gs) fs4 gs r
                           }
lettre_D_Couplet_Tenors = { c8 e d4 d r
                            r8 c b c d4 r
                            c4 b8 a b4 r8 b8
                            e4 d d4 r
                           }
lettre_D_Couplet_Basses = { a8 a a4 e r
                            a4 d, e r
                            a4 a8 a e4 r8 e
                            a,4 d e4 r
                           }

% Lettre E
lettre_E_Couplet_Sopranes = { r8 e8 d c b4 r8 c8
                              a8 (b) c8 (d) c4 b8 r8
                              r8 e8 d c b4 r4
                              a8 (b) c d c4 b8 r8
                              r8 e8 d c c (e) e (d) d (c) c (b) b4 c8 (d)
                              }
lettre_E_Couplet_Altos    = { e4 fs8 fs gs4 r8 gs8
                              a4 a gs4 gs8 r8
                              e4 fs8 fs gs4 r8 gs8
                              a4 a gs gs8 r8
                              a4 f e2 f4 fs gs r
                              }
lettre_E_Couplet_Tenors   = { c4 d8 d d4 r8 d
                              c4 d d d8 r8
                              c4 d8 d d4 r8 d
                              c4 d d d8 r8
                              c4 b g a a (b) d r
                              }
lettre_E_Couplet_Basses   = { a,4 a8 a e'4 r8 e8
                              a4 f4 e4 e8 r8
                              a,4 a8 a e'4 r8 e8
                              a4 f e e8 r
                              a,4 b c cs d (ds) e4 r4
                              }

% Lettre F
lettre_F_Sopranes = { r8 e r c r d c b }
lettre_F_Altos    = { a8 r e r f r gs r }
lettre_F_Tenors   = { r8 c r e r f r d }
lettre_F_Basses   = { a8 r c r b r e, r }

lettre_F_Final_Sopranes = { c2 \fermata a2-- <gs b>-- cs \fermata }
lettre_F_Final_Altos    = { a2 \fermata f2-- f-- a \fermata }
lettre_F_Final_Tenors   = { ef2 \fermata d2-- d2-- e2 \fermata }
lettre_F_Final_Basses   = { f2 \fermata d2-- b-- a \fermata }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Draw partitions     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AllScoreLayout = \layout {
      ragged-last = ##f
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }

#(define absolute-volume-alist '())
#(set! absolute-volume-alist
      (append
       '(
         ("ff" . 0.8)
         ("f" . 0.80)
         ("mf" . 0.65)
         ("mp" . 0.50)
         ("p" . 0.35)
         ("pp" . 0.20)
         )
       absolute-volume-alist))
#(define-markup-command (arrow-at-angle layout props angle-deg length fill)
   (number? number? boolean?)
   (let* (
          ;; PI-OVER-180 and degrees->radians are taken from flag-styles.scm
          (PI-OVER-180 (/ (atan 1 1) 45))
          (degrees->radians (lambda (degrees) (* degrees PI-OVER-180)))
          (angle-rad (degrees->radians angle-deg))
          (target-x (* length (cos angle-rad)))
          (target-y (* length (sin angle-rad))))
     (interpret-markup layout props
                       (markup
                        #:translate (cons (/ target-x 2) (/ target-y 2))
                        #:rotate angle-deg
                        #:translate (cons (/ length -2) 0)
                        #:concat (#:draw-line (cons length 0)
                                              #:arrow-head X RIGHT fill)))))

splitStaffBarLineMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \combine
    \arrow-at-angle #45 #(sqrt 8) ##f
    \arrow-at-angle #-45 #(sqrt 8) ##f
}

splitStaffBarLine = {
  \once \override Staff.BarLine.stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob splitStaffBarLineMarkup)
        0))
  \break
}

\paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  indent = 1\cm
  % Plan for recto-verso printing with inner margin
  two-sided = ##t
  inner-margin =  2\cm
  outer-margin = 1.5\cm

  oddFooterMarkup = {}
  #(include-special-characters)

  markup-system-spacing = #'((basic-distance . 30)
     (minimum-distance . 30)
     (padding . 5)
     (stretchability . 5))
  top-markup-spacing = #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))
  top-system-spacing = #'((basic-distance . 6)
     (minimum-distance . 6)
     (padding . 6)
     (stretchability . 5))
  system-system-spacing = #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))
  scoreTitleMarkup = \markup \columns {
    \fill-line {
        \column {
          \line {
            \left-column {
              \fontsize #8 \sans \fromproperty #'header:title
              \fontsize #1 \typewriter \fromproperty #'header:subtitle
            }
          }
        }
        \column {
          \line {
            \fontsize #-1
            \left-column {
              \line { \concat { \typewriter "Paroles&nbsp;:&nbsp;" \sans \fromproperty #'header:poet \bold " " } }
              \line { \concat { \typewriter "Musique&nbsp;:&nbsp;" \sans \fromproperty #'header:composer \bold " " } }
              \typewriter \italic \fromproperty #'header:dedication
            }
          }
        }
      }
  }
  oddFooterMarkup = {}
}

removeTags = #'(school)
keepTags   = #'(visuel notvideo)

% Controls Midi dynamics inclusion
% Used with \keepWithTag
% FiguredBass will be displayed if midiTag is set to "midi"
midiTag = "midi"
midiInstrumentName = "acoustic grand"

global = { \key a \minor \time 2/4 }

rightOne = {
  \global
  \relative c'' \lettre_A_Intro_Sopranes
  % Lettre A
  \relative c'' \lettre_A_Couplet_Sopranes
  \relative c'' { e4 d c r8 bf8
                  a8 (c) b! (a) a gs a b }
  % Lettre B
  \relative c'' \lettre_B_Couplet_Sopranes
  \relative c'' \refrain_Sopranes
  % Lettre C
  \relative c'' \lettre_C_Couplet_Sopranes
  \relative c'' \refrain_Sopranes
  % Lettre D
  \relative c'' \lettre_D_Couplet_Sopranes
  \relative c'' \refrain_Sopranes
  % Lettre E
  \relative c'' \lettre_E_Couplet_Sopranes
  \relative c'' { e4 d c r8 bf8
                  a8 (c) b! (a) a gs a b cs2 \fermata
                  }
  % Lettre F
  \relative c'' \repeat unfold 2 \lettre_F_Sopranes
  \relative c'' \lettre_F_Final_Sopranes
}
rightOneDynamics = {
  s2*4
  % Lettre A
  \mark "A"
  s2*2 \break
  s2*6 \break
  s2*4 \break
  % Lettre B
  \mark "B"
  s2*4 \break
  s2*4 \break
  s2*4 \break
  % Lettre C
  \mark "C"
  s2*4 \break
  s2*4 \break
  s2*4 \break
  % Lettre D
  \mark "D"
  s2*4 \break
  s2*4 \break
  s2*4 \break
  % Lettre E
  \mark "E"
  s2*4 \break
  s2*4 \break
  s2*4 \break
  s2*5 \break
  % Lettre F
  \mark "F"
  \set Score.repeatCommands = #(list(list 'volta "1.-3.") 'start-repeat)
  \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
  s8\startTextSpan s4. s2 s2 s4. s8\stopTextSpan \bar ":|."
  \break
  s2*4
  \set Score.repeatCommands = #'((volta #f))
  \bar ".|"
}
rightOneLyrics = \lyricmode {
  % Lettre A
  Tom -- be la plui -- e, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges gris et blancs&nbsp;;
  Pas -- sent les jours, mais pas le temps, pas le temps.
  % Lettre B
  %mais pas le temps.
  La ma -- rée mon -- te, et puis des -- cend
  Vol d'al -- ba -- tros, dans le cou -- chant
  Pas -- sent les jours, mais pas le temps, pas le temps
  % Lettre C
  La vieil -- le~hor -- log -- e dans le sa -- lon
  Son -- nent les heu -- res et les sai -- sons
  Pas -- sent les jours, mais pas le temps, pas le temps
  % Lettre D
  Pom -- mes au four, pou -- les au pot,
  Le thé au lait, les bons gâ -- teaux
  Pas -- sent les jours, mais pas le temps, pas le temps
  % Lettre E
  Un jour vien -- dra, où d'é -- phé -- mè -- res
  Ces pe -- tits riens, bel -- les chi -- mè -- res
  De -- vien -- dront d'é -- ter -- nels ins -- tants&nbsp;!
  Pas -- sent les jours, mais pas le temps, mais pas le temps&nbsp;!
  % Lettre F
  Pas -- sent les jours mais, mais pas, pas le temps
  Pas&nbsp;! Pas le temps&nbsp;!
}

rightTwo = {
  \global
  \relative c' \lettre_A_Intro_Altos
  % Lettre A
  \relative c' \lettre_A_Couplet_Altos
  \relative c'' \refrain_Altos
  % Lettre B
  \relative c'' \lettre_B_Couplet_Altos
  \relative c'' \refrain_Altos
  % Lettre C
  \relative c'' \lettre_C_Couplet_Altos
  \relative c'' \refrain_Altos
  % Lettre D
  \relative c'' \lettre_D_Couplet_Altos
  \relative c'' \refrain_Altos
  % Lettre E
  \relative c' \lettre_E_Couplet_Altos
  \relative c'' { a8 (g) g8 f f (e) r4
                  f4 fs e2 e2 \fermata
                  }
  % Lettre F
  \relative c'' \repeat unfold 2 \lettre_F_Altos
  \relative c'' \lettre_F_Final_Altos
}
rightTwoDynamics = {
  s2*4
  % Lettre A
  s2*6
  s2*6
  % Lettre B
  s2*4
  s2*4
  s2*4
  % Lettre C
  s2*4
  s2*4
  s2*4
  % Lettre D
  s2*4
  s2*4
  s2*4
  % Lettre E
  s2*4
  s2*4
  s2*4
  s2*5
  % Lettre F
  \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
  s8\startTextSpan s4. s2 s2 s4. s8\stopTextSpan \bar ":|."
  s2*4
}
rightTwoLyrics = \lyricmode {
  mais pas le temps.
  % Lettre A
  Tom -- be la plui -- e, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges blancs&nbsp;;
  Pas -- sent les jours, mais pas le temps.
  % Lettre B
  %mais pas le temps.
  La ma -- rée mon -- te, et des -- cend
  Vol d'al -- ba -- tros, dans le cou -- chant
  Pas -- sent les jours, mais pas le temps
  % Lettre C
  La vieil -- le~hor -- log -- e dans le sa -- lon
  Son -- nent les heu -- res et les sai -- sons
  Pas -- sent les jours, mais pas le temps
  % Lettre D
  Pom -- mes au four, pou -- le~au pot,
  Le thé au lait, les bons gâ -- teaux
  Pas -- sent les jours, mais pas le temps
  % Lettre E
  Un jour vien -- dra, où d'é -- phé -- mè -- res
  Ces pe -- tits riens, bel -- les chi -- mè -- res
  De -- vien -- dront é -- ter -- nels&nbsp;!
  Pas -- sent les jours, mais pas le temps&nbsp;!
  % Lettre F
  Pas -- sent les jours, mais pas le temps
  Pas&nbsp;! Pas le temps&nbsp;!
}

leftOne =  {
  \global
  \relative c' \lettre_A_Intro_Tenors
  % Lettre A
  \relative c' \lettre_A_Couplet_Tenors
  \relative c' \refrain_Tenors
  % Lettre B
  \relative c' \lettre_B_Couplet_Tenors
  \relative c' \refrain_Tenors
  % Lettre C
  \relative c' \lettre_C_Couplet_Tenors
  \relative c' \refrain_Tenors
  % Lettre D
  \relative c' \lettre_D_Couplet_Tenors
  \relative c' \refrain_Tenors
  % Lettre E
  \relative c' \lettre_E_Couplet_Tenors
  \relative c' { c4 b8 a g4 a
                 a b b8 d c b a2 \fermata
                 }
  % Lettre F
  \relative c' \repeat unfold 2 \lettre_F_Tenors
  \relative c' \lettre_F_Final_Tenors
}
leftOneDynamics = {
  s2*4
  % Lettre A
  s2*6
  s2*6
  % Lettre B
  s2*4
  s2*4
  s2*4
  % Lettre C
  s2*4
  s2*4
  s2*4
  % Lettre D
  s2*4
  s2*4
  s2*4
  % Lettre E
  s2*4
  s2*4
  s2*4
  s2*5
  % Lettre F
  \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
  s8\startTextSpan s4. s2 s2 s4. s8\stopTextSpan \bar ":|."
  s2*4
}
leftOneLyrics = \lyricmode {
  % Lettre A
  Tom -- be la plui -- e, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges blancs&nbsp;;
  Pas -- sent les jours, mais pas le temps.
  % Lettre B
  %Pas -- sent les jours, mais pas le temps.
  La ma -- rée mon -- te, et puis des -- cend
  Vol d'al -- ba -- tros, dans le cou -- chant
  Pas -- sent les jours, mais pas le temps.
  % Lettre C
  La vieil -- le~hor -- log -- e dans le sa -- lon
  Son -- nent les heu -- res et les sai -- sons
  Pas -- sent les jours, mais pas le temps.
  % Lettre D
  Pom -- mes au four, pou -- les au pot,
  Le thé au lait, les bons gâ -- teaux
  Pas -- sent les jours, mais pas le temps.
  % Lettre E
  Un jour vien -- dra, où d'é -- phé -- mè -- res
  Ces pe -- tits riens, bel -- les chi -- mè -- res
  De -- vien -- dront é -- ter -- nels&nbsp;!
  Pas -- sent les jours, mais pas le temps, mais pas le temps&nbsp;!
  % Lettre F
  Pas -- sent les jours, mais pas le temps
  Pas&nbsp;! Pas le temps&nbsp;!
  }

leftTwo = {
  \global
  \relative f \lettre_A_Intro_Basses
  % Lettre A
  \relative f \lettre_A_Couplet_Basses
  \relative c \refrain_Basses
  % Lettre B
  \relative f \lettre_B_Couplet_Basses
  \relative c \refrain_Basses
  % Lettre C
  \relative f \lettre_C_Couplet_Basses
  \relative c \refrain_Basses
  % Lettre D
  \relative f \lettre_D_Couplet_Basses
  \relative c \refrain_Basses
  % Lettre E
  \relative f \lettre_E_Couplet_Basses
  \relative c { a4 b c4 cs
                d4 ds e2 a2 \fermata
                }
  %{<<
    {
      \set Staff.InstrumentName = #"Baryton"
      \set Staff.shortInstrumentName = #"Bar."
      \relative f { r2 r2 r2 r2 }
      \conclusion_Soliste
    }
    \new Staff \with { instrumentName = "Basses" shortInstrumentName = "B." }
    << \once \omit Staff.TimeSignature
      \new Voice = "basses2" { \clef bass \global \voiceTwo \couplet_Deux_Basses \conclusion_Basses }
      \new Lyrics = "basses2" { \lyricsto "basses2" { \refrain \refrain \strophe_conclusion_accompagnement } }
    >>
  >> \oneVoice
  \set Staff.InstrumentName = #"Basses"
  \set Staff.shortInstrumentName = #"B."
  \refrain_Trois_Basse \break
  %}
  % Lettre F
  \relative f \repeat unfold 2 \lettre_F_Basses \bar ":|."
  \relative f \lettre_F_Final_Basses
}
leftTwoDynamics = {
  s2*4
  % Lettre A
  s2*6
  s2*6
  % Lettre B
  s2*4
  s2*4
  s2*4
  % Lettre C
  s2*4
  s2*4
  s2*4
  % Lettre D
  s2*4
  s2*4
  s2*4
  % Lettre E
  s2*4
  s2*4
  s2*4
  s2*5
  % Lettre F
  \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
  s8\startTextSpan s4. s2 s2 s4. s8\stopTextSpan \bar ":|."
  s2*4
}
leftTwoLyrics = \lyricmode {
  Pas -- sent les jours, mais pas le temps.
  % Lettre A
  Tom -- be la plui -- e, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges blancs&nbsp;;
  Pas -- sent les jours, mais pas le temps.
  % Lettre B
  %Pas -- sent les jours, mais pas le temps.
  La ma -- rée mon -- te, et des -- cend
  Vol d'al -- ba -- tros, dans le cou -- chant
  Pas -- sent les jours, mais pas le temps.
  % Lettre C
  La vieil -- le~hor -- log -- e dans le sa -- lon
  Son -- nent les heu -- res et les sai -- sons
  Pas -- sent les jours, mais pas le temps.
  % Lettre D
  Pom -- mes au four, pou -- le~au pot,
  Le thé au lait, les bons gâ -- teaux
  Pas -- sent les jours, mais pas le temps.
  % Lettre E
  Un jour vien -- dra, où d'é -- phé -- mè -- res
  Ces pe -- tits riens, bel -- les chi -- mè -- res
  De -- vien -- dront é -- ter -- nels&nbsp;!
  Pas -- sent les jours, mais pas le temps&nbsp;!
  % Lettre F
  Pas -- sent les jours, mais pas le temps
  Pas&nbsp;! Pas le temps&nbsp;!
  }

choirStaff = \new ChoirStaff
  <<
    \new Dynamics = "rightOneDynamics" { \rightOneDynamics }
    \new Staff = "rightOne" \with { midiInstrument = "acoustic grand"
                                    instrumentName = "S."
                                    shortInstrumentName = "S." }
                                    <<
                                      \new Voice = "rightOneVoice" { \clef treble \rightOne }
                                      \new Lyrics = "rightOneLyrics" { \lyricsto "rightOneVoice" { \rightOneLyrics } }
                                      \tag #'midi' \new Voice = "righOneDynamics" { \rightOneDynamics }
                                    >>
    \new Dynamics = "rightTwoDynamics" { \rightTwoDynamics }
    \new Staff = "rightTwo" \with { midiInstrument = "acoustic grand"
                                    instrumentName = "A."
                                    shortInstrumentName = "A." }
                                    <<
                                      \new Voice = "rightTwoVoice" { \clef treble \rightTwo }
                                      \new Lyrics = "rightTwoLyrics" { \lyricsto "rightTwoVoice" { \rightTwoLyrics } }
                                      \tag #'midi' \new Voice = "righTwoDynamics" { \rightTwoDynamics }
                                    >>
    \new Dynamics = "leftOneDynamics" { \leftOneDynamics }
    \new Staff = "leftOne" \with { midiInstrument = "acoustic grand"
                                   instrumentName = "T."
                                   shortInstrumentName = "T." }
                                   <<
                                     \new Voice = "leftOneVoice" { \clef "treble_8" \leftOne }
                                     \new Lyrics = "leftOneLyrics" { \lyricsto "leftOneVoice" { \leftOneLyrics } }
                                     \tag #'midi' \new Voice = "leftOneDynamics" { \leftOneDynamics }
                                   >>
    \new Dynamics = "leftTwoDynamics" { \dynamicUp \leftTwoDynamics }
    \new Staff = "leftTwo" \with { midiInstrument = "acoustic grand"
                                   instrumentName = "B."
                                   shortInstrumentName = "B." }
                                   <<
                                     \new Voice = "leftTwoVoice" { \clef bass \leftTwo }
                                     \new Lyrics = "leftTwoLyrics" { \lyricsto "leftTwoVoice" { \leftTwoLyrics } }
                                     \tag #'midi' \new Voice = "leftTwoDynamics" { \leftTwoDynamics }
                                   >>
  >>

\score {
  \removeWithTag \removeTags \keepWithTag visuel \choirStaff
  \headers
  \AllScoreLayout
}

\score {
  \removeWithTag \removeTags \keepWithTag midi \choirStaff
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}