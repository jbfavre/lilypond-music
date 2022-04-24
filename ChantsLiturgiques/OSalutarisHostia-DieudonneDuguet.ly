\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

\header {
  title = "O Salutaris Hostia"
  subtitle = "Pour chœur à 4 voix mixtes"
  composer = "Dieudonné Duguet (1794 - 1849)"
  poet = "Saint Thomas d'Aquin (c 1225 - 1274)"
  }

global = {
  \key ef \major \time 4/4
  }

sopranosMusicOne = \relative c' {
    ef4 g f g af g f ef
  }
sopranosMusicTwo = \relative c'' {
    g4 g f g bf bf a bf
  }
sopranosMusicThree = \relative c'' {
    bf c bf g af bf af8 g f4
  }
sopranosMusicFour = \relative c'' {
    g4 ef f g af g f ef
  }
sopranosMusicEnd = \relative c' {
    ef2 ef
  }
sopranosMusicEndTwo = \relative c' {
    ef4( f ef d) ef1
  }

altosMusicOne = \relative c' {
    bf4 ef d ef ef ef d bf
  }
altosMusicTwo = \relative c' {
    ef4 ef d ef f ef ef d
  }
altosMusicThree = \relative c' {
    ef4 ef d c ef f ef d
    %ef4 ef d ef ef f ef d
  }
altosMusicFour = \relative c' {
    d c d ef ef ef d bf
  }
altosAltMusicOne = \relative c' {
  ef ef ef ef ef8 f f4 ef8 d c4
  }
altosAltMusicTwo = \relative c' {
  d ef ef ef g g g8 fs g4
  }
altosAltMusicThree = \relative c'' {
  g f f ef ef g f8 f f4
  }
altosAltMusicFour = \relative c' {
  f c ef d ef ef ef8 d bf4
  }
altosMusicEnd = \relative c' {
    c2 bf
  }
altosMusicEndTwo = \relative c' {
    c4 c bf bf bf1
  }

tenorsMusicOne =  \relative c' {
    g4 bf bf bf c bf4. af8 g4
  }
tenorsMusicTwo = \relative c' {
    bf4 bf bf bf f g f f
  }
tenorsMusicThree = \relative c' {
    g4 af f ef c' bf bf bf g
   %g4 af f ef af8 c bf4 bf bf g
  }
tenorsMusicFour = \relative c' {
    g4 bf bf c bf4. af8 g4
  }
tenorsAltMusicOne = \relative c' {
  bf4 bf bf bf c d8 c b4 g
  }
tenorsAltMusicTwo = \relative c' {
  b!4 c c bf? ef ef ef8 d d4
  }
tenorsAltMusicThree = \relative c' {
  d4 ef d c c ef ef d4
  }
tenorsAltMusicFour = \relative c' {
  d4 g, c b c c c8 bf16 af g4
 }
tenorsMusicEnd = \relative c' {
    af2 g
  }
tenorsMusicEndTwo = \relative c' {
    g4 af g f g1
  }

bassesMusicOne =  \relative c {
    ef4 ef bf ef af, bf bf ef
  }
bassesMusicTwo = \relative c {
    ef4 ef bf ef d c c bf
  }
bassesMusicThree = \relative c {
    ef4 af, bf c     c  d ef bf
   %ef4 af, bf ef8 d c4 d ef bf
  }
bassesMusicFour = \relative c {
    b4 c bf? ef af, bf bf ef
  }
bassesAltMusicOne = \relative c {
  ef4 ef d df c b g c
  }
bassesAltMusicTwo = \relative c {
  g c8 bf af4 ef' ef8 d c4 d g
  }
bassesAltMusicThree = \relative c {
  g af bf c4 af ef' f8 g bf4
  }
bassesAltMusicFour = \relative c {
  b4 c8 bf af4 g f8 g af4 bf ef
  }
bassesMusicEnd = \relative c {
    af2 ef'
  }
bassesMusicEndTwo = \relative c {
    c4 af bf bf ef1
  }

Lyrics = \lyricmode {
  \set stanza = "1. "
  O sa -- lu -- ta -- ris Hos -- ti -- a,
  Quæ cæ -- li pan -- dis os -- ti -- um.
  \set stanza = "1. "
  Bel -- la pre -- munt hos -- ti -- li -- _ a&nbsp;;
  Da ro --  bur, fer au -- xi -- li -- um
  }
