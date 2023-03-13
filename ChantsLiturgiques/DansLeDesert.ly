\version "2.24.0"
\language "english"
\include "../libs/commonFunctions.ily"

headers = \header {
  title = "Dans le désert"
  subtitle = \markup { "Hymne pour le temps de Carême" }
  composer = "Jean Baptiste Favre"
  poet = "Sœur Jocelyne Carpentier"
  dedication = "Clichy-la-Garenne, mars 2023"
  }
%#(set-global-staff-size 15)
#(set-global-staff-size 18)

Rhythms = {
  \tempo 4 = 75
  \key f \major \time 2/4
  s2*16 \bar "|."
  }
SopranoMusic = \relative c'' {
  %a4 bf8 a g4. f8 f4 e f4 r4 \break
  a4 bf8 c c4 a8 g f4 g8 a a2 \break
  d,4 e8 f f4 g8 a a4 g8 f f4 e \break
  bf'4 a8 g a4 g8 f \slurDotted g8 (g) f8 e e4 f \break
  d4 \slurDotted e8 (e) f4 g8 (a) a g f e f2 \break
  }
AltoMusic = \relative c' {
  %f2 e4 d d c c r4
  f2 g4 e4 d2 e
  d2 c2 d c
  g'4 g8 g f4 f8 f cs4. e8 e4 d
  d2 d4 f e e c2
  }
TenorMusic = \relative c' {
  %c2 c4 a bf bf a r4
  c2 c4. bf8 a2 a
  bf4 g f2 b g
  c2 c a a
  bf a4 d c g a2
  }
BassMusic = \relative c {
  %f,2 c'4 d bf c f,4 r4
  f'2 e4 c8 cs d2 c2
  bf2 a g c
  e4 c f f,8 g a4 cs cs d8 c8
  bf8 a g4 d'8 c b4 c4 c4 f,2
  }
CoupletUn = \lyricmode {
  %_ _ _ _ _ _ _ _
  \set stanza = "1. "
  Dans le dé -- sert de nos vies tour -- men -- tées
  \set stanza = "1. "
  sur les ter -- rains les plus durs et a -- ri -- des
  \set stanza = "1. "
  Quand de -- vant toi je me tiens les main vi -- des,
  \set stanza = "1. "
  Tu dé -- po -- \set ignoreMelismata = ##t ses les fleurs de ta bon -- té.
  }
CoupletDeux = \lyricmode {
  %_ _ _ _ _ _ _ _
  \set stanza = "2. "
  Dans le dé -- sert de nos vies é -- prou -- vées
  \set stanza = "2. "
  par l'a -- ban -- don, la souf -- fran -- ce, la mort, __ _
  \set stanza = "2. "
  tu _ nous of -- fres les \set ignoreMelismata = ##t fleurs du \unset ignoreMelismata ré -- con -- fort __ _
  \set stanza = "2. "
  Dans \set ignoreMelismata = ##t un sou -- rire, un vi -- sa -- ge a -- pai -- sé.
  }
CoupletTrois = \lyricmode {
  %_ _ _ _ _ _ _ _
  \set stanza = "3. "
  Dans le dé -- sert de nos jours de fai -- blesse,
  \set stanza = "3. "
  Quand je t'ap -- pelle, im -- plo -- rant ton par -- don, __ _
  \set stanza = "3. "
  Tu me ré -- ponds et tu me fais le don __ _
  \set stanza = "3. "
  De \set ignoreMelismata = ##t re -- cueil -- lir \unset ignoreMelismata les fleurs de ta ten -- dresse.
  }
CoupletQuatre = \lyricmode {
  %_ _ _ _ _ _ _ _
  \set stanza = "4. "
  Dans le dé --  sert que pro -- duit la mi -- sère,
  \set stanza = "4. "
  au -- tour de nous et dans trop de pa -- ys, __ _
  \set stanza = "4. "
  tu crées les fleurs qui en -- gen -- drent la vi -- e,
  \set stanza = "4. "
  dans \set ignoreMelismata = ##t l'a -- mi -- tié, les _ ges -- tes so -- li -- daires.
  }
