\version "2.20.0"
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
  poet = "Conteur de Notes"
  opus = "Op. 3"
  dedication = \markup { \italic "Saint Pierre Quiberon, novembre 2020" }
  subtitle = "pour chœur à quatre voix et soliste baryton"
  tagline = ""
  date = "Saint Pierre Quiberon, novembre 2020"
}

%{
\header {
  dedication = "dédicace"
  title = "Titre"
  subtitle = "sous-titre"
  subsubtitle = "sous-sous-titre"
  instrument = "pour piano"
  composer = "Jean Baptiste Favre"
  arranger = "Jean Baptiste Favre"
  poet = "Jean Baptiste Favre"
  meter = "mètre"
  piece = "pièce"
  opus = "op. ?"
  copyright = "2020"
  tagline = "slogan"
}
%}
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
  min-systems-per-page = 3
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
refrain = \lyricmode {
  Pas -- sent les jours, mais pas le temps.
}
refrain_deux = \lyricmode {
  Pas -- sent les, les jours mais, mais pas le pas le temps.
}
refrain_trois = \lyricmode {
  Pas -- sent les jours mais, mais pas le temps.
}
strophe_un = \lyricmode {
  Tom -- be la pluie, souf -- fle le vent,
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

% Basse
couplet_Un_Basses = \relative f { e4 e8 e b4 r8 b8 e4 a, b4 r4 }
couplet_Deux_Basses = \relative f, { e4\mf e8 e b'4 r8 b8 e4 a, b4 r4 }

% Couplet A
couplet_A_Sopranes = \relative c'' { g4 fs8 e fs4 r g a8 g fs4 r4 }
couplet_A_Altos = \relative c' { r8 e a g fs4 r r8 e fs e ds4 r }
couplet_A_Tenors = \relative f { r8 b8 b cs ds4 r r8 b8 c? c8 ds4 r r8 b8 b cs ds4 r r8 b8 c? c8 ds4 r }
% Couplet B
couplet_B_Sopranes = \relative c' { r8 e8 fs g ds4 r4 r8 b c?8 c b4 r }
couplet_B_Altos = \relative c'' { g4 a8 g fs4 r g a8 g fs4 r }
couplet_B_Altos_Bis = \relative c'' { b4 a8 b b4 r g a8 g fs4 r }
couplet_B_Tenors = \relative c' { r8 e8 fs g ds4 r4 r8 b c?8 e ds4 r }
couplet_B_Tenors_Bis = \relative f' { g4 fs8 e fs4 r r8 e8 fs e ds4 r }
% Couplet C
couplet_C_Sopranes = \relative c'' { r8 e fs g fs4 r g4 a8 g fs4 r }
couplet_C_Altos = \relative c'' { r8 b8 a g b4 r g a8 g fs4 r }
couplet_C_Altos_Bis = \relative c'' { g4 a8 a b4 r r8 g fs e ds4 r }
couplet_C_Tenors = \relative f' { g4 fs8 e ds4 r r8 b cs cs ds4 r }
couplet_C_Tenors_Bis = \relative f { b4 c?8 c ds4 r r8 b c? c b4 r }
% Couplet D
couplet_D_Sopranes = \relative c'' { e4 e8 e fs4 r c!4 c!8 c! b4 r }
couplet_D_Altos = \relative c'' { g4 a8 a b4 r a4 a8 g fs4 r }
couplet_D_Tenors = \relative f { r8 b b cs ds4 r r8 c e e ds4 r }
couplet_D_Tenors_Bis = \relative f { r8 b b cs ds4 r r8 c e e ds4 r }

conclusion_Sopranes = \relative c'' { b4\mf a8 a b4 r b4 b8 c b4 r b4 a8 a b4 r b4 b8 c b4 r b4 c d a8 (cs) ds4 r  }
conclusion_Altos = \relative c'' { g4\mf g8 g fs4 r g4 g8 e fs4 r g4 g8 g fs4 r g4 g8 e fs4 r g4 fs g e4 ds4 r }
conclusion_Tenors = \relative f' { e4\mf cs8 cs ds4 r4 e g8 e ds4 r e4 cs8 cs ds4 r4 e g8 e ds4 r e c b a fs4  r }
conclusion_Basses = \relative f { \couplet_Deux_Basses \break \couplet_Deux_Basses \break e,4 fs g a4 b4 r \break }
conclusion_Soliste = \relative f { r8\f b a g fs4 r8 g e8 (fs) g (a) b4 r4 r8\f b a g fs4 r4 e8 (fs) g a b4 r4 r8 b a g g b d cs b4 r }

epilogue_Sopranes = \relative c'' { \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
                                    r8\startTextSpan b r g r a r b8 r8 b r g r a r b8\stopTextSpan }
epilogue_Altos = \relative c'' { \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
                                 r4\startTextSpan g8 e r4 fs8 fs r4 g8 e r4 fs8 fs\stopTextSpan }
epilogue_Tenors = \relative f' { \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
                                 r8\startTextSpan e r b8 r8 c r ds8 r8 e r b8 r8 c r ds8\stopTextSpan }
epilogue_Basses = \relative f { \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
                                e8\startTextSpan r g r fs r b, r e8 r g r fs r b, r\stopTextSpan }
final_Sopranes = \relative c'' { bf2\fermata c2\fermata <c d>\fermata <b e>2\fermata }
final_Altos = \relative c'' { g2\fermata a\fermata a\fermata b2\fermata }
final_Tenors = \relative f' { e2\fermata e2\fermata <d fs>\fermata <e gs>2\fermata }
final_Basses = \relative f { c2\fermata <a a'>2\fermata <fs fs'>\fermata <e e'>2\fermata }

% Parties de basses communes
refrain_Un_Basse = \relative f, { \break e4 fs8 fs g4 r8 g8 a4 a4 b4 r }
refrain_Deux_Basse = \relative f, { e4. e8 fs8 fs4 fs8 a4 a b r }
refrain_Trois_Basse = \relative f, { e4. e8 fs8 fs4 fs8 a4 a b2\fermata }
% Refrain A
refrain_A_Soprane = \relative c''' { g8 fs4 d8 b4 r8 b cs4 cs b4 r }
refrain_A_Alto = \relative c' { e4 a8 a g4 r8 g8 e4 fs4 fs4 r }
refrain_A_Tenor = \relative f { r8 b d c r8 b8 e d8 r8 cs fs e r8 e cs8 ds8 }
% Refrain B
refrain_B_Soprane = \relative c'' { e4 fs8 e d4 e8 (d) c4 c b r }
refrain_B_Alto = \relative c'' { g4 a8 g a4 r8 a a8 (g) fs4 fs r }
refrain_B_Tenor = \relative f { r8 b c b d4 r8 d e4 e ds r }
% Refrain C
refrain_C_Soprane = \relative c'' { g'4 fs8 e d4 r8 b cs4 e8 (fs) ds4 r }
refrain_C_Alto = \relative c'' { r8 b fs fs d4 r4 r8 g8 g fs fs4 r }
refrain_C_Tenor = \relative f { r8 b c? c b4 r r8 e cs cs b4 r }
% Refrain D
refrain_D_Soprane = \relative c''' { g4 fs8 e d4 c8 (b) c4 c b4 r }
refrain_D_Alto = \relative c'' { b4 a8 g a4 a a a fs4 r }
refrain_D_Tenor = \relative f { r8 b4 b8 r8 d!8 fs d r8 e8 fs e ds4 r }

refrain_E_Soprane = \relative c''' { g4 fs8 e d4 c8 (b) c4 c b2\fermata }
refrain_E_Alto = \relative c'' { b4 a8 g a4 a a a fs2\fermata }
refrain_E_Tenor = \relative f { r8 b4 b8 r8 d!8 fs d r8 e8 fs e ds2\fermata }

global = { \key e \minor \time 2/4 }

rightOne = {
  \global
  % Lettre A
  r2 r r r r2 r r r \transpose g g' \couplet_A_Sopranes \refrain_A_Soprane
  % Lettre B
  r2 r r r r2 r r r \transpose e e' \couplet_B_Sopranes \refrain_B_Soprane
  % Lettre C
  r2 r r r r2 r r r \couplet_C_Sopranes \refrain_C_Soprane
  % Lettre D
  r2 r r r r2 r r r \couplet_D_Sopranes \refrain_D_Soprane
  % Lettre E
  r2 r r r \conclusion_Sopranes \refrain_E_Soprane
  % Lettre F
  \epilogue_Sopranes \final_Sopranes
}
rightOneDynamics = {
  % Lettre A
  s2*4 s2*4 s2*4 s2*4
  % Lettre B
  s2*4 s2*4 s2\mp\< s8 s8\! s4 s8 s8\> s4 s8 s8\! s4 s2\mf\< s8 s8\! s4\> s2 s8 s8\!\p s4
  % Lettre C
  s2*4 s2*4 s2*4 s2*4
  % Lettre D
  s2*4 s2*4 s2*4 s2*4
  % Lettre E
  s2*4 s2*4 s2*4 s2*4
  % Lettre F
  s2*4 s2*4
}
rightOneLyrics = \lyricmode {
  % Lettre A
  \strophe_un
  % Lettre B
  \strophe_deux
  % Lettre C
  \strophe_trois
  % Lettre D
  \strophe_quatre
  % Lettre E
  \refrain \refrain \strophe_conclusion_accompagnement \refrain
  % Lettre F
  \refrain Pas&nbsp;! Pas le temps&nbsp;!
}

rightTwo = {
  \global
  % Lettre A
  r2 r r r \couplet_A_Sopranes \couplet_A_Altos \refrain_A_Alto
  % Lettre B
  r2 r r r \couplet_B_Altos \couplet_B_Altos_Bis \refrain_B_Alto
  % Lettre C
  r2 r r r \couplet_C_Altos \couplet_C_Altos_Bis \refrain_C_Alto
  % Lettre D
  r2 r r r \couplet_D_Altos \couplet_D_Altos \refrain_D_Alto
  % Lettre E
  r2 r r r \conclusion_Altos \refrain_E_Alto
  % Lettre F
  \epilogue_Altos \final_Altos
}
rightTwoDynamics = {
  % Lettre A
  s2*4 s2*4 s2*4 s2*4
  % Lettre B
  s2*4 s2\mp s2*3 s2*4 s2 s4 s8 s8\> s2 s8 s8\!\p s4
  % Lettre C
  s2*4 s2*4 s2*4 s2*4
  % Lettre D
  s2*4s2*4 s2*4 s2*4
  % Lettre E
  s2*4 s2*4 s2*3 s2*4
  % Lettre F
  s2*4 s2*4
}
rightTwoLyrics = \lyricmode {
  % Lettre A
  \strophe_un \refrain
  % Lettre B
  \refrain \refrain \refrain
  % Lettre C
  \strophe_trois \refrain
  % Lettre D
  \strophe_quatre \refrain
  % Lettre E
  \refrain \refrain \strophe_conclusion_accompagnement \refrain
  % Lettre F
  \refrain Pas&nbsp;! Pas le temps&nbsp;!
}

leftOne =  {
  \global
  % Lettre A
  r2 r r r \couplet_A_Tenors  \refrain_A_Tenor
  % Lettre B
  r2 r r r \couplet_B_Tenors \couplet_B_Tenors_Bis  \refrain_B_Tenor
  % Lettre C
  r2 r r r \couplet_C_Tenors \couplet_C_Tenors_Bis \refrain_C_Tenor
  % Lettre D
  r2 r r r \couplet_D_Tenors \couplet_D_Tenors_Bis  \refrain_D_Tenor
  % Lettre E
  r2 r r r \conclusion_Tenors \refrain_E_Tenor
  % Lettre F
  \epilogue_Tenors \final_Tenors
}
leftOneDynamics = {
  % Lettre A
  s2*4 s2*4 s2*4 s2*4
  % Lettre B
  s2*4 s2\f\< s8 s8\! s4 s8 s8\> s4 s8 s8\! s4 s2\f\< s8 s8\! s4 s2\> s8 s8\! s4 s2\mf s4 s8 s8\> s2 s8 s8\!\p s4
  % Lettre C
  s2*4 s2*4 s2*4 s2*4
  % Lettre D
  s2*4s2*4 s2*4 s2*4
  % Lettre E
  s2*4 s2*4 s2*3 s2*4
  % Lettre F
  s2*4 s2*4
}
leftOneLyrics = \lyricmode {
  % Lettre A
  \refrain \refrain \refrain_deux
  % Lettre B
  \strophe_deux \refrain
  % Lettre C
  \refrain \refrain \refrain
  % Lettre D
  \refrain \refrain \refrain_trois
  % Lettre E
  \refrain \refrain \strophe_conclusion_accompagnement \refrain_trois
  % Lettre F
  \refrain
  Pas&nbsp;! Pas le temps&nbsp;!
  }

leftTwo = {
  \global
  % Lettre A
  \repeat unfold 3 { \couplet_Un_Basses } \refrain_Un_Basse \bar "||" \pageBreak
  % Lettre B
  \repeat unfold 3 { \couplet_Un_Basses }  \refrain_Deux_Basse \bar "||" \pageBreak
  % Lettre C
  \repeat unfold 3 { \couplet_Un_Basses }  \refrain_Un_Basse \bar "||" \pageBreak
  % Lettre D
  \repeat unfold 3 { \couplet_Un_Basses } \refrain_Deux_Basse \bar "||" \pageBreak
  % Lettre E
  <<
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
  \bar ".|"
}
leftTwoDynamics = {
  % Lettre A
  s2 s2*3\mark "A" s2*4 s2*4 s2*4
  % Lettre B
  s2*4\mf\mark "B" s2*4 s2*4 s2  s4 s8 s8\> s2 s8 s8\!\p s4
  % Lettre C
  s2*4\mark "C" s2*4 s2*4 s2*4
  % Lettre D
  s2*4\mark "D" s2*4 s2*4 s2*4
  % Lettre E
  s2*4\mark "E" s2*4 s2*3 s2*4
  % Lettre F
  s2*4\mark "F" s2*4
}
leftTwoLyrics = \lyricmode {
  % Lettre A
  \refrain \refrain \refrain \refrain
  % Lettre B
  \refrain \refrain \refrain \refrain
  % Lettre C
  \refrain \refrain \refrain \refrain
  % Lettre D
  \refrain \refrain \refrain \refrain
  % Lettre E
  \refrain \strophe_conclusion_soliste \refrain
  % Lettre F
  \refrain
  Pas&nbsp;! Pas le temps&nbsp;!
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