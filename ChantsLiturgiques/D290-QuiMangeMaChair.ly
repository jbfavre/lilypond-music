\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

\header {
  title = "Qui mange ma chair"
  composer = "Jacques Berthier"
  poet = "Didier Rimaud"
  }
solisteDynamics = {
  \key f \major \time 4/4 \tempo 4 = 60
  }

sopranosMusicA = \relative c' {
  \partial 2. s8 a8 d4 d8 d cs4. cs8 d4 d e4. e8 f4 f e4. e8 d4 d cs4. cs8
  d4 d8 d cs4. cs8 d4 d e4. e8 f4 f e4. d8 d4 cs4 d4 r8 a8 d4 d8 d
  }

altosMusicA = \relative c' {
  s8 a8 a4 a8 a a4. a8 a4 a c4. c8 c4 c c4. c8 a4 bf a4. a8
  a4 a8 a a4. a8 a4 a c4. c8 c4 c c4. a8 bf4 a a4 r8 a8 a4 a8 a
  }

tenorsMusicA =  \relative c {
  r8 e8 f4 f8 f \bar ".|:" e4. e8 f4 f \break
  g4. g8 a4 a g4. g8 f4 g e4. e8 f4 f8 f \break
  e4. e8 f4 f g4. g8 a4 a \break
  g4. f8 g (f) e4 d4 r8 e8 f4 f8 f \bar ":|."
  }

bassesMusicA =  \relative c {
  s8 a8
  d4 d8 d a4. a8 d4 d c4. c8 f4 f c4. c8 d4 g, a4. a8
  d4 d8 d a4. a8 d4 d c4. c8 f4 f c4. c8 g4 a4 d4 r8 a8 d4 d8 d
  }

Lyrics = \lyricmode {
  Qui man -- ge ma chair, et bois mon sang, de -- meure en moi, et moi en lui&nbsp;;
  Qui man -- ge ma chair, et bois mon sang, de -- meure en moi, et moi en lui.
  Qui man -- ge ma…
  }

coupletOne = \relative c' {
  r4 r8 f8 e d e e e e f d f a c4 g r8 a g f g4. e8 f4 a8 (g) e2 r8 f8 e d
  e8 e a e f d f a c4 g4 r8 a8 f a c4. a8 d4 cs d2 r2
  }
coupletOneLyrics = \lyricmode {
  Si vous ne man -- gez pas la chair du Fils de l'hom -- me,
  vous n'au -- rez pas la vie en vous.
  Si vous ne bu -- vez pas le sang du Fils de l'hom -- me,
  vous n'au -- rez pas la vie en vous.
  }
coupletTwo = \relative c'' {
  r4 r4 a4 a a a4. a8 c2 r8 f, f a c c g e f f bf bf a2 r4 a4
  a a a4. a8 c2 r4 a c d d cs d2 r2
  }
coupletTwoLyrics = \lyricmode {
  Je suis le pain vi -- vant&nbsp;: ce -- lui qui vient à moi n'au -- ra plus ja -- mais faim&nbsp;;
  ce -- lui qui croit en moi, plus ja -- mais n'au -- ra soif.
  }
coupletThree = \relative c' {
  r4 r4 r8 f8 e e e e f4 e8 f g4 c, r4 a'4 g4. g8 f f bf bf
  a4 r8 a a a g f e4 r8 a8 a a g f c'2 r8 a g f g4 g8 a bf d d cs d2 r2
  }
coupletThreeLyrics = \lyricmode {
  Ma chair est u -- ne vraie nour -- ri -- tu -- re, mon sang est u -- ne vraie bois -- son&nbsp;:
  si vous man -- gez ma chair, si vous bu -- vez mon sang, au der -- nier jour je vous res -- sus -- ci -- te -- rai.
  }
coupletFour = \relative c'' {
  r4 r4 r8 a8 a a a a a4. a8 c2 r4 a8 a c c g g f4 (bf) a2 r4 a4
  a4. e8 f f a a c4 c8 c a4. a8 c4 c8 d d4 (cs) d2 r2
  }
coupletFourLyrics = \lyricmode {
  Le vé -- ri -- ta -- ble pain du ciel, c'est mon Pè -- re qui le don -- ne.
  C'est moi qui suis le pain de Dieu, le vrai pain qui don -- ne la vi -- e&nbsp;!
  }
