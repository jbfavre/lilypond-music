\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

\header {
  title = "O Salutaris Hostia"
  subtitle = "Adoration du Saint Sacrement"
  composer = "Jean Baptiste Favre"
  poet = "Saint Thomas d'Aquin"
  subsubtitle = "Clichy la Garenne, avril 2022"
  dedication = "À Marguerite, avec tout mon amour"
  }

global = {\key d \minor \time 4/4}

solisteDynamics = {
  \key d \minor \time 4/4
  }

sopranosMusic = \relative c' {
  d2 f4 g a2 a c2. (bf4) bf2 a2 \break
  a2 g4 a f2 f g f e1 \break
  \repeat volta 2 {
      { d'2 (d4) a c2 (bf4) a g2 bf a2. a4(
        a2) a4 (g) g (f) \break f (e) e (f) f (e) }
    }
  \alternative {
    {f1 \fermata}
    {d1 \fermata}
    }
  \bar "||"
  }
sopranosMusicEnd = \relative c'' {
  g4 (bf a g g1) fs \bar "|."
}

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
altosMusicEnd = \relative c' {
  d1 (e2 d4 cs) d1
}

tenorsMusic =  \relative c {
  f2 a4 g cs2 d e c c1
  cs2 b4 a a2 bf bf b cs1
  \repeat volta 2 {
    a2 a c c4 c bf bf e d d2 cs4 cs4
    b2 a a bf a a
    }
  \alternative {
    {a1}
    {f1}
    }
  }
tenorsMusicEnd = \relative c' {
  bf1 (a1) a1
}

bassesMusic =  \relative c {
  d2 c4 bf a2 d c e f1
  a,2 b4 cs d (c) bf (a) g2 gs a1
  \repeat volta 2 {
    d2 d4 f e2 e4 f g2 e a2. a,4
    b2 cs d g, a a
    }
  \alternative {
    {d1}
    {d1}
    }
  }
bassesMusicOrgue =  \relative c {
  d2 c4 bf a2 d c e f,2 f4 g
  a2 b4 cs d (c) bf (a) g2 gs a4 g' f e
  \repeat volta 2 {
    d2 d4 f e2 e4 f g2 e a2. a,4
    b2 cs d g, a a
    }
  \alternative {
    {d2 f4 a}
    {d,1}
    }
  }
bassesMusicEnd = \relative c' {
  g2 (g, d'1) d1
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
  Da _
  \set ignoreMelismata = ##f
  pa --
  \set stanza = "2. "
  cem,
  \set ignoreMelismata = ##t
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
  No -- _
  \set ignoreMelismata = ##f
  bis
  \set stanza = "3. "
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
        \new PianoStaff \with {
          instrumentName = "Orgue"
          shortInstrumentName = "O."
        }
        <<
          \new Staff
          <<
            \clef "treble"
            \new Voice = "melody" { \global \voiceOne
                         \sopranosMusic \sopranosMusicEnd
            }
            \new Voice { \global \voiceTwo
                         \altosMusic \altosMusicEnd
            }
            \new Lyrics \lyricsto "melody" { \Lyrics }
            \new Lyrics \lyricsto "melody" { \LyricsOne }
            \new Lyrics \lyricsto "melody" { \LyricsTwo \LyricsEnd }
          >>
          \new Staff
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
        midiMinimumVolume = #0.7
        midiMaximumVolume = #0.9
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \global
                       \unfoldRepeats \sopranosMusic \sopranosMusicEnd
          }
          \new Voice { \global
                       \unfoldRepeats \altosMusic \altosMusicEnd
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \global
                       \unfoldRepeats \tenorsMusic \tenorsMusicEnd
          }
          \new Voice { \global
                       \unfoldRepeats \bassesMusic \bassesMusicEnd
          }
        >>
      >>
      \new PianoStaff \with {
        %midiInstrument = "piccolo"  % Pipe Organ
        %midiInstrument = "flute"    % Grand plein jeu
        midiInstrument = "recorder" % Principaux 8 4
        midiMinimumVolume = #0.5
        midiMaximumVolume = #0.7
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \global
                       \unfoldRepeats \sopranosMusic \sopranosMusicEnd
          }
          \new Voice { \global
                       \unfoldRepeats \altosMusic \altosMusicEnd
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \global
                       \unfoldRepeats \tenorsMusic \tenorsMusicEnd
          }
          \new Voice { \global
                       \unfoldRepeats \bassesMusicOrgue \bassesMusicEnd
          }
        >>
      >>
      \new PianoStaff \with {
        %midiInstrument = "piccolo"  % Pipe Organ
        %midiInstrument = "flute"    % Grand plein jeu
        midiInstrument = "recorder" % Principaux 8 4
        midiMinimumVolume = #0.5
        midiMaximumVolume = #0.7
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \global
                       \unfoldRepeats \sopranosMusic \sopranosMusicEnd
          }
          \new Voice { \global
                       \unfoldRepeats \altosMusic \altosMusicEnd
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \global
                       \unfoldRepeats \tenorsMusic \tenorsMusicEnd
          }
          \new Voice { \global
                       \unfoldRepeats \bassesMusicOrgue \bassesMusicEnd
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
    \tempo 4 = 100
  }
}
