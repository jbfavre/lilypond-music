\version "2.22.0"
\language "english"
\include "libs/layouts/book-titling.ily"

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
%{ Default values from /usr/share/lilypond/2.20.0/scm/midi.scm
         ("ff" . 1)
         ("f" . 0.80)
         ("mf" . 0.65)
         ("mp" . 0.50)
         ("p" . 0.35)
         ("pp" . 0.20)
%}
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
\header {
  title = "Les petits riens"
  composer = "Jean Baptiste Favre"
  poet = "@ConteurDeNotes"
  opus = "Op. 3"
  dedication = \markup { \italic "Saint Pierre Quiberon, novembre 2020" }
  subtitle = "pour chœur à quatre voix et soliste"
  tagline = ""
  date = "Clichy la Garenne, mai 2021"
}

\paper {
  #(include-special-characters)
  #(set-paper-size "a4")
  top-margin = 1\cm
  bottom-margin = 1.1\cm
  left-margin = 1.5\cm
  right-margin = 1\cm
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Arial"
     #:sans "Cantarell thin"
    ))
%{  bookTitleMarkup = \markup \column {
    \fill-line { \fontsize #5 \fromproperty #'header:composer }
    \when-property #'header:date \fill-line { \combine \vspace #1.2 \fontsize #1 \sans \fromproperty #'header:date }
    \combine \null \vspace #14
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #4
    \fill-line { \fontsize #10 \fromproperty #'header:title }
    \combine \null \vspace #1
    \fill-line { \when-property #'header:subtitle \fontsize #3 \sans \fromproperty #'header:subtitle }
    \combine \null \vspace #1
    \fill-line { \postscript #"-10 0 moveto 20 0 rlineto stroke" }
    \when-property #'header:opus \fill-line { \combine \vspace #1.5 \fontsize #5 \sans \bold \fromproperty #'header:opus }
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #14
    \fill-line{
      \column{
        \when-property #'header:poet \fill-line {
          \concat { \typewriter "Paroles: " \fontsize #2 \italic \fromproperty #'header:poet }
        }
        \when-property #'header:arranger \fill-line {
          \concat { \typewriter "Arrangements: " \fontsize #2 \italic \fromproperty #'header:arranger }
        }
      }
    }
  }
  scoreTitleMarkup = \markup {
    \column {
      \vspace #0.5
      \fill-line {
        \line { "" }
        \center-column { \fontsize #6 \bold \fromproperty #'header:title }
        \line { "" }
      }
      \fill-line {
        \line { "" }
        \center-column { "" }
        \line {
          \right-column {
            \fontsize #1 \fromproperty #'header:composer
            \fontsize #0.8 \sans \fromproperty #'header:opus
          }
        }
      }
      \vspace #1
    }
  }%}
}
%\pageBreak
removeTags = #'(school)
keepTags   = #'(visuel notvideo)

% Controls Midi dynamics inclusion
% Used with \keepWithTag
% FiguredBass will be displayed if midiTag is set to "midi"
midiTag = "midi"
midiInstrumentName = "acoustic grand"

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

% Intro
intro_Sopranes = { r2 r r r }
intro_Altos    = { r2 r4. e8 a4 f e4 r4 }
intro_Tenors   = { r2 r r r }
intro_Basses   = { a4 a8 a e4 r8 e8 a,4 d e r4 }

% Lettre A
lettre_A_Couplet_Sopranes = { c4 b8 a b4 r4
                              c4 d8 c b4 r4
                              c8 d4 e8 d c b gs
                              a4 d b r4
                              }
lettre_A_Couplet_Altos    = { r8 e8 e fs gs4 r4
                              r8 e8 f? f gs4 r4
                              e4 fs8 fs gs4 r8 e8
                              f?4 f e r4
                              }
lettre_A_Couplet_Tenors   = { e4 c8 d r8 d8 c b
                              e4 d8 f e4 r4
                              r8 d8 d c b4 r8 b a4 a gs r
                              }
lettre_A_Couplet_Basses   = { a4 a8 a e4 r4
                              a4 d,8 d e4 r4
                              a4 a8 a e4 r8 e8
                              a,4 d e r4
                              }
lettre_A_Refrain_Sopranes = { c4 d8 d e4 r8 e8 d4 c b4 r4 }
%lettre_A_Refrain_Altos    = { r8 e8 g f r8 e8 a g r8 fs b a r8 a8 fs gs }
lettre_A_Refrain_Altos    = { r8 e8 g f r8 e8 a g r8 fs8 b a r8 a8 fs gs }
lettre_A_Refrain_Tenors   = { c4 b8 b a4 r8 e8 fs4 fs gs r4 }
lettre_A_Refrain_Basses   = { a4 b8 b c4 r8 c8 d4 d e4 r4 }

global = { \key a \minor \time 2/4 }

rightOne = {
  \global
  \intro_Sopranes
  % Lettre A
  \relative c'' \lettre_A_Couplet_Sopranes
  \relative c'' \lettre_A_Refrain_Sopranes
  % Lettre B
  s2*4
  s2*6
  s2*6
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
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
  s2*6 \break
  s2*5 \break
  s2*5 \break
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
}
rightOneLyrics = \lyricmode {
  % Lettre A
  Tom -- be la pluie, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges gris et blancs&nbsp;;
  Pas -- sent les jours, mais pas le temps.
  % Lettre B
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
}

rightTwo = {
  \global
  \relative c' \intro_Altos
  % Lettre A
  \relative c' \lettre_A_Couplet_Altos
  \relative c' \lettre_A_Refrain_Altos
  % Lettre B
  s2*4
  s2*6
  s2*6
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
}
rightTwoDynamics = {
  s2*4
  % Lettre A
  s2*6
  s2*6
  % Lettre B
  s2*4
  s2*6
  s2*6
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
}
rightTwoLyrics = \lyricmode {
  mais pas le temps.
  % Lettre A
  Tom -- be la pluie, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges blancs&nbsp;;
  Pas -- sent les, les jours mais, mais pas le, pas le temps.
  % Lettre B
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
}

leftOne =  {
  \global
  \intro_Tenors
  % Lettre A
  \relative c' \lettre_A_Couplet_Tenors
  \relative c' \lettre_A_Refrain_Tenors
  % Lettre B
  s2*4
  s2*6
  s2*6
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
}
leftOneDynamics = {
  s2*4
  % Lettre A
  s2*6
  s2*6
  % Lettre B
  s2*4
  s2*6
  s2*6
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
}
leftOneLyrics = \lyricmode {
  % Lettre A
  Tom -- be la la plui -- e, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges blancs&nbsp;;
  Pas -- sent les jours, mais pas le temps.
  % Lettre B
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
  }

leftTwo = {
  \global
  \relative f \intro_Basses
  % Lettre A
  \relative f \lettre_A_Couplet_Basses
  \relative c \lettre_A_Refrain_Basses
  % Lettre B
  s2*4
  s2*6
  s2*6
  % Lettre C
  % Lettre D
  % Lettre E
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
  % Lettre F
  \set Score.repeatCommands =
    #(list(list 'volta "1.-3.") 'start-repeat)
    \epilogue_Basses \bar ":|."
  \break
  \final_Basses
  \set Score.repeatCommands = #'((volta #f))
  \bar ".|" %}
}
leftTwoDynamics = {
  s2*4
  % Lettre A
  s2*6
  s2*6
  % Lettre B
  s2*4
  s2*6
  s2*6
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
}
leftTwoLyrics = \lyricmode {
  Pas -- sent les jours, mais pas le temps.
  % Lettre A
  Tom -- be la pluie, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges blancs&nbsp;;
  Pas -- sent les jours, mais pas le temps.
  % Lettre B
  % Lettre C
  % Lettre D
  % Lettre E
  % Lettre F
  }

choirStaff = \new ChoirStaff
  <<
    \new Dynamics = "rightOneDynamics" { \rightOneDynamics }
    \new Staff = "rightOne" \with { midiInstrument = "acoustic grand"
                                    instrumentName = "Sopranos"
                                    shortInstrumentName = "S." }
                                    <<
                                      \new Voice = "rightOneVoice" { \clef treble \rightOne }
                                      \new Lyrics = "rightOneLyrics" { \lyricsto "rightOneVoice" { \rightOneLyrics } }
                                      \tag #'midi' \new Voice = "righOneDynamics" { \rightOneDynamics }
                                    >>
    \new Dynamics = "rightTwoDynamics" { \rightTwoDynamics }
    \new Staff = "rightTwo" \with { midiInstrument = "acoustic grand"
                                    instrumentName = "Altos"
                                    shortInstrumentName = "A." }
                                    <<
                                      \new Voice = "rightTwoVoice" { \clef treble \rightTwo }
                                      \new Lyrics = "rightTwoLyrics" { \lyricsto "rightTwoVoice" { \rightTwoLyrics } }
                                      \tag #'midi' \new Voice = "righTwoDynamics" { \rightTwoDynamics }
                                    >>
    \new Dynamics = "leftOneDynamics" { \leftOneDynamics }
    \new Staff = "leftOne" \with { midiInstrument = "acoustic grand"
                                   instrumentName = "Ténors"
                                   shortInstrumentName = "T." }
                                   <<
                                     \new Voice = "leftOneVoice" { \clef "treble_8" \leftOne }
                                     \new Lyrics = "leftOneLyrics" { \lyricsto "leftOneVoice" { \leftOneLyrics } }
                                     \tag #'midi' \new Voice = "leftOneDynamics" { \leftOneDynamics }
                                   >>
    \new Dynamics = "leftTwoDynamics" { \dynamicUp \leftTwoDynamics }
    \new Staff = "leftTwo" \with { midiInstrument = "acoustic grand"
                                   instrumentName = "Basses"
                                   shortInstrumentName = "B." }
                                   <<
                                     \new Voice = "leftTwoVoice" { \clef bass \leftTwo }
                                     \new Lyrics = "leftTwoLyrics" { \lyricsto "leftTwoVoice" { \leftTwoLyrics } }
                                     \tag #'midi' \new Voice = "leftTwoDynamics" { \leftTwoDynamics }
                                   >>
  >>

\score {
  \removeWithTag \removeTags \keepWithTag visuel \choirStaff
  \layout {
    \context {
      \FiguredBass
      \override BassFigure #'font-size = #-1
    }
  }
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