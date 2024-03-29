\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

\header {
  title = "À la victime Pascale"
  subtitle = "Séquence du dimanche de Pâques"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  subsubtitle = "Clichy la Garenne, août 2021"
  dedication = "Au père Thomas Binot, curé de Clichy la Garenne"
  }
introSopranosMusic = \relative c'{
  R1 r4 d4 c d f g f e d e f g \break
     r4 a4 g a c d c b a b cs a \break
     \time 3/2 d c bf a bf d c bf a g a c bf a g f g bf \break
               a g f e f a
     \time 2/2 g f e d d2 cs2 d1\fermata \break
  }
introAltosMusic = \relative c'{
  a1~ a2 a4 a d2 d4 d8 c a4 cs d d
   e4 e4 e4 e a a a a8 g e4 gs a e
      a2 a g g g f f f e e e d
      d2 d a4 b a2 a1
  }
introTenorsMusic =\relative c{
  f1~ f2    e4 f bf bf a a8 g f4 a a g
     c4 c4 b c f  f  e e8 d c4 e e a,
     f'2 d d e c c d bf bf cs a a
     bf2 b2 e,2 e4 fs8 g fs1
  }
introBassesMusic =\relative c{
  d1~ d2 a4 d bf g a a d a d bf
   a4 a' e4 a f  d e e a e a, cs
      d2 fs g4 g, c2 e f4 f, bf2 d e4 e,
      a2 cs d4 d, g2 gs a a d1\fermata \break
  }

cantusSolistMusic = {
  \clef "vaticana-do3"
  d c d f g f e d \finalis
  }
cantusMidiMusic = {
  \clef treble
  \key f \major \time 2/2
  \relative c'{r4 d c d f g f e }
  }
amenSolistMusic = {
  \clef "vaticana-do3"
  \[ d\melisma e d\melismaEnd \] \[ \augmentum c\melisma \pes \augmentum d\melismaEnd \] \divisioMinima c f \[ e\melisma \flexa \deminutum d\melismaEnd \] d \finalis
  }
amenMidiMusic = {
  \clef treble
  \key f \major \time 2/2
  \relative c'{d2 e4 d c2 d c4 f e d d1\fermata}
  }

solisteDynamics = {
  \key f \major \time 2/2
  \markCustom "A"
  s2. s4\mf s1*5  \bar "||" \break % Chrétiens offrez…
  \markCustom "B"
  s1*9  \bar "||" \pageBreak % L'Agneau…
  \markCustom "C"
  s1*6 s2. s4\mf s1 s4-\markup{\italic rall.}\> s2. s2\!\p s2 s4 s4\sf s2 s1*2 \bar "||" \break % La mort et la vie…
  \markCustom "D"
  s1*4 \break s1*3 \pageBreak
  \markCustom "E"
  s1*5 s2. s4\mf s1*3 s2. s4\f s1*4 \bar "||" \break % Dis-nous Marie Madeleine…
  \markCustom "F"
  s4\mf\< s2. s1*3 s4\!\f\< s2. s1 s4\!\> s4 s2 s4 s2\! s4\mf s1*8 \bar "||" \pageBreak % J'ai vu les anges
  \markCustom "G"
  s1*5 s4-\markup{\italic "rall."} s2. s4-\markup{\italic Implorant} s2. s2 s2\mf \> s1 s2. s4\!\p \bar "|." \break % Nous le savons
  }

sopranosMusicA = \relative c'' {
  \parenthesize d,2 r4 a'4 a2 a4 (g) f4 e f g a b c b a2 (gs) a2\fermata r4 % Chrétiens offrez…
  }
sopranosMusicB = \relative c'' {
  a4 g g a a f2 e4 e d2 r4 % L'Agneau…
  d4 f2 g4 g a2 c4 b a4 gs a2 \breathe
  g2 %{ apaisé %} a4 a f f e e d2\fermata d2
  }
sopranosMusicC = \relative c' {
  r2. d4 d2 a'4 a a4 a a4 g f2 e2 \breathe % La mort et la vie…
  f2 g4 g a2 c4-> b a2 r4
  a4 g g a a f2 f e1
  r4 %{ éclatant %} a4 b cs d2 (cs) %d1\fermata
  }
sopranosMusicD = \relative c'{
  d'2.\fermata d,4 a' fs g a bf d c bf a f bf a g e a g f cs d f f e d cs d2.\fermata
  }
