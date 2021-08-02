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
  dedication = "Au père Thomas B."
  }

cantusSolistMusic = {
  \clef "vaticana-do3"
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
  \partial 4 s4 s1*4  \bar "||" \break % Chrétiens offrez…
  \markCustom "B"
  \partial 4 s4 s1*9  \bar "||" \break % L'Agneau…
  \markCustom "C"
  \partial 4 s4 s1*11 \bar "||" \break % La mort et la vie…
  \markCustom "D"
  \partial 4 s4 s1*14 \bar "||" \break % Dis-nous Marie Madeleine…
  \markCustom "E"
                s1*16 \bar "||" \break % J'ai vu les anges
  \markCustom "F"
                s1*10 \bar "|." \break % Nous le savons
  }
reponsSopranosMusic = \relative c'' {
  \partial 4 a4 a2 g f4 e f g a a c b a4 (gs) a4 \fermata r4 % Chrétiens offrez…

  \partial 4 a4 g g a a f2 e4 e d2 r4 % L'Agneau…
  d4 f2 g4 g a2 c4 b a4 gs a2 \breathe
  g2 a4 a f4 f e e d2 \fermata d4 r4

  \partial 4 d d2 a'4 a a4 a a4 g f2 e2 \breathe % La mort et la vie…
  f2 g4 g a2 c4 b a2 r4
  a4 g g a a f4 e e2 r4
  a4 g a f2 (e) d1 \fermata

  \partial 4 d4 d2. a'4 a2 a4 g f2 e \breathe % Dis-nous Marie Madeleine…
  f2 g a c4 b a2. \breathe
  a4 g2 a4 g f2 e4 f g2 f2 e1
  r4 a4 g a f2 f g4 f e e d1 \fermata

  d2 a'4 a a2. g4 f2 e2 d1 % J'ai vu les Anges
  f2 g2 a2 c4 b a2 gs a2. \breathe
  a4 g g a a f2 g4 a g2 f e2. \breathe
  a4 g g a a f2. f4 g (f) e2 d1

  d2 d4 d a'2. a4 a2 a4 g4 f f e f g2 f e1 % Nous le savons
  a2 g4 a f2 e4 d d2 d4 c! d1 \fermata
  }
reponsAltosMusic = \relative c' {
  \partial 4 f4 e2 e d2. e4 f2. e4 e2 e4 r4 % Chrétiens offrez…

  \partial 4 e4 e1 d2 (d4.) cs8 a2 r4 % L'Agneau…
  d4 d2 e2 f1 e2 e2 \breathe
  e1 d2.  cs4 a2. r4

  \partial 4 a4 a2. d4 e1 d2 cs2 \breathe % La mort et la vie…
  d2 e f e2 (e) r4
  e4 e1 d2 cs2
  e1 d2. cs4 a1

  \partial 4 a4 a2. d4 e2 e2 d2 cs \breathe % Dis-nous Marie Madeleine…
  d2 e f e2 e2. \breathe
  e4 e2 e d d d d cs1
  e2 e2 d1 d2 d4. cs8 a1

  d2 f4 f e2. e4 d2 cs d1
  d2 e f f e e e2.
  e4 e2 e d d d d cs2.
  e4 e2 e2 d1 d2 d4 cs a1

  d2 d4 d f2. f4 e2 e d d e d d cs2 % Nous le savons
  e2 e4 e d2. bf4 bf2 a a1
  }
reponsTenorsMusic =  \relative c' {
  \partial 4 d4 a2 d2 a2. a4 c2. g4 c4 b a4 \fermata r4 % Chrétiens offrez…

  \partial 4 cs4 d2 a2 (a2) bf4 a8 g f2 r4 % L'Agneau…
  a4 a2 c2 c2 a4 b c4 b a2 \breathe
  b2 a2 a4 bf a g f2. r4

  \partial 4 f4 f1 a4 cs d a a4 (bf) a2 \breathe % La mort et la vie…
  a2 c c4 b a gs a2 r4 cs d2 a (a4) bf a2
  cs2 d4 a a2 bf4 a8 g f1

  \partial 4 f4 f2. f4  a4 cs d a a4 (bf8 b) a2 \breathe % Dis-nous Marie Madeleine…
  a2 c c4 b a gs a2. \breathe
  cs4 d2 a a a bf b a1
  cs2 d4 a a2 bf4 b a2. g4 f1

  d'2 a4 a a2. a4 a2 a4 g f1
  a2 c c2 a4 g c2 b a2.
  cs4 d2 a2 a a bf b a1
  cs2 d4 a a1 bf4 b a g f1

  d'2 d4 d d2. d4 a2 d4 a a2 g4 a bf2 b b a2 % Nous le savons
  cs2 d4 a a2 g2 g1 f1
  }
