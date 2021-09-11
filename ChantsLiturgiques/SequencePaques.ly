\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

headers = \header {
  title = "À la victime Pascale"
  subtitle = "Séquence du dimanche de Pâques"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  subsubtitle = "Clichy la Garenne, août 2021"
  dedication = "Au père Thomas Binot, curé de Clichy, avec toute mon amitié"
  }

cantusSolistMusic = {
  \clef "vaticana-do3"
  %\noBreak
  d c d f g f e d \finalis
}
amenSolistMusic = {
  \clef "vaticana-do3"
  \[ d\melisma e d\melismaEnd \] \[ \augmentum c\melisma \pes \augmentum d\melismaEnd \] \divisioMinima c f \[ e\melisma \flexa \deminutum d\melismaEnd \] d \finalis
}
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Répons     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
reponsRhythms = {
  \key f \major \time 2/2
  \markCustom "A"
  \partial 4 s4 s1*5  \bar "||" \break % Chrétiens offrez…
  \markCustom "B"
  \partial 4 s4 s1*9  \bar "||" \break % L'Agneau…
  \markCustom "C"
  \partial 4 s4 s1*12 \bar "||" \break % La mort et la vie…
  \markCustom "D"
  \partial 4 s4 s1*14 \bar "||" \break % Dis-nous Marie Madeleine…
  \markCustom "E"
  \partial 4 s4 s1*16 \bar "||" \break % J'ai vu les anges
  \markCustom "F"
                s1*10 \bar "|." \break % Nous le savons
  }
reponsSopranosMusic = \relative c'' {
  \partial 4 a4 a2 a4 (g) f4 e f g a b c b a2 (gs) a2. \fermata r4 % Chrétiens offrez…

  \partial 4 a4 g g a a f2 e4 e d2 r4 % L'Agneau…
  d4 f2 g4 g a2 c4 b a4 gs a2 \breathe
  g2 a4 a f f e e d2 \fermata d4 r4

  \partial 4 d d2 a'4 a a4 a a4 g f2 e2 \breathe % La mort et la vie…
  f2 g4 g a2 c4 b a2 r4
  a4 g g a a f2 f e1
  r4 a4 b cs d2 (cs) d1 \fermata

  \partial 4 c,4 a'2. a4 c bf a g g2 f2 \breathe % Dis-nous Marie Madeleine…
  r4 f4 g a bf2 a g2. \breathe
  a4 d2 d4 d c2 c4 bf a2 a a2. \breathe
  a4 <d \parenthesize f>2. <d \parenthesize f>4 <c \parenthesize e> <d \parenthesize e> <c \parenthesize e> <bf \parenthesize d> <a \parenthesize e'>2 <a \parenthesize d> <a \parenthesize cs>2. \breathe r4

  d,4 e2. f4 g2 f4 (e) f2 g a1 \breathe % J'ai vu les Anges
  b2 cs d e4 d c!2 b a2. \breathe
  a4 g g a4 g f2 g4 a bf2 bf a2. \breathe
  a4 g bf a g f2 g4 (f) e2 e d1 \fermata

  d2 d4 d a'2. a4 a2 a4 g4 f f e f g2 f e1 % Nous le savons
  a2 g4 a f2 e4 e d2 d4 c! d1 \fermata
  }
reponsAltosMusic = \relative c' {
  \partial 4 f4 e2 e d2. e4 f2. f4 e1 e2. r4 % Chrétiens offrez…

  \partial 4 e4 e1 d2 (d4.) cs8 a2 r4 % L'Agneau…
  d4 d2 e2 f1 e2 e2 \breathe
  e1 d2. d8 cs a2. r4

  \partial 4 a4 a2. d4 e1 d2 cs2 \breathe % La mort et la vie…
  d2 e f e2 (e) r4
  e4 e1 d1 cs1
  e2  e4 g a2 a2 a1

  \partial 4 s4 f1 g2. e4 d1 \breathe % Dis-nous Marie Madeleine…
  d1 f1 e2. \breathe
  e4 f1 g1 f1 e2. \breathe
  e4 f1 g1 f2 e e2. \breathe r4

  d4 bf2. d4 e1 d2 e f1 \breathe % J'ai vu les anges
  g1 f2 g4 f e2 d cs2. \breathe
  e4 e1 d2 e2 e1 f2. \breathe
  f4 e1 d2 e4 d d2. cs4 a1

  d2 d4 d f2. f4 e2 e d d e d d cs2 % Nous le savons
  e2 e4 e d2. d4 bf2 a a1
  }
reponsTenorsMusic =  \relative c' {
  \partial 4 d4 e2 d2 a2 a2 c2. c4 c2 b a2. \fermata r4 % Chrétiens offrez…

  \partial 4 cs4 d2 a2 (a2) bf4 a8 g f2 r4 % L'Agneau…
  a4 a2 c2 c2 a4 b c4 b a2 \breathe
  b2 a a4 a bf a8 g f2. r4

  \partial 4 f4 f1 a4 cs d a a4 (bf) a2 \breathe % La mort et la vie…
  a2 c c4 b a gs a2 r4 cs d2 a (a2) bf a1
  cs2 d4 e f2 e f1

  \partial 4 s4 c1 c2. \breathe  % Dis-nous Marie Madeleine…
  bf4 a1 a d2 df c2. \breathe
  a4 a1 c c2. d4 cs2. \breathe
  a4 a1 c c2. d4 cs2. d,4 \breathe r4

  g1 bf a2 c c1 \breathe % J'ai vu les anges
  d2 a a c4 b a2 gs a2. \breathe
  cs4 d2 a2 a2 d2 d2 c2 c2. \breathe
  c4  bf2 a a d bf2 a4 g f1

  d'2 d4 d d2. d4 a2 d4 a a2 g4 a bf2 b b a2 % Nous le savons
  cs2 d4 a a2 g4 bf a g g8 f e4 f1
  }