sopranosMusicE = \relative c' {
  %{ un peu plus allant %} c4 a'2. a4 c bf a g g2 f2 \breathe % Dis-nous Marie Madeleine…
  r4 f4 g a bf2 a g2. \breathe
  %{ Si possible, voix de femme %} a4\( d2 d4 d c2 c4 bf a2 a a2.\) \breathe
  a4\( %{ Si possible, on prendra les notes supérieures entre parenthèse %} <d \parenthesize f>2 <d \parenthesize f> <c \parenthesize e>4 <d \parenthesize e> <c \parenthesize e> <bf \parenthesize d> <a \parenthesize c>2 <a \parenthesize d> <a \parenthesize cs>2.\) \breathe
  }
sopranosMusicF = \relative c' {
  d4\( e2. f4 g2 f4 (e) f2. g4 a1 \breathe % J'ai vu les Anges
  b2 cs d e4 d c!2 b a2.\) \breathe
  %{ intérieur et tendre %} a4\( g g a4 g f2 g4 a bf2 bf a2.\) \breathe
  a4\( g g a g f2 g4 (f) e2 e d1\)\fermata
  }
sopranosMusicG = \relative c' {
  %{ sûr et confiant %} r4 d d4 d a'2. a4 a2 a4 g4 f f e f g2 f e1 % Nous le savons
  a2 g4 a f2
  %{ implorant %} e4 e d2 d4 c! d1\fermata
  }

altosMusicA = \relative c' {
  r2 a4 f'4 e1 d2. e4 f2. f4 e1 e2 r4 % Chrétiens offrez…
  }
altosMusicB = \relative c' {
  e4 e1 d2 (d4.) cs8 a2 r4 % L'Agneau…
  d4 d2 e2 f1 e2 e2 \breathe
  e1 d2. d8 cs a1~
  }
altosMusicC = \relative c' {
  a1 a2. d4 e1 d2 cs2 \breathe % La mort et la vie…
  d2 e f e2 (e) r4
  e4 e1~e2 d cs1
  <cs e>2  e4 g a2 a2 %a1
  }
altosMusicD = \relative c'{
  a'2. r4 fs4 d d4 f f2 ef f f d e d d d4 d a2 a1
  }
altosMusicE = \relative c' {
  f1 e2. e4 d1 \breathe % Dis-nous Marie Madeleine…
  d1 f1 e2. \breathe
  a4 f1 g1 f1 e2. \breathe
  a4 f1 g1 f1 e2. \breathe
  }
altosMusicF = \relative c' {
  d4 bf2. d4 e1 d2 e f1 \breathe % J'ai vu les anges
  g1 f2 g4 f e2 d cs2. \breathe
  e4 e1 d2 e2 e1 f2. \breathe
  e4 e1 d2 e4 d d2. cs4 a1~
  }
altosMusicG = \relative c' {
  a1 f'2. f4 e2 e d d e d d cs2 % Nous le savons
  e2 e4 e d2. d4 d bf a a1
  }

tenorsMusicA =  \relative c' {
  r2 a4 d4 e2 d2 a2. a4 c2. c4 c2 b a2 \fermata r4 % Chrétiens offrez…
  }
tenorsMusicB =  \relative c' {
  cs4 d2 a2 (a2) bf4 a8 g f2 r4 % L'Agneau…
  a4 d2 c2 c2 a4 b c4 b a2 \breathe
  b2 a a2 bf4 a8 g f1~
  }
tenorsMusicC =  \relative c {
  f1 f1 a4 cs d a a4 (bf) a2 \breathe % La mort et la vie…
  a2 a4 c c b a gs a2 r4 cs d2 a (a2) b~b1
  a2 d4 e f2 e %f1
  }
tenorsMusicD = \relative c'{
  fs2. r4 a,2 bf4 c d2 g, c d bf cs a a4 bf bf b e,2 f1
  }
tenorsMusicE =  \relative c {
  c'1 bf2. bf4 % Dis-nous Marie Madeleine…
  a1 a d2 df c2. \breathe
  a4 a1 c c2 b4 d cs2. \breathe
  a4 a1 c c2 b4 d cs2. \breathe
  }
tenorsMusicF =  \relative c' {
  d,4 g1 bf a2 c c1 \breathe % J'ai vu les anges
  d2 a a c4 b a2 gs a2. \breathe
  cs4 d2 a2 a2 d2 d2 c2 c2. \breathe
  cs4  d2 a a d4 c bf2 a4 g f1~
  }
