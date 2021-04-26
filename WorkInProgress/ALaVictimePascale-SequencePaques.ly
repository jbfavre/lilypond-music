\version "2.22.0"
\language "english"
tRall = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70
}
tAcce = {
  \set Score.tempoHideNote = ##t
  \tempo 2=100
}
cesure = {
  \tag #'audio s4
}

\include "../libs/commonFunctions.ily"

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Définitions des partitions
%%%%%
%%%%%
title = "À la victime pascale"
subtitle = "Dimanche de Pâques - Séquence"
composer = "Jean Baptiste Favre"
poet = "AELF"
dedication = "Clichy-la-Garenne, avril 2021"

midiInstrumentName = "acoustic grand"

global = {
  \key d \minor
  \time 2/4
  }

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Solist pour soliste et orgue
%%%%%
%%%%%
solistRhythms = { \set Score.tempoHideNote = ##t \tempo 4 = 60 s2 s2. s2 s4 s4 s2  s2 }
solistMelody = \relative c' { d4 f8 g a4 a8 d d4 (c8 bf) a4 r8 a \break g4 a f8 d e f g a g f e4 e }
solistSopranoMusic = \relative c' { \solistMelody }
solistAltoMusic = \relative c' { a4 d4 e4 f g e c c e e d c d d cs2 }
solistTenorMusic = \relative c { f4 bf4 cs4 a  g  g f c' c a a a g bf8 b a2 }
solistBassMusic = \relative c { d4 bf a d bf c f4 f, c'4 cs d c! bf g8 gs a2  }
solistLyrics = \lyricmode {
  À la vic -- ti -- me Pas -- ca -- le
  chré -- tiens, of -- frez le sa -- cri -- fi -- ce de lou -- an -- ge
}

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Impression de la partition
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
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
  }
MidiOutput = \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }
      \tempo 4 = 75
      \set midiMergeUnisons = ##t
    }
ScorePaper = \paper {
    markup-system-spacing = #'((basic-disolist . 10)
       (minimum-disolist . 10)
       (padding . 5)
       (stretchability . 5))
    top-markup-spacing = #'((basic-disolist . 3)
       (minimum-disolist . 3)
       (padding . 3)
       (stretchability . 3))
    top-system-spacing = #'((basic-disolist . 4)
       (minimum-disolist . 5)
       (padding . 4)
       (stretchability . 10))
    system-system-spacing = #'((basic-disolist . 3)
       (minimum-disolist . 3)
       (padding . 3)
       (stretchability . 3))
    scoreTitleMarkup = \markup \columns {
        \fill-line {
            \column {
              \line {
                \left-column {
                  \vspace #1.1
                  \fontsize #7 \sans \fromproperty #'header:title
                  \fontsize #1 \typewriter \fromproperty #'header:subtitle
                }
              }
            }
            \column {
              \vspace #0.5
              \fontsize #-2 \line {
                \left-column {
                  \concat { \typewriter "Texte&nbsp;: " \sans \fromproperty #'header:poet }
                  \concat { \typewriter "Musique&nbsp;: " \sans \fromproperty #'header:composer }
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    oddFooterMarkup = \markup {}
    #(include-special-characters)
  }
ScoreHeader = \header {
    title = \title
    subtitle = \subtitle
    composer = \composer
    poet = \poet
    dedication = \dedication
  }

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Solist pour soliste et orgue
%%%%%
%%%%%
\bookpart {
  \ScorePaper
  \score {
    {
      <<
        \new Staff = "solistStaff" \with { instrumentName = "Soliste" midiInstrument = \midiInstrumentName }
        <<
          \clef "treble"
          \new Voice = "solistRhythms" { \global \solistRhythms }
          \new Voice = "solistMelody" { \solistMelody }
        >>
        \new Lyrics \lyricsto "solistMelody" { \solistLyrics }
        \new PianoStaff = "solistPiano" \with { instrumentName = "Clavier" midiInstrument = \midiInstrumentName }
        <<
          \new Staff = "solistPianoHighStaff"
          <<
            \clef "treble"
            \new Voice = "solistPianoRhythms" { \global \solistRhythms \break }
            \new Voice = "solistPianoSoprano" { \voiceOne \solistSopranoMusic }
            \new Voice = "solistPianoAlto" { \voiceTwo \solistAltoMusic }
          >>
          \new Staff  = "solistPianoLowStaff"
          <<
            \clef "bass"
            \new Voice = "solistPianoRhythms" { \global\solistRhythms }
            \new Voice = "solistPianoTenor" { \voiceOne \solistTenorMusic }
            \new Voice = "solistPianoBass" { \voiceTwo \solistBassMusic }
          >>
        >>
      >>
    }
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
    }
    \MidiOutput
    \ScoreHeader
  }
}