coupletFive = \relative c'' {
  r8 a8 a4 g8 f e4 e a4. f8 c'2 r4 a4 c c8 g f4 bf a a r8 f8 d f
  a4 a8 a a4 f c'2 a8a f a c4 c8 r8 d4 cs d2 r2
  }
coupletFiveLyrics = \lyricmode {
  Le pain que je don -- ne, c'est ma chair, la chair pour la vie du mon -- de.
  Tel est le pain qui des -- cend du ciel&nbsp;: Ce -- lui qui le man -- ge ne meurt pas&nbsp;!
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%          DRAW PARTITION          %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
scoreHeaders = \header {
  title = ##f
  subtitle = ##f
  composer = ##f
  poet = ##f
  subsubtitle = ##f
  dedication = ##f
}
scorePaper = \paper {
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    %two-sided = ##f
    oddFooterMarkup = {}
    #(include-special-characters)

    markup-system-spacing = #'((basic-distance . 5)
       (stretchability . 0))
%    system-system-spacing = #'((basic-distance . 0.1)
%                               (padding . 0)
%                               (stretchability . 0))
    bookTitleMarkup = \markup {
      \column {
        \columns {
          \fill-line {
            \column {
              \line {
                \left-column {
                  \fontsize #8 \sans \fromproperty #'header:title
                }
              }
            }
            \column {
              \line {
                \fontsize #-1
                \left-column {
                  \line { \concat { \typewriter "Paroles&nbsp;:&nbsp;" \sans \fromproperty #'header:poet \bold " " } }
                  \line { \concat { \typewriter "Musique&nbsp;:&nbsp;" \sans \fromproperty #'header:composer \bold " " } }
                }
              }
            }
          }
        }
      }
    }
  }
AllScoreLayout = \layout {
      #(layout-set-staff-size 16)
      ragged-last = ##f
      ragged-last-bottom = ##t
      short-indent = 0.5\cm
      indent = 1\cm
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
      \context {
          \Staff
          \RemoveEmptyStaves
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
  }
#(set-global-staff-size 14)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Antienne          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PDF output
\book {
  \scorePaper
  \score {
    {
      <<
        \new ChoirStaff \with {
          instrumentName = "Ass."
          shortInstrumentName = "A."
        }
        <<
          \new Staff
          <<
            \clef "treble"
            \new Voice = "assemblee" { \solisteDynamics \transpose e e' {\tenorsMusicA}
            }
            \new Lyrics \lyricsto "assemblee" { \Lyrics }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Orgue"
          shortInstrumentName = "O."
        }
        <<
          \new Staff
          <<
            \clef "treble"
            \new Voice { \solisteDynamics \voiceOne \sopranosMusicA
            }
            \new Voice { \solisteDynamics \voiceTwo \altosMusicA
            }
          >>
          \new Staff
          <<
            \clef "bass"
            \new Voice { \solisteDynamics \voiceThree \tenorsMusicA
            }
            \new Voice { \solisteDynamics \voiceFour \bassesMusicA
            }
          >>
        >>
        \new ChoirStaff
        <<
          \new Staff \with {
            instrumentName = "C1."
            shortInstrumentName = "1."
          }
          <<
            \new Voice = "coupletOne" {\coupletOne}
            \new Lyrics \lyricsto "coupletOne" { \coupletOneLyrics }
          >>
          \new Staff \with {
            instrumentName = "C2."
            shortInstrumentName = "2."
          }
          <<
            \new Voice = "coupletTwo"  \coupletTwo
            \new Lyrics \lyricsto "coupletTwo" { \coupletTwoLyrics }
          >>
          \new Staff \with {
            instrumentName = "C3."
            shortInstrumentName = "3."
          }
          <<
            \new Voice = "coupletThree"  \coupletThree
            \new Lyrics \lyricsto "coupletThree" { \coupletThreeLyrics }
          >>
          \new Staff \with {
            instrumentName = "C4."
            shortInstrumentName = "4."
          }
          <<
            \new Voice = "coupletFour"  \coupletFour
            \new Lyrics \lyricsto "coupletFour" { \coupletFourLyrics }
          >>
          \new Staff \with {
            instrumentName = "C5."
            shortInstrumentName = "5."
          }
          <<
            \new Voice = "coupletFive"  \coupletFive
            \new Lyrics \lyricsto "coupletFive" { \coupletFiveLyrics }
          >>
        >>
      >>
    }
    \AllScoreLayout
    \scoreHeaders
  }
}