tenorsMusicG =  \relative c' {
  f,1 d'2. d4 a2 d4 a a2 g4 a bf2 b b a2 % Nous le savons
  cs2 d4 a a2 g4 bf a g g8 f e4 f1
  }

bassesMusicA =  \relative c {
  r2 d4 d4 cs a b cs d2. c4 f,2. g4 a2 b cs2\fermata r4 % Chrétiens offrez…
  }
bassesMusicB =  \relative c {
  a4 b2 cs2 d4 c g a d2 r4 % L'Agneau…
  d4 d2 c f, f4 g a4 b cs2 \breathe
  b2 cs d4 c g a d1~\fermata
  }
bassesMusicC =  \relative c {
  d1 d1 cs4 a b cs d4 (g,) a2 \breathe % La mort et la vie…
  d2 c f,4 g a b cs2 r4
  a4 b2 cs d2 gs, a1
  %a2 b4 cs d2 g,4 a d1 \fermata
  a2 gs4 g f g a2 %d,1 \fermata
  }
bassesMusicD = \relative c{
  d,2.\fermata r4 d'2 g4 f! bf,2 c f bf, e a, d4 e f4 bf, g gs a2 d,1\fermata
  }
bassesMusicE =  \relative c {
  f1 c2. c4 d1 \breathe % Dis-nous Marie Madeleine…
  c bf1 c2. \breathe
  a'4 d,1 e f2 g a2. \breathe
  a4 d,1 e f2 g a2. \breathe
  }
bassesMusicF =  \relative c {
  d4 c2 bf g bf4 c d2 c f,1 \breathe % J'ai vu les anges
  f'2 e d c4 d e2 e e2. \breathe
  a,4 b2 cs d4 c bf a g2 c f4 f, g \breathe
  a4 b2 cs d4 c bf a g2 a d1~\fermata
  }
bassesMusicG =  \relative c {
  d1 d2. d4 cs a b cs d c bf a g2 gs a1 % Nous le savons
  a2 b4 cs d4 c bf g f4 g a a d,1 \fermata
  }
