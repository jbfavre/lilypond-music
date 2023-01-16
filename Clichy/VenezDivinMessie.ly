\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

\header {
  title = "Venez, divin Messie"
  composer = "Trad."
  poet = "Trad."
  }
solisteDynamics = {
  \key g \major \time 6/8
  }

sopranosMusicA = \relative c' {
  \mark "Refrain"
  \partial 8 d8 g4 a8 b4 b8 c4. b4 a8 g4 fs8 e4 a8 g (fs) e d4 d8 \break
  g4 a8 b4 b8 c4. b4 d8 b4 b8 a8 (g) a g4. (g4) r8 \break
  \mark "Couplet"
  a4. a8 (g) fs g2. a4. a8 (g) fs g4 g8 c4 b8 \break a4 d8 c4 b8 a4 d8 c4 b8 a4 g8 g (fs) g a4. r4
  d,8 \break g4 a8 b4 b8 c4. b4 a8 g4 fs8 e4 a8 g (fs) e d4 d8 \break
  g4 a8 b4 b8 c4. b4 d8 b4 b8 a8 (g) a g4. (g4) r8 \break
}

bassesMusicA = \relative c {
  \partial 8 d8 b4 d8 g4 g8 c,4. g'4 d8 e4 b8 c4 cs8 d4 a8 d4 c8
  b4 d8 g4 g8 c,4. g'4 fs8 g4 g8 d8 (e) d d4. (d4) r8
  d4 c8 b (c) d g,2.d'4 c8 b (c) d g,4 g'8 e fs g
  d4 d8 e fs g d4 d8 e fs g fs4 g8 a4 g8 d4. r4
  d8 b4 d8 g4 g8 c,4. g'4 d8 e4 b8 c4 cs8 d4 a8 d4 c8
  b4 d8 g4 g8 c,4. g'4 fs8 g4 g8 d8 (e) d d4. (d4) r8
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
    two-sided = ##f
    oddFooterMarkup = {}
    #(include-special-characters)

    markup-system-spacing = #'((basic-distance . 30)
       (stretchability . 500))
    %top-system-spacing = #'((basic-distance . 30)
    %                        (padding . 10)
    %                        (stretchability . 1000))
    bookTitleMarkup = \markup {
      \column {
        \columns {
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
                  \typewriter \italic \fromproperty #'header:subsubtitle
                }
              }
            }
          }
        }
      }
    }
  }
AllScoreLayout = \layout {
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Antienne          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PDF output
\book {
  \scorePaper
  \score {
    {
      <<
        \new PianoStaff
        <<
          \new Staff
          {
            \clef "treble"
            \new Voice="soprane" { \solisteDynamics \voiceOne \sopranosMusicA }
          }
          \new Lyrics \lyricsto "soprane" {
            Ve -- nez, di -- vin Mes -- si -- e, nous rendre es -- poir, et nous sau -- ver
            Vous ê -- tes no -- tre vi -- e, ve -- nez, ve -- nez, ve -- nez&nbsp;!
            Ô Fils de Dieu ne tar -- dez pas,
            par vo -- tre corps don -- nez la joie
            à no -- tre monde en dé -- sa -- roi
            Re -- di -- tes nous en -- co -- re,
            de quel a -- mour vous nous ai -- mez;
            tant d'hom -- mes vous i -- gno -- rent,
            Ve -- nez, ve -- nez, ve -- nez&nbsp;!
          }
          \new Staff
          {
            \clef "bass"
            \new Voice { \solisteDynamics \voiceOne \bassesMusicA }
          }
        >>
      >>
    }
    \AllScoreLayout
    \scoreHeaders
  }
}