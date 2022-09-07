\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

\header {
  title = "Quand vint sur terre"
  subtitle = "Angelus dit \"d'Hoëdic\""
  composer = "Sacha Dhénin"
  poet = "Trad."
  subsubtitle = "Clichy la Garenne, avril 2022"
  }
solisteDynamics = {
  \key f \major \time 3/4
  }

sopranosMusicA = \relative c' {
  \partial 4 c4 f2 a4 f f g a2 bf4 \break c4
  r4 a4 c2 bf4 a g f bf2 a4 \break g4 \fermata
  }
sopranosMusicB = \relative c'' {
  r4 a4 c2 d4 c2 bf8 (a) bf4 bf d4 \break c4 \fermata
  r4 f,4 a2 bf4 a2 g8 (f) g4 g a4 f2. \fermata
  }
altosMusicA = \relative c' {
  \partial 4 s4 s2.*3
  s2 f4 g2 g4 f e f g2 f4 e4
  }
altosMusicB = \relative c' {
  r4 f4 f2. f2 g8 f d2 f4 e4 \fermata
  r4 c4 f2 g4 f2 e8 f (f4) e2 c2. \fermata
  }

tenorsMusicA =  \relative c' {
  \partial 4 s4 s2.*3
  s2 c4 e4 d c c bf c d2 g,4 c4
  }
tenorsMusicB =  \relative c' {
  r4 c4 a2 bf4 f2 e8 f f2 g4 g4 \fermata
  r4 a4 c2 g4 a2 bf8 c d4 c c a2. \fermata
  }

bassesMusicA =  \relative c' {
  \partial 4 s4 s2.*3
  s2 f,4 c4 d e f g a g,a b c4
  }
bassesMusicB =  \relative c {
  r4 f4 f2 bf,4 a2 bf8 c bf2 b4 c4 \fermata
  r4 f4 f2 e4 f2 g8 a bf4 c c, f2. \fermata
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
        \new PianoStaff \with {
          instrumentName = "Orgue"
          shortInstrumentName = "O."
        }
        <<
          \new Staff
          <<
            \clef "treble"
            \new Voice = "soprane" { \key f \major \time 3/4 \voiceOne
                         \sopranosMusicA \sopranosMusicB
            }
            \addlyrics { \set stanza = "1. "
                         Quand vint sur ter -- re l'an -- ge des \set stanza = "1. " cieux
                         À no -- tre mè -- re il dit joy -- \set stanza = "1. " eux&nbsp;:}
            \addlyrics { \set stanza = "2. "
                         A -- vec l'arch -- an -- ge re -- di -- sons \set stanza = "2. " tous,
                         À sa lou -- an -- ge ce chant si \set stanza = "2. " doux&nbsp;:}
            \addlyrics { _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                         A -- ve&nbsp;! A -- ve&nbsp;! A -- ve Ma -- ri -- a&nbsp;!
                         A -- ve&nbsp;! A -- ve&nbsp;! A -- ve Ma -- ri -- a&nbsp;!}
            \addlyrics { \set stanza = "3. "
                         Ô blanche é -- toi -- le qui brille tou -- \set stanza = "3. " jours,
                         Gui -- de ma voi -- le gar -- de mes \set stanza = "3. " jours.}
            \addlyrics { \set stanza = "4. "
                         Quand vien -- dra l'heu -- re as -- sis -- te- \set stanza = "4. " moi,
                         Fais que je meure _ ai -- mé de \set stanza = "4. " toi}
            \new Voice { \key f \major \time 3/4 \voiceTwo
                         \altosMusicA \altosMusicB
            }
          >>
          \new Staff
          <<
            \clef "bass"
            \new Voice { \key f \major \time 3/4 \voiceThree
                         \tenorsMusicA \tenorsMusicB
            }
            \new Voice { \key f \major \time 3/4 \voiceFour
                         \bassesMusicA  \bassesMusicB
            }
          >>
        >>
      >>
    }
    \AllScoreLayout
    \scoreHeaders
  }
