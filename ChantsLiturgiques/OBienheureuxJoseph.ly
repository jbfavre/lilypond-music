\version "2.22.0"
\language "english"
\include "../libs/commonFunctions.ily"

headers = \header {
  title = "Ô bienheureux Joseph"
  %subtitle = \markup { \column { "Tropaire pour l'Épiphanie" "(Introït ou Communion)" } }
  composer = "Jean Baptiste Favre"
  poet = "Domaine public"
  dedication = "Clichy la Garenne, juin 2021"
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Répons     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
rhythms = {
  \markCustom "Prélude"
  \key e \minor \time 2/4
  s2*11 \break
  s2*7 \break
  s2*13 \break
  s2*8 \break
  s2*8 \break
  s2*8 \break
  s2*10
  \bar "|." \break
  }
gregorianMusic = {
  e4 d e g g fs e fs e d \bar "||"
  e4 d e fs g fs e e \breathe
  g4 a b b c b b b a a fs r4 \break
  a a b a g fs e d e g a g fs a b b a g a g fs e \breathe \break
  g e fs e d g a b c a b b b a \break b d d cs b a b a b cs d cs b r4 \break
  d d a b a fs e g g fs e d e d \break e g g a g fs a b b a fs a g fs e e \break
  }
sopranosMusic = {
  e4 d e g g fs e fs e2 d \bar "||"
  e4 d e2 \tuplet 3/2 { fs4 g fs } e2 e2 \breathe
  g2 a4 b \tuplet 3/2 { b c b } b2 b4 a a2 fs2 \breathe
  r4 a4 \tuplet 3/2 { a b a } g fs e2 d4 e g a g fs a b b2 r4 a g a g fs e2
  r4 g4 e fs e2 d g4 a b c a b b2
  r4 b4 \tuplet 3/2 { a b d } d cs b a \tuplet 3/2 { b2 a4 b cs d } cs2 b2 \breathe
  r4 d d a b a fs2 e4 g g fs e2 d
  r4 e4 d e \tuplet 3/2 { g g a } g fs4 a b b a fs a g fs e2 e
  }
altosMusic = \relative c' {
  }
tenorsMusic =  \relative c {
  }
bassesMusic =  \relative c {
  %e4 b e2 c2 a2 b b
  %c4 b a2 b e e \breathe
  %e4 d g g, a e' b2 c4 a g a b2 e2 s2*3
  %s2*7 s2 \breathe s2
  %s2*9
  %s2*3 r4 s2*6
  %s2*9
  }



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%          DRAW PARTITION          %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FirstPageHeaders = \headers
OtherPageHeaders = \header {
  title = ##f
  subtitle = ##f
  composer = ##f
  poet = ##f
  dedication = ##f
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

  %#(define fonts
  %  (set-global-fonts
  %   #:music "emmentaler"
  %   #:brace "emmentaler"
  %   #:roman "Latin Modern Roman"
  %   #:sans "Latin Modern Sans"
  %   #:typewriter "Monospace Regular"
  %  ))
  }
FirstScorePaper = \paper {
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
OtherScoresPaper = \paper {
    markup-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 5))
    top-markup-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
     4 (stretchability . 5))
    top-system-spacing = #'((basic-distance . 9)
       (minimum-distance . 9)
       (padding . 7)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
      (stretchability . 5))
  }
LastScorePaper = \paper {
    top-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 3)
       (padding . 1)
       (stretchability . 10))
    system-system-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 1)
       (stretchability . 10))
   score-markup-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 1)
       (stretchability . 10))
    markup-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 3)
       (padding . 1)
       (stretchability . 10))
}
AllScoreLayout = \layout {
      ragged-last = ##f
      \context {
          \PianoStaff
          %\RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          %\RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Antienne          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  %\OtherScoresPaper
  \score {
    {
      \new ChoirStaff = "ChoirStaff"
      <<
        \new Staff = "HighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } }
        <<
          \clef "treble"
          \new Voice = "Rhythms" { \rhythms \bar "||" }
          \new Voice = "Soprano" { \voiceOne \relative c' \sopranosMusic }
          \new Voice = "Alto" { \voiceTwo \altosMusic }
        >>
        %\new Lyrics \lyricsto "Soprano" { \lyrics }
        \new Staff  = "LowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } }
        <<
          \clef "bass"
          \new Voice = "Rhythms" { \rhythms }
          \new Voice = "Tenor" { \voiceOne \tenorsMusic }
          \new Voice = "Bass" { \voiceTwo \bassesMusic }
        >>
      >>
    }
    \AllScoreLayout
    \FirstPageHeaders
  }
}
%{
\include "gregorian.ly"
\score {
  {
    <<
      \new VaticanaStaff{
        \new VaticanaVoice = "cantus" {
          \clef "vaticana-do3"
          \relative c \sopranosMusic
        }
      }
    >>
  }
  \AllScoreLayout
  \FirstPageHeaders
}
%}