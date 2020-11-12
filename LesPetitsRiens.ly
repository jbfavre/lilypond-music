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
refrain = \lyricmode {
  Pas -- sent les jours; mais pas le temps.
}
couplet_un = \lyricmode {
  Tom -- be la pluie, souf -- fle le vent,
  nu -- a -- ges gris, nu -- a -- ges "blancs ;"
}
couplet_deux = \lyricmode {
  La ma -- rée monte, et puis des -- cend,
  Vol d'al -- ba -- tros, dans le cou -- "chant ;"
}
couplet_trois = \lyricmode {
  La vieil -- le~hor -- loge dans le sa -- lon,
  Son -- ne les heures et les sai -- sons;
}
couplet_quatre = \lyricmode {
  Pom -- mes au four, pou -- les au pot,
  Le thé au lait, les bons gâ -- teaux;
}
couplet_conclusion = \lyricmode {
  Un jour vien -- dra où, d'é -- phé -- mères,
  ces pe -- tits riens, bel -- les chi -- mères,
  De -- vien -- dront d'é -- ter -- nels ins -- tants;
}

% Basse unique
couplet_Basses = \relative f { e4 e8 e b4 r8 b8 e4 a, b4 r4 }
couplet_Basses_Deux = \relative f, { e4\mf e8 e b'4 r8 b8 e4 a, b4 r4 }

% Couplet A
couplet_A_Sopranes = \relative c'' { g4 fs8 e fs4 r g a8 g fs4 r4 }
couplet_A_Altos = \relative c' { r8 e a g fs4 r r8 e fs e ds4 r }
couplet_A_Tenors = \relative f { r8 b8 b cs ds4 r r8 b8 c? c8 ds4 r r8 b8 b cs ds4 r r8 b8 c? c8 ds4 r }
couplet_A_Basses = \couplet_Basses
% Couplet B
couplet_B_Sopranes = \relative c' { r8 e8 fs g fs4 r4 r8 g8 a g fs4 r }
couplet_B_Altos = \relative c'' { b4 a8 b b4 r g a8 fs b4 r }
couplet_B_Tenors = \relative f' { g4 fs8 e ds4 r r8 e c?8 c ds4 r }
couplet_B_Basses = \couplet_Basses
% Couplet C
couplet_C_Sopranes = \relative c'' { r8 g' e e fs4 r e4 e8 e ds4 r }
couplet_C_Altos = \relative c'' { r8 g8 a a b4 r g a8 g fs4 r }
couplet_C_Altos_Bis = \relative c'' { g4 a8 a b4 r g a8 g fs4 r }
couplet_C_Tenors = \relative f' { e4 cs8 cs ds4 r r8 b c! c ds4 r }
couplet_C_Tenors_Bis = \relative f { b4 cs8 cs ds4 r r8 b c! c b4 r }
couplet_C_Basses = \couplet_Basses
% Couplet D
couplet_D_Sopranes = \relative c'' { e4 e8 e fs4 r c!4 c!8 c! b4 r }
couplet_D_Altos = \relative c'' { g4 a8 a b4 r a4 a8 g fs4 r }
couplet_D_Tenors = \relative f { r8 b b cs ds4 r r8 c e e ds4 r }
couplet_D_Tenors_Bis = \relative f { r8 b b cs ds4 r r8 c e e ds4 r }
couplet_D_Basses = \couplet_Basses

conclusion_Sopranes = \relative c'' { b4\mf a8 a b4 r b4 b8 c b4 r b4 a8 a b4 r b4 b8 c b4 r b4 c d a8 (cs) ds4 r  }
conclusion_Altos = \relative c'' { g4\mf g8 g fs4 r g4 g8 e fs4 r g4 g8 g fs4 r g4 g8 e fs4 r g4 fs g e4 ds4 r }
conclusion_Tenors = \relative f' { e4\mf cs8 cs ds4 r4 e g8 e ds4 r e4 cs8 cs ds4 r4 e g8 e ds4 r e c b a fs4  r }
conclusion_Basses = \relative f { \couplet_Basses_Deux \break \couplet_Basses_Deux \break e,4 fs g a4 b4 r \break }
conclusion_solo = \relative f { r8\f b a g fs4 r8 g e8 (fs) g (a) b4 r4 r8\f b a g fs4 r4 e8 (fs) g a b4 r4 r8 b a g g b d cs b4 r }

% Première Basse
refrain_Un_Basse = \relative f, { \break e4 fs8 fs g4 r8 g8 a4 a4 b4 r }
% Seconde Basse
refrain_Deux_Basse = \relative f, { e4. e8 fs8 fs4 fs8 a4 a b r }
% Troisième basse (conclusion)
refrain_Trois_Basse = \relative f, { e4. e8 fs8 fs4 fs8 a4 a b2 \fermata \break <a a'>2\ff\fermata <a' fs,>2\fermata <gs e,>2\fermata }
% Refrain A
refrain_A_Soprane = \relative c'' { e8 fs4 d8 b4 r8 b cs4 cs b4 r }
refrain_A_Alto = \relative c'' { g4 a8 a g4 r8 g8 e4 fs4 fs4 r }
refrain_A_Tenor = \relative f { r8 b d c r8 b8 e d8 r8 cs fs e r8 e cs8 ds8 }
refrain_A_Basse = \refrain_Un_Basse
% Refrain B
refrain_B_Soprane = \relative c'' { e4 fs8 e d4 e8 (d) c4 c b r }
refrain_B_Alto = \relative c'' { g4 fs8 g a4 r8 a a4 fs fs4 r }
refrain_B_Tenor = \relative f { r8 b a b d4 r8 d e4 e ds r }
refrain_B_Basse = \refrain_Deux_Basse
% Refrain C
refrain_C_Soprane = \relative c'' { g'4 fs8 e d4 e8 (d) cs4 cs b r }
refrain_C_Alto = \relative c'' { b4 a8 a g4 r4 a8 g fs4 fs r }
refrain_C_Tenor = \relative f' { e4 c b b e e e ds }
refrain_C_Basse = \refrain_Un_Basse
% Refrain D
refrain_D_Soprane = \relative c''' { g4 fs8 e d4 c8 (b) c4 c b4 r }
refrain_D_Alto = \relative c'' { b4 a8 g a4 a a a fs4 r }
refrain_D_Tenor = \relative f { r8 b4 b8 r8 d!8 fs d r8 e8 fs e ds4 r }
refrain_D_Basse = \refrain_Deux_Basse

refrain_E_Soprane = \relative c''' { g4 fs8 e d4 c8 (b) c4 c b2\fermata c2\ff\fermata d2\fermata e2\fermata }
refrain_E_Alto = \relative c'' { b4 a8 g a4 a a a fs2\fermata <e a>2\ff\fermata <d a'>2\fermata <e b'>2\fermata }
refrain_E_Tenor = \relative f { r8 b4 b8 r8 d!8 fs d r8 e8 fs e ds2\fermata <c e>2\ff\fermata <a fs'>2\fermata <gs gs'>2\fermata }
refrain_E_Basse = \refrain_Trois_Basse

global = { \key e \minor \time 2/4 }

rightOne = {
  \global
  s2*4 s2*4 \transpose g g' \couplet_A_Sopranes \refrain_A_Soprane
  s2*4 s2*4 \transpose e e' \couplet_B_Sopranes \refrain_B_Soprane
  s2*4 s2*4 \couplet_C_Sopranes \refrain_C_Soprane
  s2*4 s2*4 \couplet_D_Sopranes \refrain_D_Soprane
  s2*4 \conclusion_Sopranes \refrain_E_Soprane

  %\key g \major \transpose e g { s2*4 s2*4 \transpose e e' \couplet_B_Sopranes \refrain_B_Soprane }
  %\key b \minor \transpose e b, { s2*4 s2*4 \transpose e e' \couplet_B_Sopranes \refrain_B_Soprane }
  %s2*4 s2*4 \transpose g g' \couplet_A_Sopranes \refrain_A_Soprane
}
rightOneDynamics = {
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2*4 s2\mp\< s8 s8\! s4 s8 s8\> s4 s8 s8\! s4 s2\mf\< s8 s8\! s4\> s2 s8 s8\!\p s4
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2*4 s2*4 s2*4

  %s2*4 s2*4 s2\mf\< s8 s8\! s4 s8 s8\> s4 s8 s8\! s4 s2\mf\< s8 s8\! s4\> s2 s8 s8\!\p s4
  %s2*4 s2*4 s2*4 s2*4
}
rightOneLyrics = \lyricmode {
  \couplet_un
  \couplet_deux
  \couplet_trois
  \couplet_quatre
  \refrain \refrain d'é -- ter -- nels ins -- tants \refrain  Pas le temps!
}

rightTwo = {
  \global
  s2*4 \couplet_A_Sopranes \couplet_A_Altos \refrain_A_Alto
  s2*4 \couplet_B_Tenors \couplet_B_Altos \refrain_B_Alto
  s2*4 \couplet_C_Altos \couplet_C_Altos_Bis \refrain_C_Alto
  s2*4 \couplet_D_Altos \couplet_D_Altos \refrain_D_Alto
  s2*4 \conclusion_Altos \refrain_E_Alto

  %\key g \major \transpose e g { s2*4 \couplet_B_Tenors \couplet_B_Altos \refrain_B_Alto }
  %\key b \minor \transpose e b, { s2*4 \couplet_B_Tenors \couplet_B_Altos \refrain_B_Alto }
  %s2*4 \couplet_A_Sopranes \couplet_A_Altos \refrain_A_Alto
}
rightTwoDynamics = {
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2\mp s2*3 s2*4 s2 s4 s8 s8\> s2 s8 s8\!\p s4
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2*4 s2*4 s2*4

  %s2*4 s2\mp s2*3 s2*4 s2 s4 s8 s8\> s2 s8 s8\!\p s4
  %s2*4 s2*4 s2*4 s2*4
}
rightTwoLyrics = \lyricmode {
  \couplet_un \refrain
  \refrain \refrain \refrain
  \couplet_trois \refrain
  \couplet_quatre \refrain
  \refrain \refrain d'é -- ter -- nels ins -- tants \refrain  Pas le temps!
}

leftOne =  {
  \global
  s2*4 \couplet_A_Tenors  \refrain_A_Tenor
  s2*4 \couplet_B_Sopranes \couplet_B_Tenors  \refrain_B_Tenor
  s2*4 \couplet_C_Tenors \couplet_C_Tenors_Bis \refrain_C_Tenor
  s2*4 \couplet_D_Tenors \couplet_D_Tenors_Bis  \refrain_D_Tenor
  s2*4 \conclusion_Tenors \refrain_E_Tenor

  %\key g \major \transpose e g { s2*4 \couplet_B_Sopranes \couplet_B_Tenors  \refrain_B_Tenor }
  %\key b \minor \transpose e b, { s2*4 \couplet_B_Sopranes \couplet_B_Tenors  \refrain_B_Tenor }
  %s2*4 \couplet_A_Tenors \couplet_A_Tenors  \refrain_A_Tenor
}
leftOneDynamics = {
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2\f\< s8 s8\! s4 s8 s8\> s4 s8 s8\! s4 s2\f\< s8 s8\! s4 s2\> s8 s8\! s4 s2\mf s4 s8 s8\> s2 s8 s8\!\p s4
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2*4 s2*4 s2*4

  %s2*4 s2\f\< s8 s8\! s4 s8 s8\> s4 s8 s8\! s4 s2\f\< s8 s8\! s4 s2\> s8 s8\! s4 s2\mf s4 s8 s8\> s2 s8 s8\!\p s4
  %s2*4 s2*4 s2*4 s2*4
}
leftOneLyrics = \lyricmode {
  \refrain \refrain Pas -- sent les, les jours mais, mais pas le pas le temps.
  \couplet_deux \refrain
  \refrain \refrain Pas -- sent les jours, mais pas le temps.
  \refrain \refrain Pas -- sent les jours mais, mais pas le temps.
  \refrain \refrain d'é -- ter -- nels ins -- tants Pas -- sent les jours mais, mais pas le temps.  Pas le temps!
  }

leftTwo = {
  \global
  \mark "L-C-C-L / C-L-C-L" \couplet_A_Basses \mark "A" \couplet_A_Basses \couplet_A_Basses \break \refrain_A_Basse \bar "||" \break
  \couplet_B_Basses \mark "B" \repeat unfold 2 { \couplet_B_Basses \break }  \refrain_B_Basse \bar "||" \break
  \couplet_Basses \mark "C" \repeat unfold 2 { \couplet_C_Basses \break }  \refrain_C_Basse \bar "||" \break
  \couplet_D_Basses \mark "D" \repeat unfold 2 { \couplet_D_Basses \break } \refrain_D_Basse \bar "||" \break
  \couplet_Basses_Deux \break \mark "E"
  <<
    \new Staff = "solo" \with { instrumentName = "Baryton solo" shortInstrumentName = "solo" } <<
      \new Voice = "solo" { \clef bass \global \conclusion_solo }
      \new Lyrics = "solo" { \lyricsto "solo" \couplet_conclusion }
    >>
    { \voiceTwo \conclusion_Basses }
  >> \oneVoice \refrain_E_Basse \bar "||" \break

  %\key g \major \transpose e g { \couplet_B_Basses \mark "B" \repeat unfold 2 { \couplet_B_Basses \break }  \transpose e e' \refrain_B_Basse \bar "||" \break }
  %\key b \minor \transpose e b, { \couplet_B_Basses \mark "B" \repeat unfold 2 { \couplet_B_Basses \break }  \transpose e e' \refrain_B_Basse \bar "||" \break }
  %\couplet_A_Basses \mark "A" \repeat unfold 2 { \couplet_A_Basses \break } \refrain_A_Basse \bar "||" \break
}
leftTwoDynamics = {
  s2*4 s2*4 s2*4 s2*4
  s2\mf s2*3 s2*4 s2*4 s2  s4 s8 s8\> s2 s8 s8\!\p s4
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2*4 s2*4 s2*4
  s2*4 s2*4 s2*4 s2*4

  %s2\mf s2*3 s2*4 s2*4 s2  s4 s8 s8\> s2 s8 s8\!\p s4
  %s2*4 s2*4 s2*4 s2*4
}
leftTwoLyrics = \lyricmode {
  Passent… _ _ _ _ _ _ _ \refrain \refrain \refrain
  Passent… _ _ _ _ _ _ _ \refrain \refrain \refrain
  Passent… _ _ _ _ _ _ _ \refrain \refrain \refrain
  Passent… _ _ _ _ _ _ _ \refrain \refrain \refrain
  \refrain \refrain \refrain d'é -- ter -- nels ins -- tants \refrain Pas le temps!
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