CoupletCinq = \lyricmode {
  %_ _ _ _ _ _ _ _
  \set stanza = "5. "
  Dans le dé -- sert de tous les en -- chaî -- nés,
  \set stanza = "5. "
  par le mé -- pris, _ la haine, la vio -- len -- ce,
  \set stanza = "5. "
  tu veux se -- mer a -- vec per -- sé -- vé -- ran -- ce,
  \set stanza = "5. "
  des \set ignoreMelismata = ##t fleurs de \unset ignoreMelismata paix et de fra -- ter -- ni -- té.
  }
CoupletSix = \lyricmode {
  %_ _ _ _ _ _ _ _
  \set stanza = "6. "
  Dans le dé -- sert tu m'in -- vites à pri -- er,
  \set stanza = "6. "
  À con -- tem -- pler _ dans cette so -- li -- tu -- de,
  \set stanza = "6. "
  tou -- tes ces fleurs de vie en plé -- ni -- tu -- de,
  \set stanza = "6. "
  que \set ignoreMelismata = ##t ton -- a -- \unset ignoreMelismata mour me donne à par -- ta -- ger.
  }
CoupletSept = \lyricmode {
  %_ _ _ _ _ _ _ _
  \set stanza = "7. "
  Dans le dé -- sert je sais que tu m'en -- voies
  \set stanza = "7. "
  Tu me _ dis au plus se -- cret du cœur, __ _
  \set stanza = "7. "
  Tu me con -- fies ce beau bou -- quet de fleurs, __ _
  \set stanza = "7. "
  Ent -- \set ignoreMelismata = ##t re mes mains qu'il soit di  _ -- gne de Toi.
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%          DRAW PARTITION          %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FirstPageHeaders = \headers

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
}
FirstScorePaper = \paper {
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
AllScoreLayout = \layout {
      ragged-last = ##f
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead.style = #'altdefault
          \override InstrumentName.font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead.style = #'altdefault
          \override InstrumentName.font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead.style = #'altdefault
          \override InstrumentName.font-name = #"Monospace Regular"
      }
      \override LyricText.font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Antienne          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\FirstScorePaper
\score {
  {
    \new ChoirStaff
    <<
      \new Staff = "ChantHighStaff" \with {
        instrumentName = \markup {\column{"S." "A."}}
        shortInstrumentName = \markup {\column{"S." "A."}}
      }
      <<
        \clef "treble" \key f \major
        \new Dynamics = "ChantRhythms" { \Rhythms }
        \new Voice = "ChantSoprano" \with {
          midiInstrument = "flute" % Grand plein-jeu
          midiInstrument = "recorder" % Principaux 8/4
        }
        { \voiceOne \SopranoMusic }
        \new Voice = "ChantAlto" \with {
          midiInstrument = "flute" % Grand plein-jeu
          midiInstrument = "recorder" % Principaux 8/4
        }
        { \voiceTwo \AltoMusic }
      >>
      \new Lyrics \lyricsto "ChantSoprano" { \CoupletUn }
      \new Lyrics \lyricsto "ChantSoprano" { \CoupletDeux }
      \new Lyrics \lyricsto "ChantSoprano" { \CoupletTrois }
      \new Lyrics \lyricsto "ChantSoprano" { \CoupletQuatre }
      \new Lyrics \lyricsto "ChantSoprano" { \CoupletCinq }
      \new Lyrics \lyricsto "ChantSoprano" { \CoupletSix }
      \new Lyrics \lyricsto "ChantSoprano" { \CoupletSept }
      \new Staff  = "ChantLowStaff" \with {
        instrumentName = \markup {\column{"T." "B."}}
        shortInstrumentName = \markup {\column{"T." "B."}}
      }
      <<
        \clef "bass" \key f \major
        \new Dynamics = "ChantRhythms" { \Rhythms }
        \new Voice = "ChantTenor" \with {
          midiInstrument = "flute" % Grand plein-jeu
          midiInstrument = "recorder" % Principaux 8/4
        }
        { \voiceOne \TenorMusic }
        \new Voice = "ChantBass" \with {
          midiInstrument = "flute" % Grand plein-jeu
          midiInstrument = "recorder" % Principaux 8/4
        }
        { \voiceTwo \BassMusic }
      >>
    >>
  }
  \AllScoreLayout
  \midi{
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
  \FirstPageHeaders
}
