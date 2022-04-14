\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

\header {
  title = "O Salutaris Hostia"
  subtitle = "Pour chœur à 4 voix mixtes et orgue"
  composer = "Jean Baptiste Favre"
  poet = "Saint Thomas d'Aquin"
  subsubtitle = "Clichy la Garenne, avril 2022"
  dedication = "À Marguerite, avec tout mon amour"
  }

global = {\key d \minor \time 4/4}

sopranosMusic = \relative c' {
  d2 f4 g a2 a c2. (bf4) bf2 a2 \break
  a2 g4 a f2 f g f e1 \break
  \repeat volta 2 {
      { d'2 (d4) a c2 (bf4) a g2 bf a2. a4(  \break
        a2) a4 (g) g (f) f (e) e (f) f (e) }
    }
  \alternative {
    {f1}
    {d1 \fermata}
    }
  \bar "||" \break
  }
sopranosMusicOrgue = \relative c' {
  d2 f4 g a2 a c2. (bf4) bf2 a2 \break
  a2 g4 a f2 f g f e1 \break
  \repeat volta 2 {
      { d'2 (d4) a c2 (bf4) a g2 bf a2. a4(  \break
        a2) a4 (g) g (f) f (e) e (f) f (e) }
    }
  \alternative {
    {f4 d f a}
    {d,1 \fermata}
    }
  \bar "||" \break
  }
sopranosMusicEnd = \relative c'' {
  g4 (bf a g g2 e2) fs1 \fermata \bar "|."
}
sopranosMusicEndOrgue = \sopranosMusicEnd

altosMusic = \relative c' {
  a2 d4 d e2 f g g f1
  e2 d4 e d2 d d d e1
  \repeat volta 2 {
    f2 f8 e d4 g2 g4 f d2 g e2. e4
    d2 e d d d (cs4.) d8
    }
  \alternative {
    {d1}
    {a1}
    }
  }
altosMusicOrgue = \relative c' {
  a2 d2 e2 f g1 f
  e2 d4 e d1 d1 e1
  \repeat volta 2 {
    f2 f8 e d4 g2. f4 d2 g e1
    d2 e d1 d2 (cs4.) d8
    }
  \alternative {
    {d1}
    {a1}
    }
  }
altosMusicEnd = \relative c' {
  d1 (e2 d4 cs) d1
}
altosMusicEndOrgue = \altosMusicEnd

tenorsMusic =  \relative c {
  f2 a4 g cs2 d c c c1
  cs2 b4 a a2 bf bf b cs1
  \repeat volta 2 {
    a2 a4 d c2 c4 c bf2. d4~ d2 cs4 cs4
    d2 a a bf a a
    }
  \alternative {
    {a1}
    {f1}
    }
  }
tenorsMusicOrgue =  \relative c {
  f2 a4 d cs2 d c1 c
  cs2 b4 a a2 bf bf b cs1
  \repeat volta 2 {
    a1 c1 bf2 e4 d d2 cs2
    b2 a a bf a1
    }
  \alternative {
    {a1}
    {f1}
    }
  }
tenorsMusicEnd = \relative c' {
  bf1 (a1) a1
}
tenorsMusicEndOrgue = \tenorsMusicEnd

bassesMusic =  \relative c {
  d2 c4 bf a2 d e1 f
  a,2 b4 cs d2 bf g gs a1
  \repeat volta 2 {
    d2 d4 f e2 e4 f g2 e a2 a,
    b2 cs d g, a a
    }
  \alternative {
    {d1}
    {d1 \fermata}
    }
  }
