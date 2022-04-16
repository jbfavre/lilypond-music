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
  \repeat volta 3 {
    d2 f4 g a2 a c2. (bf4) bf2 a2 \break
    a2 g4 a f2 f bf bf a1 \break
    d2 (d4) a c2 (bf4) a g2 bf a2. a4(
    a2) a4 (g) \break g (f) f (e) e (f) f (e)
    }
  \alternative {
    {f2. r4}
    {d1 \fermata}
    }
  \bar ".|"
  }
sopranosIntroOrgue = \relative c' {
  d2 f4 g a2 a c2. (bf4) bf2 a2 \break
  a2 g4 a f2 f bf1 a \break
  d2. a4 c2 bf4 a g2 bf a2. a4(  \break
  a2) a4 g (g) f2 e4 (e) f2 e4
  }
sopranosMusicOrgue = {
  \repeat volta 3 {
    \sopranosIntroOrgue
    }
  \alternative {
    {f'2. r4}
    {d'1 \fermata}
    }
  \break
  }
sopranosMusicEnd = \relative c'' {
  g4 (bf a g g2 e2) fs1 \fermata \bar "|."
}
sopranosMusicEndOrgue = \relative c'' {
  g4 bf a g g2 e2 fs1 \fermata
}

altosMusic = \relative c' {
  \repeat volta 3 {
    a2 d4 d e2 f g g f1
    e2 d4 e d2 d d e e1
    f2 (e4) d4 g2 (g4) f d2 g e2. e4
    d2 e d d4 (d) d2 (cs4.) d8
    }
  \alternative {
    {d2. r4}
    {a1}
    }
  }
altosIntroOrgue = \relative c' {
  a2 d2 e2 f g1 f
  e2 d4 e d1 d2 e e2 d4 e
  f2 f8 e d4 g2. f4 d2 g e1
  d2 e d1 d2 cs4. d8
  }
altosMusicOrgue = {
  \repeat volta 3 { \altosIntroOrgue }
  \alternative {
    {d'2. r4}
    {a1}
    }
  }
altosMusicEnd = \relative c' {
  d1 (e4 d2 cs4) d1
}
altosMusicEndOrgue = \relative c' {
  d1 e4 d2 cs4 d1
}

tenorsMusic =  \relative c {
  \repeat volta 3 {
    f2 a4 g cs2 d c c c1
    cs2 d4 a a2 bf d d cs1
    a2 (a4) d c2 (c4) c bf2. d4~ d2 cs4 cs4
    d2 a a bf4 (bf) a2 a
    }
  \alternative {
    {a2. r4}
    {f1}
    }
  }
tenorsIntroOrgue =  \relative c {
  f2 a4 d cs2 d c2 e c1
  cs2 d4 a a2 bf d1 cs1
  a1 c1 bf4 e2 d4 d2 cs2
  b2 a a bf a1
  }
tenorsMusicOrgue = {
  \repeat volta 3 { \tenorsIntroOrgue }
  \alternative {
    {a2. r4}
    {f1}
    }
  }
tenorsMusicEnd = \relative c' {
  bf1 (a1) a1
}
tenorsMusicEndOrgue = \relative c' {
  bf1 a1 a1
}

bassesMusic =  \relative c {
  \repeat volta 3 {
    d2 d4 bf a2 d e e f1
    a,2 b4 cs d2 bf g g a1
    d2 (d4) f e2 (e4) f g2 e a2. a,4
    (b2) cs d g,4 (g) a2 a
    }
  \alternative {
    {d2. r4}
    {d1 \fermata}
    }
  }
bassesIntroOrgue =  \relative c {
  d2 c4 bf a2 d e2 c f2 f,4 g
  a2 b4 cs d c bf a g1 a4 g' f e
  d2. f4 e2. f4 g2 e a2 a,2
  b2 cs d g, a a
  }
bassesMusicOrgue = {
  \repeat volta 3 { \bassesIntroOrgue }
  \alternative {
    {d2. r4}
    {d1 \fermata}
    }
  }