reponsBassesMusic =  \relative c {
  \partial 4 d4 cs a b cs d2. c4 f,2. g4 a2 b cs2. \fermata r4 % Chrétiens offrez…

  \partial 4 a4 b2 cs2 d4 c g a d2 r4 % L'Agneau…
  d4 d2 c f, f4 g a4 b cs2 \breathe
  b2 cs d4 c g a d2. \fermata r4

  \partial 4 d4 d1 cs4 a b cs d4 (g,) a2 \breathe % La mort et la vie…
  d2 c f,4 g a b cs2 r4
  a4 b2 cs d2 g, a1
  %a2 b4 cs d2 g,4 a d1 \fermata
  a2 gs4 g f g a2 d,1 \fermata

  \partial 4 \oneVoice r4 \voiceTwo f'1 e2. c4 d1 \breathe % Dis-nous Marie Madeleine…
  c bf1 c2. \breathe
  cs4 d1 e f2 g a2. \breathe
  cs,4 d1 e f2 g a2. \breathe r4

  d,4 c2 bf g bf4 c d2 c f,1 \breathe % J'ai vu les anges
  f'2 e d c4 d e2 e e2. \breathe
  a,4 b2 cs d4 c bf a g2 c f2. \breathe
  f,4 g2 a d4 c bf a g2 a d1 \fermata

  d2 d4 d d2. d4 cs a b cs d c bf a g2 gs a1 % Nous le savons
  a2 b4 cs d4 c bf g g2 a d1 \fermata
  }
reponsLyrics = \lyricmode {
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
FirstPageHeaders = \headers
OtherPageHeaders = \header {
  composer = ##f
  dedication = ##f
  poet = ##f
  subsubtitle = ##f
  subtitle = ##f
  title = ##f
  }

FirstScorePaper = \paper {
    left-margin = 2\cm
    right-margin = 2\cm
    bottom-margin = 0.5\cm
    two-sided = ##f

    oddFooterMarkup = {}
    #(include-special-characters)

    markup-system-spacing = #'((basic-distance . 30)
      (minimum-distance . 30)
       (padding . 4)
       (stretchability . 5))
    %top-markup-spacing = #'((basic-distance . 3)
    %   (minimum-distance . 3)
    %   (padding . 3)
    %   (stretchability . 3))
    %top-system-spacing = #'((basic-distance . 6)
    %   (minimum-distance . 6)
    %   (padding . 6)
    %   (stretchability . 5))
    system-system-spacing = #'((basic-distance . 12)
       (minimum-distance . 5)
       (padding . 1)
       (stretchability . 10))
    scoreTitleMarkup = \markup {
      \column {
        \fill-line { \italic \sans \fromproperty #'header:dedication }
        \vspace #1
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
    oddFooterMarkup = {}
  }
AllScoreLayout = \layout {
      ragged-last = ##t
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
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
        \new VaticanaVoice = "cantus" {
          \magnifyStaff #(magstep 3.5)
          \cantusSolistMusic
          \break
        }
        \new Lyrics \lyricsto "cantus" {
          Vic- ti- mæ Pás- ca- li lau- des
        }
      >>
      <<
        \new ChoirStaff = "solistStaff" \with {
          instrumentName = "Soliste"
          shortInstrumentName = "S."
          \override VerticalAxisGroup.staff-staff-spacing.basic-distance =
            #'(('basic-distance  . 5)
               (minimum-distance . 3)
               (padding . 1)
               (stretchability . 0))
        } {
          \key f \major \time 2/2
          \new Voice = "solistVoice" { \oneVoice \reponsSopranosMusic }
        }
        \new Lyrics \lyricsto "solistVoice" { \reponsLyrics }
        \new PianoStaff = "PianoStaff" \with {
          \override VerticalAxisGroup.staff-staff-spacing.basic-distance =
            #'(('basic-distance  . 5)
               (minimum-distance . 3)
               (padding . 1)
               (stretchability . 0))
          instrumentName = "Orgue"
          shortInstrumentName = "O."
        }
        <<
          \new Staff = "reponsHighStaff"
          <<
            \clef "treble"
            \new Voice = "reponsRhythms" { \reponsRhythms \bar "||" }
            \new Voice = "reponsSoprano" { \voiceOne \reponsSopranosMusic }
            \new Voice = "reponsAlto" { \voiceTwo \reponsAltosMusic }
          >>
          \new Staff  = "reponsLowStaff"
          <<
            \clef "bass"
            \new Voice = "reponsRhythms" { \reponsRhythms }
            \new Voice = "reponsTenor" { \voiceOne \reponsTenorsMusic }
            \new Voice = "reponsBass" { \voiceTwo \reponsBassesMusic }
          >>
        >>
      >>
      <<
        \new VaticanaVoice = "cantus" {
          \magnifyStaff #(magstep 3.5)
          \amenSolistMusic
          \break
        }
        \new Lyrics \lyricsto "cantus" {
          A- men, Al- le- lu- ia.
        }
      >>
    }
    \AllScoreLayout
    \FirstPageHeaders
  }
}