Lyrics = \lyricmode {
  "(lau- des)"
  Chré -- tiens of -- frez le sa -- cri -- fi -- ce de lou -- an -- ge.

  L'A -- gneau a ra -- che -- té les bre -- bis&nbsp;;
  Le Christ in -- no -- cent a ré -- con -- ci -- lié
  l'hom -- me pé -- cheur a -- vec le Pè -- re.

  La mort et la vi -- e s'af -- fron -- tè -- rent
  en un du -- el pro -- di -- gieux.
  Le Maî -- tre de la vie mou -- rut&nbsp;; vi -- vant, il rè -- gne.

  Dis- -- nous, Ma -- ri -- e Ma -- de -- lei -- ne,
  qu'as -- tu vu en che -- min&nbsp;?
  J'ai vu le sé -- pul -- cre du Christ vi -- vant
  J'ai vu la gloi -- re du Res -- sus -- sci -- té.

  J'ai vu les an -- ges, ses té -- moins,
  le Su -- ai -- re~et les vê -- te -- ments.
  Le Christ, mon es -- pé -- ran -- ce,~est res -- su -- sci -- té&nbsp;!
  Il vous pré -- cè -- de -- ra en Ga -- li -- lée.

  Nous le sa -- vons&nbsp;: le Christ
  est vrai -- ment res -- su -- sci -- té des morts.

  Roi vic -- to -- rieux
  Prends- -- nous tous en pi -- tié&nbsp;!
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
      \new PianoStaff \with {
        instrumentName = "Orgue"
        shortInstrumentName = "O."
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \key f \major \time 2/2 \voiceOne \introSopranosMusic}
          \new Voice { \key f \major \time 2/2 \voiceTwo \introAltosMusic}
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \key f \major \time 2/2 \voiceThree \introTenorsMusic}
          \new Voice { \key f \major \time 2/2 \voiceFour \introBassesMusic}
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
        \new VaticanaVoice = "cantus"{
          \magnifyStaff #(magstep 5)
          \cantusSolistMusic
          \break
        }
        \new Lyrics \lyricsto "cantus" {
            Vic- ti- mæ Pás- ca- li lau- des
        }
      >>
    }
    \AllScoreLayout
    \scoreHeaders
  }
  \score {
    {
      <<
        \new ChoirStaff \with {
          instrumentName = "Soliste"
          shortInstrumentName = "S."
        }
        {
          <<
            \new Dynamics { \solisteDynamics }
            \new Voice = "soliste" { \key f \major \time 2/2 \oneVoice
                                     \sopranosMusicA \sopranosMusicB \sopranosMusicC
                                     \relative c''{d1\fermata R1*6 r2.} % organ transition letter D
                                     \sopranosMusicE \sopranosMusicF \sopranosMusicG
            }
            \new Lyrics \lyricsto "soliste" { \Lyrics }
          >>
        }
        \new PianoStaff \with {
          instrumentName = "Orgue"
          shortInstrumentName = "O."
        }
        <<
          \new Staff
          <<
            \clef "treble"
            \new Voice { \key f \major \time 2/2 \voiceOne
                         \sopranosMusicA \sopranosMusicB \sopranosMusicC
                         \sopranosMusicD % organ transition letter D
                         \sopranosMusicE \sopranosMusicF \sopranosMusicG
            }
            \new Voice { \key f \major \time 2/2 \voiceTwo
                         \altosMusicA \altosMusicB \altosMusicC
                         \altosMusicD % organ transition letter D
                         \altosMusicE \altosMusicF \altosMusicG
            }
          >>
          \new Staff
          <<
            \clef "bass"
            \new Voice { \key f \major \time 2/2 \voiceThree
                         \tenorsMusicA \tenorsMusicB \tenorsMusicC
                         \tenorsMusicD % organ transition letter D
                         \tenorsMusicE \tenorsMusicF \tenorsMusicG
            }
            \new Voice { \key f \major \time 2/2 \voiceFour
                         \bassesMusicA  \bassesMusicB \bassesMusicC
                         \bassesMusicD % organ transition letter D
                         \bassesMusicE \bassesMusicF \bassesMusicG
            }
          >>
        >>
      >>
      <<
        \new VaticanaVoice = "cantus2" {
          \magnifyStaff #(magstep 5)
          \amenSolistMusic
        }
        \new Lyrics \lyricsto "cantus2" {
          A- men, Al- le- lu- ia.
        }
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
        %midiInstrument = "flute"    % Grand plein jeu
        midiInstrument = "recorder" % Principaux 8 4
      }
      <<
        \new Voice { \key f \major \time 2/2
                     \set midiInstrument = "flute"    % Grand plein jeu
                     \introSopranosMusic
                     \set midiInstrument = "recorder" % Principaux 8 4
                     \cantusMidiMusic
                     \set midiInstrument = "flute"    % Grand plein jeu
                     \sopranosMusicA \sopranosMusicB \sopranosMusicC
                     \relative c''{d1\fermata R1*6 r2.} % organ transition letter D
                     \sopranosMusicE \sopranosMusicF \sopranosMusicG
                     \set midiInstrument = "recorder" % Principaux 8 4
                     \amenMidiMusic
        }
      >>
      \new PianoStaff \with {
        %midiInstrument = "piccolo"  % Pipe Organ
        %midiInstrument = "flute"    % Grand plein jeu
        midiInstrument = "recorder" % Principaux 8 4
      }
      <<
        \new Staff
        <<
          \clef "treble"
          \new Voice { \key f \major \time 2/2
                       \introSopranosMusic
                       r1 r1
                       \sopranosMusicA \sopranosMusicB \sopranosMusicC
                       \sopranosMusicD % organ transition letter D
                       \sopranosMusicE \sopranosMusicF \sopranosMusicG
          }
          \new Voice { \key f \major \time 2/2
                       \introAltosMusic
                       r1 r1
                       \altosMusicA \altosMusicB \altosMusicC
                       \altosMusicD % organ transition letter D
                       \altosMusicE \altosMusicF \altosMusicG
          }
        >>
        \new Staff
        <<
          \clef "bass"
          \new Voice { \key f \major \time 2/2
                       \introTenorsMusic
                       r1 r1
                       \tenorsMusicA \tenorsMusicB \tenorsMusicC
                       \tenorsMusicD % organ transition letter D
                       \tenorsMusicE \tenorsMusicF \tenorsMusicG
          }
          \new Voice { \key f \major \time 2/2
                       \introBassesMusic
                       r1 r1
                       \bassesMusicA  \bassesMusicB \bassesMusicC
                       \bassesMusicD % organ transition letter D
                       \bassesMusicE \bassesMusicF \bassesMusicG
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