\markup {
  \column {
    \fill-line {
      \column {
        \concat { \typewriter "1. " "Quand vint sur terre l'ange des cieux"}
        \concat { \typewriter "   " "À notre mère il dit joyeux&nbsp;:"}
        \concat { \typewriter "℟. " \bold "Ave&nbsp;! Ave&nbsp;! Ave Maria&nbsp;!"}
        \concat { \typewriter "   " \bold "Ave&nbsp;! Ave&nbsp;! Ave Maria&nbsp;!"}
      }
    }
    \vspace#2
    \fill-line {
      \columns {
        \left-column {
          \typewriter "Prètre&nbsp;: "
          "Je vous salue Marie, pleine de grâces"
          "le Seigneur est avec vous,"
          "vous êtes bénie entre toutes les femmes,"
          "et Jésus le fruit de vos entrailles est béni"
        }
        \left-column {
          \typewriter "Ass.&nbsp;: "
          \bold "Sainte Marie, Mère de Dieu,"
          \bold "priez pour nous pauvres pécheurs,"
          \bold "maintenant et à l'heure de notre mort,"
          \bold "Amen&nbsp;!"
        }
      }
    }
    \vspace#2
    \fill-line {
      \column {
        \concat { \typewriter "2. " "Avec l'archange redisons tous,"}
        \concat { \typewriter "   " "À sa louange ce chant si doux&nbsp;:"}
        \concat { \typewriter "℟. " \bold "Ave&nbsp;! Ave&nbsp;! Ave Maria&nbsp;!"}
        \concat { \typewriter "   " \bold "Ave&nbsp;! Ave&nbsp;! Ave Maria&nbsp;!"}
      }
    }
    \vspace#2
    \fill-line {
      \column {
        \concat {\typewriter "Prètre&nbsp;: " "Je vous salue Marie, pleine de grâces… le fruit de vos entrailles est béni"}
        \concat {\typewriter "Ass.  &nbsp;: " \bold "Sainte Marie, Mère de Dieu,… l'heure de ntore mort, Amen&nbsp;!"}
      }
    }
    \vspace#2
    \fill-line {
      \column {
        \concat { \typewriter "3. " "Ô blanche étoile qui brille toujours,"}
        \concat { \typewriter "   " "Guide ma voile garde mes jours."}
        \concat { \typewriter "℟. " \bold "Ave&nbsp;! Ave&nbsp;! Ave Maria&nbsp;!"}
        \concat { \typewriter "   " \bold "Ave&nbsp;! Ave&nbsp;! Ave Maria&nbsp;!"}
      }
    }
    \vspace#2
    \fill-line {
      \column {
        \concat {\typewriter "Prètre&nbsp;: " "Je vous salue Marie, pleine de grâces… le fruit de vos entrailles est béni"}
        \concat {\typewriter "Ass.  &nbsp;: " \bold "Sainte Marie, Mère de Dieu,… l'heure de ntore mort, Amen&nbsp;!"}
      }
    }
    \vspace#2
    \fill-line {
      \column {
        \concat { \typewriter "4. " "Quand viendra l'heure assiste-moi,"}
        \concat { \typewriter "   " "Fais que je meure aimé de toi"}
        \concat { \typewriter "℟. " \bold "Ave&nbsp;! Ave&nbsp;! Ave Maria&nbsp;!"}
        \concat { \typewriter "   " \bold "Ave&nbsp;! Ave&nbsp;! Ave Maria&nbsp;!"}
      }
    }
    \vspace#2
    \fill-line {
      \column {
        \typewriter "Prètre&nbsp;:"
        "Que ta grâce, Seigneur notre Père, se répande en nos cœurs&nbsp;;"
        "par le message de l’Ange, tu nous as fait connaître l’incarnation de ton Fils bien aimé&nbsp;;"
        "Conduis-nous, par sa passion et par sa croix, avec le secours de la Vierge Marie,"
        "jusqu’à la Gloire de la Résurrection, par le Christ notre Seigneur"
        \bold "Amen&nbsp;!"
      }
    }
  }
}
}
% MIDI output
\score {
  {
    <<
      % \new Staff \with {
      %   %midiInstrument = "piccolo"  % Pipe Organ
      %   midiInstrument = "flute"    % Grand plein jeu
      %   %midiInstrument = "recorder" % Principaux 8 4
      % }
      % <<
      %   \new Voice { \key g \major \time 3/4
      %                \sopranosMusicA \sopranosMusicB
      %   }
      % >>
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