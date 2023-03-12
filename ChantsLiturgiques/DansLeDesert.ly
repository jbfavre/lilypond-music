\version "2.22.0"
\language "english"
\include "../libs/commonFunctions.ily"

headers = \header {
  title = "Dans le désert"
  subtitle = \markup { "Hymne pour le temps de Carême" }
  composer = "Jean Baptiste Favre"
  poet = "Sœur Jocelyne"
  dedication = "Clichy-la-Garenne, mars 2023"
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Stance  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Rhythms = {
  \tempo 4 = 60-70
  \key f \major \time 2/4
  s2*16 \bar "|."
  }
SopranoMusic = \relative c'' {
  a4 bf8 c c4 a8 g f4 g8 a a2 \break
  d,4 e8 f f4 g8 a a4 g8 f f4 e \break
  bf'4 a8 g a4 g8 f \slurDotted e8 (e) a8 g g4 f \break
  d4 \slurDotted e8 (e) f4 g8 (a) a g f e f2
  }
AltoMusic = \relative c' {
  f2 g4 e4 d2 e
  d2 c2 d c
  g'4 g8 g f4 f8 f cs4 e e d
  d2 d4 f e c c2
  }
TenorMusic = \relative c' {
  c2 c4. bf8 a2 a
  bf4 g f2 b g
  c2 c a a
  bf a4 d c g a2
  }
BassMusic = \relative c {
  f2 e4 c8 cs d2 c2
  bf2 a g c
  e4 c f f,8 g a4 cs d4. c8 bf8 a g4 d'8 c b4 c4 c4 f,2
  }
CoupletUn = \lyricmode {
  Dans le dé -- sert de nos vies tour -- men -- tées
  sur les ter -- rains les plus durs et a -- ri -- des
  Quand de -- vant toi je me tiens les main vi -- des,
  Tu dé -- po -- \set ignoreMelismata = ##t ses les fleurs de ta bon -- té.
  }
CoupletDeux = \lyricmode {
  Dans le dé -- sert de nos vies é -- prou -- vées
  par l'a -- ban -- don, la souf -- fran -- ce, la mort, __ _
  tu _ nous of -- fres les \set ignoreMelismata = ##t fleurs du \unset ignoreMelismata ré -- con -- fort __ _
  Dans \set ignoreMelismata = ##t un sou -- rire, un vi -- sa -- ge a -- pai -- sé.
  }
CoupletTrois = \lyricmode {
  Dans le dé -- sert de nos jours de fai -- blesse,
  Quand je t'ap -- pelle, im -- plo -- rant ton par -- don, __ _
  Tu me ré -- ponds et tu me fais le don __ _
  De \set ignoreMelismata = ##t re -- cueil -- lir \unset ignoreMelismata les fleurs de ta ten -- dresse.
  }
CoupletQuatre = \lyricmode {
  Dans le dé --  sert que pro -- duit la mi -- sère,
  au -- tour de nous et dans trop de pa -- ys, __ _
  tu crées les fleurs qui en -- gen -- drent la vi -- e,
  dans \set ignoreMelismata = ##t l'a -- mi -- tié, les _ ges -- tes so -- li -- daires.
  }
CoupletCinq = \lyricmode {
  Dans le dé -- sert de tous les en -- chaî -- nés,
  par le mé -- pris, _ la haine, la vio -- len -- ce,
  tu veux se -- mer a -- vec per -- sé -- vé -- ran -- ce,
  des \set ignoreMelismata = ##t fleurs de \unset ignoreMelismata paix et de fra -- ter -- ni -- té.
  }
CoupletSix = \lyricmode {
  Dans le dé -- sert tu m'in -- vite à pri -- er,
  À con -- tem -- pler _ dans cette so -- li -- tu -- de,
  tou -- tes ces fleurs de vie en plé -- ni -- tu -- de,
  que \set ignoreMelismata = ##t ton -- a -- \unset ignoreMelismata mour me donne à par -- ta -- ger.
  }
CoupletSept = \lyricmode {
  Dans le dé -- sert je sais que tu m'en -- voies
  Tu me _ dis au plus se -- cret du cœur, __ _
  Tu me con -- fies ce beau bou -- quet de fleurs, __ _
  Ent -- \set ignoreMelismata = ##t re mes mains qu'il soit di  _ -- gne de Toi.
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%          DRAW PARTITION          %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FirstPageHeaders = \headers
OtherPageHeaders = \header {
  title = ##f
  subtitle = ##f
  composer = ##f
  poet = ##f
  dedication = ##f
  }

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
%{
    markup-system-spacing = #'((basic-distance . 30)
       (minimum-distance . 30)
       (padding . 5)
       (stretchability . 5))
    top-markup-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 3))
    top-system-spacing = #'((basic-distance . 6)
       (minimum-distance . 6)
       (padding . 6)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 3))
%}
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

\bookpart { % Stance
  \FirstScorePaper
  \score {
    { % Partition Stance
      <<
        \new Staff = "stanceSolistStaff" \with { instrumentName = "Chant" shortInstrumentName = "Ch." }
        <<
          \clef "treble"
          \new Voice = "Rhythms" {
            \Rhythms
            \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
            \once \override Staff.KeyCancellation.break-visibility = #all-invisible
            \once \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
            \break
            }
          \new Voice = "SopranoMusic" {  \SopranoMusic }
        >>
        \new Lyrics \lyricsto "SopranoMusic" { \CoupletUn }
        \new Lyrics \lyricsto "SopranoMusic" { \CoupletDeux }
        %\new Lyrics \lyricsto "SopranoMusic" { \CoupletTrois }
        %\new Lyrics \lyricsto "SopranoMusic" { \CoupletQuatre }
        %\new Lyrics \lyricsto "SopranoMusic" { \CoupletCinq }
        %\new Lyrics \lyricsto "SopranoMusic" { \CoupletSix }
        %\new Lyrics \lyricsto "SopranoMusic" { \CoupletSept }
        \new PianoStaff = "Piano" \with { instrumentName = "Orgue" shortInstrumentName = "O." }
        <<
          \new Staff = "PianoHighStaff"
          <<
            \clef "treble"
            \new Voice = "Rhythms" {
              \Rhythms
              \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
              \once \override Staff.KeyCancellation.break-visibility = #all-invisible
              \once \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
              \break
              }
            \new Voice = "PianoSoprano" { \voiceOne \SopranoMusic }
            \new Voice = "PianoAlto" { \voiceTwo \AltoMusic }
          >>
          \new Staff  = "stancePianoLowStaff"
          <<
            \clef "bass"
            \new Voice = "stanceRhythms" {
              \Rhythms
              \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
              \once \override Staff.KeyCancellation.break-visibility = #all-invisible
              \once \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
              \break
              }
            \new Voice = "PianoTenor" { \voiceOne \TenorMusic }
            \new Voice = "PianoBass" { \voiceTwo \BassMusic }
          >>
        >>
      >>
    }
    \AllScoreLayout
    \FirstPageHeaders
  }
}
