\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

\header {
  title = "Quand vint sur terre"
  subtitle = "Angelus dit \"d'Hoëdic\""
  composer = "Jean Baptiste Favre"
  poet = "Trad."
  subsubtitle = "Clichy la Garenne, avril 2022"
  dedication = "À mes parents"
  }
solisteDynamics = {
  \key g \major \time 3/4
  }

sopranosMusicA = \relative c' {
  \partial 4 d4 g2 b4 g2 a4 b2 c4 \break d4 \fermata
  r4 b4 d2 c4 b a g c2 b4 \break a4 \fermata
  }
sopranosMusicB = \relative c'' {
  r4 b4 d2 e4 d2 c8 (b) c2 e4 \break d4 \fermata
  r4 g,4 b2 c4 b2 a8 (g) a2 b4 g2. \fermata
  }
altosMusicA = \relative c' {
  \partial 4 d4 d2. d g2. fs4
  r4 fs4 f2 a4 g f2 g g4 fs4
  }
altosMusicB = \relative c' {
  r4 b'4 g2. b2 g4 g2. fs4
  r4 e4 g2 g4 fs ds e e ef fs8 e d2.
  }

tenorsMusicA =  \relative c' {
  \partial 4 d4 b2. b d2 c4 a4
  r4 a4 b2 d4 d2. e2. c4
  }
tenorsMusicB =  \relative c' {
  r4 b4 b2 e4 f2 e4 e e8 d cs b a4
  r4 d4 d2 c4 b2 a4 c2. b2.
  }

bassesMusicA =  \relative c' {
  \partial 4 r4 g2. f2. e2 ef4 d4
  r4 d4 d e fs g g, b a b cs d4
  }
bassesMusicB =  \relative c {
  r4 r4 g4 a8 b c4 g' g, c a2. d4
  r4 e8 fs g4 fs e ds b c8 cs d2. g2.
  }

Lyrics = \lyricmode {
  Quand vint sur ter -- re l'an -- ge des cieux
  À no -- tre mè -- re il dit joy -- eux&nbsp;:
  A -- ve&nbsp;! A -- ve&nbsp;! A -- ve Ma -- ri -- a&nbsp;!
  A -- ve&nbsp;! A -- ve&nbsp;! A -- ve Ma -- ri -- a&nbsp;!
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
        \fill-line { \italic \sans \fromproperty #'header:dedication }
        \vspace #3
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
        % \new ChoirStaff \with {
        %   instrumentName = "Soliste"
        %   shortInstrumentName = "S."
        % }
        % {
        %   <<
        %     \new Dynamics { \solisteDynamics }
        %     \new Voice = "soliste" { \key g \major \time 3/4 \oneVoice
        %                              \sopranosMusicA \sopranosMusicB
        %     }
        %     \new Lyrics \lyricsto "soliste" { \Lyrics }
        %   >>
        % }
        \new PianoStaff \with {
          instrumentName = "Orgue"
          shortInstrumentName = "O."
        }
        <<
          \new Staff
          <<
            \clef "treble"
            \new Voice { \key g \major \time 3/4 \voiceOne
                         \sopranosMusicA \sopranosMusicB
            }
            \new Voice { \key g \major \time 3/4 \voiceTwo
                         \altosMusicA \altosMusicB
            }
          >>
          \new Staff
          <<
            \clef "bass"
            \new Voice { \key g \major \time 3/4 \voiceThree
                         \tenorsMusicA \tenorsMusicB
            }
            \new Voice { \key g \major \time 3/4 \voiceFour
                         \bassesMusicA  \bassesMusicB
            }
          >>
        >>
      >>
    }
    \AllScoreLayout
    \scoreHeaders
  }
}
% MIDI output
\score {
  {
    <<
      \new Staff \with {
        %midiInstrument = "piccolo"  % Pipe Organ
        midiInstrument = "flute"    % Grand plein jeu
        %midiInstrument = "recorder" % Principaux 8 4
      }
      <<
        \new Voice { \key g \major \time 3/4
                     \sopranosMusicA \sopranosMusicB
        }
      >>
      \new PianoStaff \with {
        %midiInstrument = "piccolo"  % Pipe Organ
        midiInstrument = "flute"    % Grand plein jeu
        %midiInstrument = "recorder" % Principaux 8 4
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \key g \major \time 3/4
                       \sopranosMusicA \sopranosMusicB
          }
          \new Voice { \key g \major \time 3/4
                       \altosMusicA \altosMusicB
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \key g \major \time 3/4
                       \tenorsMusicA \tenorsMusicB
          }
          \new Voice { \key g \major \time 3/4
                       \bassesMusicA  \bassesMusicB
          }
        >>
      >>
    >>
  }
  \midi{
    % per voice midi output, using Staff level midiInstrument
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
    \tempo 2 = 55
  }
}