reponsBassesMusic =  \relative c {
  \partial 4 d4 cs a b cs d2. c4 f,2. g4 a4 b cs4 \fermata r4 % Chrétiens offrez…

  \partial 4 a4 b2 cs2 d4 c g a d2 r4 % L'Agneau…
  d4 d2 c f, f4 g a4 b cs2 \breathe
  b2 cs d4 c g a d2. \fermata r4

  \partial 4 d4 d1 cs4 a b cs d4 (g,) a2 \breathe % La mort et la vie…
  d2 c f,4 g a b cs2 r4
  a4 b2 cs d4 g, a2
  a2 b4 cs d2 g,4 a d1 \fermata

  \partial 4 d4 d2. d4 cs a b cs d8 c g gs a2 \breathe % Dis-nous Marie Madeleine…
  d2 c f,4 g a b cs2. \breathe
  a4 b2 cs4 cs d2 d4 c g2 gs a1
  a2 b4 cs d c g gs a2 a2 d1 \fermata

  d2 d4 d cs a b cs d g, a2 d1
  d2 c f, f4 g a2 b cs2.
  a4 b2 cs d4 c bf2 g2 gs a2.
  a4 b2 cs d4 c bf a g gs a2 a1

  d2 d4 d d2. d4 cs a b cs d c bf a g2 gs a1 % Nous le savons
  a2 b4 cs d4 c bf a g2 a d1 \fermata
  }
reponsLyrics = \lyricmode {
  Chré -- tiens of -- frez le sa -- cri -- fi -- ce de lou -- an -- ge

  L'A -- gneau a ra -- che -- té les bre -- bis&nbsp;;
  Le Christ in -- no -- cent a ré -- con -- ci -- lié
  l'hom -- me pé -- cheur a -- avec le Pè -- re.

  La mort et la vi -- e s'af -- fron -- tè -- rent
  en un du -- el pro -- di -- gieux.
  Le Maî -- tre de la vie mou -- rut&nbsp;; vi -- vant, il rè -- gne.

  Dis- -- nous, Ma -- rie Ma -- de -- lei -- ne,
  qu'a-s -- tu vu en che -- min&nbsp;?
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

  %systems-per-page = 4
  %#(define fonts
  %  (set-global-fonts
  %   #:music "emmentaler"
  %   #:brace "emmentaler"
  %   #:roman "Latin Modern Roman"
  %   #:sans "Latin Modern Sans"
  %   #:typewriter "Monospace Regular"
  %  ))
  }
FirstScorePaper = \paper {
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
    scoreTitleMarkup = \markup { \columns {
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
    oddFooterMarkup = {}
  }
OtherScoresPaper = \paper {
    markup-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 5))
    top-markup-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
     4 (stretchability . 5))
    top-system-spacing = #'((basic-distance . 9)
       (minimum-distance . 9)
       (padding . 7)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
      (stretchability . 5))
  }
LastScorePaper = \paper {
    top-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 3)
       (padding . 1)
       (stretchability . 10))
    system-system-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 1)
       (stretchability . 10))
   score-markup-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 1)
       (stretchability . 10))
    markup-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 3)
       (padding . 1)
       (stretchability . 10))
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
      \new ChoirStaff = "ChoirStaff"
      {
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
          \new Staff = "reponsHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } }
          <<
            \clef "treble"
            \new Voice = "reponsRhythms" { \reponsRhythms \bar "||" }
            \new Voice = "reponsSoprano" { \voiceOne \reponsSopranosMusic }
            \new Voice = "reponsAlto" { \voiceTwo \reponsAltosMusic }
          >>
          \new Lyrics \lyricsto "reponsSoprano" { \reponsLyrics }
          \new Staff  = "reponsLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } }
          <<
            \clef "bass"
            \new Voice = "reponsRhythms" { \reponsRhythms }
            \new Voice = "reponsTenor" { \voiceOne \reponsTenorsMusic }
            \new Voice = "reponsBass" { \voiceTwo \reponsBassesMusic }
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
    }
    \AllScoreLayout
    \FirstPageHeaders
  }
}