bassesMusicOrgue =  \relative c {
  d2 c4 bf a2 d e2 c f,4 g a2
  a2 b4 cs d (c) bf (a) g2 gs a4 g' f e
  \repeat volta 2 {
    d2 d4 f e2 e4 f g2 e a2 a,4 a
    b2 cs d g, a a
    }
  \alternative {
    {d4 d' a f}
    {d1 \fermata}
    }
  }
bassesMusicEnd = \relative c' {
  g2 (g, d'1) d1  \fermata
}
bassesMusicEndOrgue = \bassesMusicEnd

Lyrics = \lyricmode {
  \set stanza = "1. "
  O sa -- lu -- ta -- ris Hos -- ti -- a,
  \set stanza = "1. "
  Quæ cæ -- li pan -- dis os -- ti -- um.
  \set stanza = "1. "
  Bel -- la
  \set ignoreMelismata = ##t
  pre -- munt
  \set ignoreMelismata = ##f
  hos -- ti -- li -- a&nbsp;;
  \set ignoreMelismata = ##t
  Da
  \set stanza = "1. "
  ro -- 
  \set ignoreMelismata = ##f
  bur,
  fer au -- xi -- li -- um um
  }
LyricsOne = \lyricmode {
  \set stanza = "2. "
  O ve -- re di -- gna Hos -- ti -- a,
  \set stanza = "2. "
  Spes u -- ni -- ca fi -- de -- li -- um,
  \set ignoreMelismata = ##t
  \set stanza = "2. "
  In te con --
  \set ignoreMelismata = ##f
  fi -- dit Fran -- ci -- a,
  \set ignoreMelismata = ##t
  Da
  \set stanza = "2. "
  pa --
  \set ignoreMelismata = ##f
  cem, ser -- va
  \set ignoreMelismata = ##f
  pa -- tri -- am. am.
  }
LyricsTwo = \lyricmode {
  \set stanza = "3. "
  U -- ni tri -- no -- que Do -- mi -- no
  \set stanza = "3. "
  Sit sem -- pi -- ter -- na glo -- ri -- a&nbsp;:
  \set ignoreMelismata = ##t 
  \set stanza = "3. "
  Qui vi -- tam
  \set ignoreMelismata = ##f
  si -- ne ter -- mi -- no,
  \set ignoreMelismata = ##t
  No --
  \set ignoreMelismata = ##f
  \set stanza = "3. "
  _ bis
  do --
  \set ignoreMelismata = ##t
  net in
  \set ignoreMelismata = ##f
  pa -- tri -- a. a.
  }
LyricsEnd = \lyricmode {
  A -- men.
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
    system-system-spacing = #'((basic-distance . 10)
       (stretchability . 0))
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
      indent = 2.2\cm
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
  \markup {
    \vspace #4
    \fill-line
     {
      \sans \center-column {
        "Auparavant chanté au moment de l'élévation, on peut, aujourd'hui,"
        "l'exécuter durant la purification après la communion,"
        "ou encore lors de l'exposition du Saint-Sacrement"
      }
    }
  }
  \score {
    {
      <<
      >>
    }
    \AllScoreLayout
    \scoreHeaders
  }
  \score {
    {
      <<
        \new ChoirStaff
        <<
          \new Staff \with {
            \override InstrumentName.self-alignment-X = #RIGHT
            instrumentName = \markup { \right-column { "Soprano" "Alto"} }
            shortInstrumentName = \markup { \right-column { "S." "A."} }
          }
          <<
            \clef "treble"
            \new Voice = "soprano" { \global \voiceOne
                                     \sopranosMusic \sopranosMusicEnd
            }
            \new Voice { \global \voiceTwo
                         \altosMusic \altosMusicEnd
            }
          >>
          \new Lyrics \lyricsto "soprano" { \Lyrics }
          \new Lyrics \lyricsto "soprano" { \LyricsOne }
          \new Lyrics \lyricsto "soprano" { \LyricsTwo \LyricsEnd }
          \new Staff \with {
            \override InstrumentName.self-alignment-X = #RIGHT
            instrumentName = \markup { \right-column { "Ténor" "Basse"} }
            shortInstrumentName = \markup { \right-column { "T." "B."} }
          }
          <<
            \clef "bass"
            \new Voice { \global \voiceThree
                         \tenorsMusic \tenorsMusicEnd
            }
            \new Voice { \global \voiceFour
                         \bassesMusic \bassesMusicEnd
            }
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
            \new Voice = "melody" { \global \voiceOne
                         \sopranosMusicOrgue \sopranosMusicEndOrgue
            }
            \new Voice { \global \voiceTwo
                         \altosMusicOrgue \altosMusicEndOrgue
            }
          >>
          \new Staff
          <<
            \clef "bass"
            \new Voice { \global \voiceThree
                         \tenorsMusicOrgue \tenorsMusicEndOrgue
            }
            \new Voice { \global \voiceFour
                         \bassesMusicOrgue \bassesMusicEndOrgue
            }
          >>
        >>
      >>
    }
    \AllScoreLayout
    \scoreHeaders
    \header {
      print-all-headers=##t
      title = "Chœur SATB"
    }
  }
}
% MIDI output
\score {
  {
    <<
      % \new PianoStaff \with {
      %   midiInstrument = "piccolo"  % Pipe Organ
      %   %midiInstrument = "flute"    % Grand plein jeu
      %   %midiInstrument = "recorder" % Principaux 8 4
      %   midiMinimumVolume = #0.5
      %   midiMaximumVolume = #0.9
      % }
      % <<
      %   \new Staff
      %   <<
      %     \clef "treble"
      %     \new Voice { \global
      %                  \unfoldRepeats \sopranosMusic \sopranosMusicEnd
      %     }
      %     \new Voice { \global
      %                  \unfoldRepeats \altosMusic \altosMusicEnd
      %     }
      %   >>
      %   \new Staff
      %   <<
      %     \clef "bass"
      %     \new Voice { \global
      %                  \unfoldRepeats \tenorsMusic \tenorsMusicEnd
      %     }
      %     \new Voice { \global
      %                  \unfoldRepeats \bassesMusic \bassesMusicEnd
      %     }
      %   >>
      % >>
      \new PianoStaff \with {
        %midiInstrument = "piccolo"  % Pipe Organ
        %midiInstrument = "flute"    % Grand plein jeu
        midiInstrument = "recorder" % Principaux 8 4
        midiMinimumVolume = #0.5
        midiMaximumVolume = #0.9
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \global
                       \unfoldRepeats \sopranosMusicOrgue \sopranosMusicEndOrgue
          }
          \new Voice { \global
                       \unfoldRepeats \altosMusicOrgue \altosMusicEndOrgue
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \global
                       \unfoldRepeats \tenorsMusicOrgue \tenorsMusicEndOrgue
          }
          \new Voice { \global
                       \unfoldRepeats \bassesMusicOrgue \bassesMusicEndOrgue
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
    \tempo 4 = 80
  }
}