LyricsOne = \lyricmode {
  \set stanza = "2. "
  O ve -- re di -- gna Hos -- ti -- a,
  Spes u -- ni -- ca fi -- de -- li -- um,
  \set stanza = "2. "
  In te con -- fi -- dit Fran -- ci -- _ a,
  Da pa -- cem, ser -- va pa -- tri -- am.
  }
LyricsTwo = \lyricmode {
  \set stanza = "3. "
  U -- ni tri -- no -- que Do -- mi -- no
  Sit sem -- pi -- ter -- na glo -- ri -- a&nbsp;:
  \set stanza = "3. "
  Qui vi -- tam si -- ne ter -- mi -- _ no,
  No -- bis do -- net in pa -- tri -- a.
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

% PDF output
\book {
  \scorePaper
  \markup {
    \vspace #2
    \fill-line
    {
      \sans \center-column {
        "Autrefois chanté au moment de l'élévation, on peut, aujourd'hui,"
        "l'exécuter durant la purification après la communion,"
        "ou encore lors de l'exposition du Saint-Sacrement"
      }
    }
    }
  \score {
    <<
      \new Dynamics {
        \partial 4 s4
        s1 s2 s4 \bar "" \break s4\segno
        s1*3 s2 s4 \bar "" \break s4
        s1*3 s2 s4\coda \bar "" \break s4
        s1*3 s2 s4 \bar "" \break s4
        s1*3 s2 s4\segno s4 \break
        s4\coda s2. s1
      }
      \new Staff
      <<
        \clef "treble"
        \new Voice = "soprano"
        {
          \global \voiceOne
          \partial 4
          \sopranosMusicOne\fermata
          \sopranosMusicOne
          \sopranosMusicTwo\fermata
          \sopranosMusicThree
          \sopranosMusicFour\fermata
          \sopranosMusicOne
          \sopranosMusicTwo\fermata
          \sopranosMusicThree
          \sopranosMusicFour\fermata s4
          %\sopranosMusicEnd
          \sopranosMusicEndTwo
        }
        \new Voice = "alto"
        {
          \global \voiceTwo
          \altosMusicOne
          \altosMusicOne
          \altosMusicTwo
          \altosMusicThree
          \altosMusicFour
          \altosAltMusicOne
          \altosAltMusicTwo
          \altosAltMusicThree
          \altosAltMusicFour s4
          %\altosMusicEnd
          \altosMusicEndTwo
        }
      >>
      \new Lyrics \lyricsto "soprano" {   _ _ _ _ _ _ _ _ \Lyrics \LyricsOne \LyricsEnd }
      \new Lyrics \lyricsto "soprano" {   _ _ _ _ _ _ _ _ \LyricsTwo }
      \new Staff
      <<
        \clef "bass"
        \new Voice = "tenor"
        {
          \global \voiceThree
          \tenorsMusicOne
          \tenorsMusicOne
          \tenorsMusicTwo
          \tenorsMusicThree
          \tenorsMusicFour
          \tenorsAltMusicOne
          \tenorsAltMusicTwo
          \tenorsAltMusicThree
          \tenorsAltMusicFour s4
          %\tenorsMusicEnd
          \tenorsMusicEndTwo
        }
        \new Voice = "basse"
        {
          \global \voiceFour
          \bassesMusicOne \fermata
          \bassesMusicOne
          \bassesMusicTwo\fermata
          \bassesMusicThree
          \bassesMusicFour\fermata
          \bassesAltMusicOne
          \bassesAltMusicTwo \fermata
          \bassesAltMusicThree
          \bassesAltMusicFour \fermata s4
          %\bassesMusicEnd
          \bassesMusicEndTwo
        }
      >>
    >>
    \AllScoreLayout
    \scoreHeaders
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
      %   midiMinimumVolume = #0.7
      %   midiMaximumVolume = #0.9
      % }
      % <<
      %   \new Staff
      %   <<
      %     \clef "treble"
      %     \new Voice { \global \voiceOne
      %                 \partial 4
      %                 \sopranosMusicOne ~4
      %     }
      %     \new Voice { \global \voiceTwo
      %                 \altosMusicOne ~4
      %     }
      %   >>
      %   \new Staff
      %   <<
      %     \clef "bass"
      %     \new Voice { \global \voiceThree
      %                 \tenorsMusicOne ~4
      %     }
      %     \new Voice { \global \voiceFour
      %                  \bassesMusicOne ~4
      %     }
      %   >>
      % >>
      % \new PianoStaff \with {
      %   %midiInstrument = "piccolo"  % Pipe Organ
      %   midiInstrument = "flute"    % Grand plein jeu
      %   %midiInstrument = "recorder" % Principaux 8 4
      %   midiMinimumVolume = #0.6
      %   midiMaximumVolume = #0.8
      % }
      % <<
      %   \new Staff
      %   <<
      %     \clef "treble"
      %     \new Voice { \global \voiceOne
      %                 \partial 4
      %                 \sopranosMusicOne ~4
      %     }
      %     \new Voice { \global \voiceTwo
      %                 \altosMusicOne ~4
      %     }
      %   >>
      %   \new Staff
      %   <<
      %     \clef "bass"
      %     \new Voice { \global \voiceThree
      %                 \tenorsMusicOne ~4
      %     }
      %     \new Voice { \global \voiceFour
      %                  \bassesMusicOne ~4 r4
      %                  \bassesMusicOne
      %                  \bassesMusicTwo ~4 r4
      %                  \bassesMusicThree ~4 r2
      %                  %\bassesMusicEnd
      %                  \bassesMusicEndTwo
      %     }
      %   >>
      % >>
      \new PianoStaff \with {
        %midiInstrument = "piccolo"  % Pipe Organ
        %midiInstrument = "flute"    % Grand plein jeu
        midiInstrument = "recorder" % Principaux 8 4
        midiMinimumVolume = #0.6
        midiMaximumVolume = #0.8
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \global \voiceOne
                       \partial 4
                       \sopranosMusicOne ~4 r4
                       \sopranosMusicOne
                       \sopranosMusicTwo ~4 r4
                       \sopranosMusicThree
                       \sopranosMusicFour ~4 r4
                       \sopranosMusicOne
                       \sopranosMusicTwo ~4 r4
                       \sopranosMusicThree
                       \sopranosMusicFour ~4 r4
                       \sopranosMusicOne
                       \sopranosMusicTwo ~4 r4
                       \sopranosMusicThree
                       \sopranosMusicFour ~4 r2
                       %\sopranosMusicEnd
                       \sopranosMusicEndTwo
          }
          \new Voice { \global \voiceTwo
                       \altosMusicOne ~4 r4
                       \altosMusicOne
                       \altosMusicTwo ~4 r4
                       \altosMusicThree
                       \altosMusicFour ~4 r4
                       \altosAltMusicOne
                       \altosAltMusicTwo ~4 r4
                       \altosAltMusicThree
                       \altosAltMusicFour ~4 r4
                       \altosMusicOne
                       \altosMusicTwo ~4 r4
                       \altosMusicThree
                       \altosMusicFour ~4 r2
                       %\altosMusicEnd
                       %\altosMusicEndTwo
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \global \voiceThree
                       \tenorsMusicOne ~4 r4
                       \tenorsMusicOne
                       \tenorsMusicTwo ~4 r4
                       \tenorsMusicThree
                       \tenorsMusicFour ~4 r4
                       \tenorsAltMusicOne
                       \tenorsAltMusicTwo ~4 r4
                       \tenorsAltMusicThree
                       \tenorsAltMusicFour ~4 r4
                       \tenorsMusicOne
                       \tenorsMusicTwo ~4 r4
                       \tenorsMusicThree
                       \tenorsMusicFour ~4 r2
                       %\tenorsMusicEnd
                       \tenorsMusicEndTwo
          }
          \new Voice { \global \voiceFour
                       \bassesMusicOne ~4 r4
                       \bassesMusicOne
                       \bassesMusicTwo ~4 r4
                       \bassesMusicThree
                       \bassesMusicFour ~4 r4
                       \bassesAltMusicOne
                       \bassesAltMusicTwo ~4 r4
                       \bassesAltMusicThree
                       \bassesAltMusicFour ~4 r4
                       \bassesMusicOne
                       \bassesMusicTwo ~4 r4
                       \bassesMusicThree
                       \bassesMusicFour ~4 r2
                       %\bassesMusicEnd
                       \bassesMusicEndTwo
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
    \tempo 4 = 70
  }
}
