\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

headers = \header {
  title = "Stabat Mater"
  subtitle = ""
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  dedication = "Clichy la Garenne, septembre 2021"
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Répons     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
reponsRhythms = {
  \key f \major \time 2/4
  s2*4 \break
  s2*4 \break
  s2*4 \break
  s2*4 \break
  s2*4 \break
  s2*4 \break
  s2*4
  \bar "|." \break
  }
reponsSopranosMusic = \relative c' {
  d4. d8 f4 a a4. a8 b4 g8 (a)
  bf!4. g8 a4 gs a a a a \fermata
  }
reponsAltosMusic = \relative c' {
  a4. a8 cs4 cs ef4. ef8 d4 d
  d4. d8 f4 e cs e e e
  }
reponsTenorsMusic =  \relative c {
  f4. f8 a4 f a4. a8 g4 g
  g4. g8 d'4 d a bf! c cs
  }
reponsBassesMusic =  \relative c {
  d4. d8 cs4 cs c!4. c8 b4 b bf!4. bf8 a8 (a') b4 a g f e
  }
reponsLyrics = \lyricmode {
  Sta -- bat Ma -- ter do -- lo -- ro -- sa
  iu -- xta cru -- cem la -- cri -- mo -- sa,
  dum pen -- de -- bat Fi -- li -- us.

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
          \Staff
          %\RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
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

\bookpart { % Stance
  \FirstScorePaper
  \score {
    { % Partition Stance
      \new ChoirStaff = "ChoirStaff"
      {
        <<
          \new Staff = "reponsHighStaff" \with { instrumentName = \markup { \column { "S." "A." } } shortInstrumentName = \markup { \column { "S." "A." } } }
          <<
            \clef "treble"
            \new Voice = "reponsRhythms" { \reponsRhythms \bar "||" }
            \new Voice = "reponsSoprano" { \voiceOne \reponsSopranosMusic }
            \new Voice = "reponsAlto" { \voiceTwo \reponsAltosMusic }
          >>
          \new Lyrics \lyricsto "reponsSoprano" { \reponsLyrics }
          \new Staff  = "reponsLowStaff" \with { instrumentName = \markup { \column { "T." "B." } } shortInstrumentName = \markup { \column { "T." "B." } } }
          <<
            \clef "bass"
            \new Voice = "reponsRhythms" { \reponsRhythms }
            \new Voice = "reponsTenor" { \voiceOne \reponsTenorsMusic }
            \new Voice = "reponsBass" { \voiceTwo \reponsBassesMusic }
          >>
        >>
      }
    }
    \AllScoreLayout
    \FirstPageHeaders
  }
}