bassesMusicEnd = \relative c' {
  g2 (g, d'1) d1  \fermata
}
bassesMusicEndOrgue = \relative c' {
  g2 g, d'1 d1  \fermata
}

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
  Da ro -- 
  \set ignoreMelismata = ##f
  bur,
  \set stanza = "1. "
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
  Da pa --
  \set ignoreMelismata = ##f
  cem,
  \set stanza = "2. "
  ser -- va
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
  _ bis
  \set stanza = "3. "
  do --
  \set ignoreMelismata = ##t
  net in
  \set ignoreMelismata = ##f
  pa -- tri -- _ a.
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
    system-system-spacing = #'((basic-distance . 20)
       (stretchability . 500))
    top-system-spacing = #'((basic-distance . 10)
                            (padding . 10)
                            (stretchability . 1000))
    bookTitleMarkup = \markup {
      \column {
        \fill-line { \italic \sans \fromproperty #'header:dedication }
        \vspace #2
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
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #1
      }
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
    \vspace #2
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
  }
  \pageBreak
  \score {
    {
      <<
        \new ChoirStaff
        <<
          \new Staff \with {
            \override InstrumentName.self-alignment-X = #RIGHT
            instrumentName = "Soprano"
            shortInstrumentName = "S."
          }
          <<
            \clef "treble"
            \new Voice = "soprano" { \global \voiceOne
                                     \sopranosMusic \sopranosMusicEnd
            }
          >>
          \new Lyrics \lyricsto "soprano" { \Lyrics }
          \new Lyrics \lyricsto "soprano" { \LyricsOne }
          \new Lyrics \lyricsto "soprano" { \LyricsTwo \LyricsEnd }
          \new Staff \with {
            \override InstrumentName.self-alignment-X = #RIGHT
            instrumentName = "Alto"
            shortInstrumentName = "A."
          }
          <<
            \new Voice = "alto" { \global \voiceTwo
                         \altosMusic \altosMusicEnd
            }
          >>
          \new Lyrics \lyricsto "alto" { \Lyrics }
          \new Lyrics \lyricsto "alto" { \LyricsOne }
          \new Lyrics \lyricsto "alto" { \LyricsTwo \LyricsEnd }
          \new Staff \with {
            \override InstrumentName.self-alignment-X = #RIGHT
            instrumentName = "Ténor"
            shortInstrumentName = "T."
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" { \global \voiceThree
                         \tenorsMusic \tenorsMusicEnd
            }
          >>
          \new Lyrics \lyricsto "tenor" { \Lyrics }
          \new Lyrics \lyricsto "tenor" { \LyricsOne }
          \new Lyrics \lyricsto "tenor" { \LyricsTwo \LyricsEnd }
          \new Staff \with {
            \override InstrumentName.self-alignment-X = #RIGHT
            instrumentName = "Basse"
            shortInstrumentName = "B."
          }
          <<
            \clef "bass"
            \new Voice = "basse" { \global \voiceFour
                         \bassesMusic \bassesMusicEnd
            }
          >>
          \new Lyrics \lyricsto "basse" { \Lyrics }
          \new Lyrics \lyricsto "basse" { \LyricsOne }
          \new Lyrics \lyricsto "basse" { \LyricsTwo \LyricsEnd }
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
      \new PianoStaff \with {
        midiInstrument = "piccolo"  % Pipe Organ
        %midiInstrument = "flute"    % Grand plein jeu
        %midiInstrument = "recorder" % Principaux 8 4
        midiMinimumVolume = #0.6
        midiMaximumVolume = #0.8
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \global
                       \sopranosIntroOrgue d'2. r4
          }
          \new Voice { \global
                       \altosIntroOrgue a2. r4
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \global
                       \tenorsIntroOrgue f2. r4
          }
          \new Voice { \global
                       \bassesIntroOrgue d2. r4
          }
        >>
      >>
      \new PianoStaff \with {
        %midiInstrument = "piccolo"  % Pipe Organ
        midiInstrument = "flute"    % Grand plein jeu
        %midiInstrument = "recorder" % Principaux 8 4
        midiMinimumVolume = #0.5
        midiMaximumVolume = #0.7
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \global
                       \sopranosIntroOrgue d'2. r4
          }
          \new Voice { \global
                       \altosIntroOrgue a2. r4
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \global
                       \tenorsIntroOrgue f2. r4
          }
          \new Voice { \global
                       \bassesIntroOrgue d2. r4
          }
        >>
      >>
      \new PianoStaff \with {
        %midiInstrument = "piccolo"  % Pipe Organ
        %midiInstrument = "flute"    % Grand plein jeu
        midiInstrument = "recorder" % Principaux 8 4
        midiMinimumVolume = #0.4
        midiMaximumVolume = #0.6
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \global
                       \sopranosIntroOrgue d'1
                       \unfoldRepeats \sopranosMusicOrgue \sopranosMusicEndOrgue
          }
          \new Voice { \global
                       \altosIntroOrgue a1
                       \unfoldRepeats \altosMusicOrgue \altosMusicEndOrgue
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \global
                       \tenorsIntroOrgue f1
                       \unfoldRepeats \tenorsMusicOrgue \tenorsMusicEndOrgue
          }
          \new Voice { \global
                       \bassesIntroOrgue d1
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
