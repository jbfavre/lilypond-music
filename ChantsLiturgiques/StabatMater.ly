\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

headers = \header {
  title = "Stabat Mater"
  subtitle = "Dolorosa"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  dedication = "Clichy la Garenne, septembre 2021"
  }

global = {
  \key d \minor \time 2/4
}
preludeOrgueSoprano = \relative c'{
  d4. d8 f4 a a4. a8 g4 gs4
  a4. bf8 g4. a8 f4. g8 e4. f8 \break
  d8 d'4 d8 d8 cs8 cs4
  c,8 c'4 c8 c b b4
  bf,!8 bf'4 bf8 bf a a4
  a8 bf g a f g e f
}
preludeOrgueAlto = \relative c'{
  a4. a8 cs4 cs ef4. ef8 d4 d4
  f4. f8 f4. e8 d4. d8 d4. e8
  r8 f4. g2 r8 a4. d,2 r8 e4 d8 d4. f8 s2*2
}
preludeOrgueTenor = \relative c'{
  r8 a8 f d r8 a' f cs8 r8 a'8 ef c8 r8 g'8 r8 gs
  r8 d' c d8 r8 d8 bf8 d8 r8 b8 gs b8 r8 a8 g a
  r8 a8[ f a] r8 a8[ g a] r8 a8[ gs a] r8 b8[ c b] r8 d8[ bf? gs] r8 a8[ f d] s2*2
}
preludeOrgueBass = \relative f{
  d2 cs c b4 bf a2 bf b cs
  d,2 e fs g gs4. e8 f2
  a4 bf b cs
}
intonationRythms = {s2*8}
intonationTheme =   \relative c {
    d4.\( d8 f4 a a4. a8 a8\) (b) g (a) \break
    a8\( (bf!) f (g) g (a) a (gs) gs (a) a (g?) g (f)\) e8 r8 \break
  }

intonationSoprane =   \relative c' {
    d4.\( d8 f4 a a4. a8 a8\) (b) g (a)
    a8\( (bf!) f (g) a4 gs a4 a a\) a
  }

intonationAlto =   \relative c' {
    a4.\( a8 cs4 cs ef4. ef8 d4\) d
    d4.\( d8 f4 e e e f\) e
  }

intonationTenor =   \relative c {
    f4.\( f8 a4 f a4. a8 g4\) g
    g4.\( g8 d'4 d cs b! c\) cs
  }

intonationBass =   \relative c {
    d4.\( d8 cs4 cs c!4. c8 b4\) b
    bf!4.\( bf8 a8 (a') b4 a g f\) f8 (e)
  }


%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Répons     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
reponsRhythms = {
  s2*4 \break % Thème 1 Tutti
  s2*4 \break
  s2*4 \pageBreak
%{  \markCustom "B"
  s2*4 \break
  s2*4 \break
  s2*4 \pageBreak
  \markCustom "C"
  s2*4 \break
  s2*4 \break
  s2*4 \pageBreak
  \markCustom "D"
  s2*4 \break
  s2*4 \break
  s2*4 \pageBreak
  \markCustom "E"
  s2*4 \break
  s2*4 \break
  s2*4 \pageBreak
  \markCustom "F"
  s2*4 \break
  s2*4 \break
  s2*4 \pageBreak
  \markCustom "G"
  s2*4 \break
  s2*4 \break
  s2*4 \pageBreak
  \markCustom "H"
  s2*4 \break
  s2*4 \break
  s2*4 \pageBreak
%}  \bar "|." \break
  }
reponsSopranosMusic = {
  \relative c' {
    d4.\( d8 f4 a a4. a8 a8\) (b) g (a)
    a8\( (bf!) f (g) a4 gs a4 a a\) a
    a4.\( a8 g4. g8 a4.\) a8 a2\fermata
  }

%{  \relative c''{
    d4.\( d8 d cs cs cs c!8\) c c c c b b b
    bf8 bf bf bf bf (a) a4 a2 a4 a
    a4. a8 gs4 g f f8 (e) e2\fermata
  }

  \relative c' {
    d4.\( d8 f4 a a4. a8 a8\) (b) g (a)
    a8\( (bf!) f (g) a4 gs a4 a a\) a
    a4.\( a8 g4. g8 a4.\) a8 a2\fermata
  }

  \relative c''{
    d4. d8 d8 (cs) cs4 c?4. c8 c8 (b) b4
    bf!4. bf8 bf8 (a) a4 a4. a8 a4 a4
    a4. a8 a4 gs a4. a8 a2\fermata
  }

  \relative c' {
    d4.\( d8 f4 a a4. a8 a8\) (b) g (a)
    a8\( (bf!) f (g) a4 gs a4 a a\) a
    a4.\( a8 g4. g8 a4.\) a8 a2\fermata
  }

  \relative c''{
    d4.\( d8 d cs cs cs c!8\) c c c c b b b
    bf8 bf bf bf bf (a) a4 a2 a4 a
    a4. a8 gs4 g f f8 (e) e2\fermata
  }

  \relative c' {
    d4.\( d8 f4 a a4. a8 a8\) (b) g (a)
    a8\( (bf!) f (g) a4 gs a4 a a\) a
    a4.\( a8 g4. g8 a4.\) a8 a2\fermata
  }

  \relative c''{
    d4. d8 d8 (cs) cs4 c?4. c8 c8 (b) b4
    bf!4. bf8 bf8 (a) a4 a4. a8 a4 a4
    a4. a8 a4 gs a4. a8 a2\fermata
  }
%}
}
reponsAltosMusic = {
  \relative c' {
    a4.\( a8 cs4 cs ef4. ef8 d4\) d
    d4.\( d8 f4 e e e f\) e
    f4.\( d8 d4 d8 (cs) d4\) e e2\fermata
  }
%{  \relative c'{
    f4.\( f8 e8\) e e4 ef4. ef8 d4 d4
    df4. df8 c4 c4 e2 f4 f8 (e)
    d4. d8 d4 d d d cs2\fermata
  }
  \relative c'{
    a4.\( a8 cs4 cs ef4. ef8 d4\) d
    d4.\( d8 f4 e e e f\) e
    f4.\( f8 d4 d d\) e e2\fermata
  }
  \relative c'{
    f4 f g4 g8 a a2 a8 (g4) e8
    e4 e f4. f8 f4 f e e4
    f4 f e e f f f2\fermata
  }
  \relative c'{
    a4.\( a8 cs4 cs ef4. ef8 d4\) d
    d4.\( d8 f4 e e e f\) e
    f4.\( f8 d4 d d\) e e2\fermata
  }
  \relative c'{
    f4.\( f8 e8\) e e4 ef4. ef8 d4 d4
    df4. df8 c4 c4 e2 f4 f8 (e)
    d4. d8 d4 d d d cs2\fermata
  }
  \relative c'{
    a4.\( a8 cs4 cs ef4. ef8 d4\) d
    d4.\( d8 f4 e e e f\) e
    f4.\( f8 d4 d d\) e e2\fermata
  }
  \relative c'{
    f4 f g4 g8 a a2 a8 (g4) e8
    e4 e f4. f8 f4 f e e4
    f4 f e e f f f2\fermata
  }
%}
}
reponsTenorsMusic =  {
  \relative c {
    f4.\( f8 a4 f a4. a8 g4\) g
    g4.\( g8 d'4 d cs b! c\) cs
    d4.\( f8 bf,4. bf8 d8 (c)\) bf4 cs2\fermata
  }
%{  \relative c' {
    a4. a8 a8 a a4 g4. g8 g4 g4
    f4. f8 f4 f4 cs'4 (d) c8 (b) a8 (g)
    f4. f8 bf?4 bf a bf a2\fermata
  }
  \relative c {
    f4.\( f8 a4 f a4. a8 g4\) g
    g4.\( g8 d'4 d cs b! c\) cs
    d4.\( d8 bf4 bf d4\) d cs2\fermata
  }
  \relative c' {
    a4 a a4 bf8 a d2 d4. d8
    d4 d d4. d8 d4 d cs cs4
    d4 d d d a4. e'8 d2\fermata
  }
  \relative c {
    f4.\( f8 a4 f a4. a8 g4\) g
    g4.\( g8 d'4 d cs b! c\) cs
    d4.\( d8 bf4 bf d4\) d cs2\fermata
  }
  \relative c' {
    a4. a8 a8 a a4 g4. g8 g4 g4
    f4. f8 f4 f4 cs'4 (d) c8 (b) a8 (g)
    f4. f8 bf?4 bf a bf a2\fermata
  }
  \relative c {
    f4.\( f8 a4 f a4. a8 g4\) g
    g4.\( g8 d'4 d cs b! c\) cs
    d4.\( d8 bf4 bf d4\) d cs2\fermata
  }
  \relative c' {
    a4 a a4 bf8 a d2 d4. d8
    d4 d d4. d8 d4 d cs cs4
    d4 d d d a4. e'8 d2\fermata
  }
%}
}
reponsBassesMusic =  {
  \relative c {
    d4.\( d8 cs4 cs c!4. c8 b4\) b
    bf!4.\( bf8 a8 (a') b4 a g f\) f8 (e)
    d4.\( d8 e4. e8 f4\) g a2\fermata
  }
%{  \relative c {
    d2 cs4 a8 (b) c4 c4 b4 g8 (a)
    bf8 bf bf bf a4 f8 (g) a4 (b) c cs
    d4. d8 e4 e f g a2\fermata
  }
  \relative c {
    d4.\( d8 cs4 cs c!4. c8 b4\) b
    bf!4.\( bf8 a8 (a') b4 a g f\) f8 (e)
    d4.\( d8 e4 e f\) g a2\fermata
  }
  \relative c {
    d4 d e4 e8 e fs2 g4. g8
    g4 gs a4. a8 a8 (g) f (d) a4 a4
    a4 a bf b c cs d2\fermata
  }
  \relative c {
    d4.\( d8 cs4 cs c!4. c8 b4\) b
    bf!4.\( bf8 a8 (a') b4 a g f\) f8 (e)
    d4.\( d8 e4 e f\) g a2\fermata
  }
  \relative c {
    d2 cs4 a8 (b) c4 c4 b4 g8 (a)
    bf8 bf bf bf a4 f8 (g) a4 (b) c cs
    d4. d8 e4 e f g a2\fermata
  }
  \relative c {
    d4.\( d8 cs4 cs c!4. c8 b4\) b
    bf!4.\( bf8 a8 (a') b4 a g f\) f8 (e)
    d4.\( d8 e4 e f\) g a2\fermata
  }
  \relative c {
    d4 d e4 e8 e fs2 g4. g8
    g4 gs a4. a8 a8 (g) f (d) a4 a4
    a4 a bf b c cs d2\fermata
  }
%}
}
reponsLyrics = \lyricmode {
  Sta -- bat Ma -- ter do -- lo -- ró -- sa
  iu -- xta cru -- cem la -- cri -- mó -- sa,
  dum pen -- dé -- bat Fí -- li -- us.

  Cu -- ius á -- ni -- mam ge -- mén -- tem,
  con -- tris -- tá -- tam et do -- lén -- tem,
  per -- tran -- sí -- vit glá -- di -- us.
  per -- tran -- sí -- vit glá -- di -- us.

  O quam tris -- tis et af -- flí -- cta
  fu -- it il -- la be -- ne -- dí -- cta
  Ma -- ter U -- ni -- gé -- ni -- ti.

  Quæ mæ -- ré -- bat, et do -- léb -- at,
  Pi -- a Ma -- ter dum vi -- dé -- bat
  na -- ti pœ -- nas ín -- cly -- ti.

  Quis est ho -- mo, qui non fle -- ret,
  Ma -- trem Chri -- sti si vi -- dé -- ret
  in tan -- to sup -- plí -- ci -- o&nbsp;?

  Quis non pos -- set con -- tri -- stá -- ri,
  Pi -- am Ma -- trem con -- tem -- pla -- ri
  do -- len -- tem cum Fi -- li -- o&nbsp;?
  do -- len -- tem cum Fi -- li -- o&nbsp;?

  Pro pec -- cá -- tis su -- æ gen -- tis
  vi -- dit Ie -- sum in tor -- mén -- tis
  et fla -- gél -- lis súb -- di -- tum.

  Vi -- dit su -- um dul -- cem na -- tum
  Mo -- ri -- én -- tem de -- so -- lá -- tum,
  Dum e -- mí -- sit spí -- ri -- tum.

Eia Mater, fons amóris,
Me sentíre vim dolóris
Fac, ut tecum lugéam.

Fac, ut ardeat cor meum
In amando Christum Deum,
Ut sibi complaceam.

Sancta Mater, istud agas,
Crucifixi fige plagas
Cordi meo valide.

Tui nati vulnerati,
Tam dignati pro me pati,
Pœnas mecum divide.

Fac me tecum pie flere,
Crucifixo condolere,
Donec ego vixero.

Iuxta Crucem tecum stare,
Et me tibi sociare
In planctu desidero.

Virgo virginum præclara,
Mihi iam non sis amara :
Fac me tecum plangere.

Fac ut portem Christi mortem,
Passionis fac consortem,
Et plagas recolere.

Fac me plagis vulnerari,
Fac me Cruce inebriari
Et cruore Filii.

Flammis ne urar succensus
Per te, Virgo, sim defensus
In die iudicii

Christe, cum sit hinc exire,
Da per Matrem me venire
Ad palmam victoriæ.

Quando corpus morietur,
Fac ut animæ donetur
Paradisi gloria.
}
reponsAltoLyrics = \lyricmode {
  Sta -- bat Ma -- ter do -- lo -- ró -- sa
  iu -- xta cru -- cem la -- cri -- mó -- sa,
  dum pen -- dé -- bat Fí -- li -- us.

  Cu -- ius á -- ni -- mam, %ge -- mén -- tem,
  con -- tris -- tá -- tam, %et do -- lén -- tem,
  per -- tran -- sí -- vit glá -- di -- us.
  per -- tran -- sí -- vit glá -- di -- us.

  O quam tris -- tis et af -- flí -- cta
  fu -- it il -- la be -- ne -- dí -- cta
  Ma -- ter U -- ni -- gé -- ni -- ti.

  Quæ mæ -- ré -- bat, et do -- léb -- at,
  Pi -- a Ma -- ter dum vi -- dé -- bat
  na -- ti pœ -- nas ín -- cly -- ti.

  Quis est ho -- mo, qui non fle -- ret,
  Ma -- trem Chri -- sti si vi -- dé -- ret
  in tan -- to sup -- plí -- ci -- o&nbsp;?

  Quis non pos -- set con -- tri -- stá -- ri,
  Pi -- am Ma -- trem con -- tem -- pla -- ri
  do -- len -- tem cum Fi -- li -- o&nbsp;?

  Pro pec -- cá -- tis su -- æ gen -- tis
  vi -- dit Ie -- sum in tor -- mén -- tis
  et fla -- gél -- lis súb -- di -- tum.

  Vi -- dit su -- um dul -- cem na -- tum
  Mo -- ri -- én -- tem de -- so -- lá -- tum,
  Dum e -- mí -- sit spí -- ri -- tum.

}
reponsTenorLyrics = \lyricmode {
  Sta -- bat Ma -- ter do -- lo -- ró -- sa
  iu -- xta cru -- cem la -- cri -- mó -- sa,
  dum pen -- dé -- bat Fí -- li -- us.

  Cu -- ius á -- ni -- mam, %ge -- mén -- tem,
  con -- tris -- tá -- tam, %et do -- lén -- tem,
  per -- tran -- sí -- vit glá -- di -- us.
  per -- tran -- sí -- vit glá -- di -- us.

  O quam tris -- tis et af -- flí -- cta
  fu -- it, il -- la be -- ne -- dí -- cta
  Ma -- ter U -- ni -- gé -- ni -- ti.

  Quæ mæ -- ré -- bat, et do -- léb -- at,
  Pi -- a Ma -- ter dum vi -- dé -- bat
  na -- ti pœ -- nas ín -- cly -- ti.

  Quis est ho -- mo, qui non fle -- ret,
  Ma -- trem Chri -- sti si vi -- dé -- ret
  in tan -- to sup -- plí -- ci -- o&nbsp;?

  Quis non pos -- set con -- tri -- stá -- ri,
  Pi -- am Ma -- trem con -- tem -- pla -- ri
  do -- len -- tem cum Fi -- li -- o&nbsp;?

  Pro pec -- cá -- tis su -- æ gen -- tis
  vi -- dit Ie -- sum in tor -- mén -- tis
  et fla -- gél -- lis súb -- di -- tum.

  Vi -- dit su -- um dul -- cem na -- tum
  Mo -- ri -- én -- tem de -- so -- lá -- tum,
  Dum e -- mí -- sit spí -- ri -- tum.

}
reponsBassLyrics = \lyricmode {
  Sta -- bat Ma -- ter do -- lo -- ró -- sa
  iu -- xta cru -- cem la -- cri -- mó -- sa,

  Sta -- bat Ma -- ter do -- lo -- ró -- sa
  iu -- xta cru -- cem la -- cri -- mó -- sa,
  dum pen -- dé -- bat Fí -- li -- us.

  Cu -- ius, ge -- mén -- tem,
  et do -- lén -- tem,
  per -- tran -- sí -- vit glá -- di -- us.
  per -- tran -- sí -- vit glá -- di -- us.

  O quam tris -- tis et af -- flí -- cta
  fu -- it, il -- la be -- ne -- dí -- cta
  Ma -- ter U -- ni -- gé -- ni -- ti.

  Quæ mæ -- ré -- bat, et do -- léb -- at,
  Pi -- a Ma -- ter dum vi -- dé -- bat
  na -- ti pœ -- nas ín -- cly -- ti.

  Quis est ho -- mo, qui non fle -- ret,
  Ma -- trem Chri -- sti si vi -- dé -- ret
  in tan -- to sup -- plí -- ci -- o&nbsp;?

  Quis non pos -- set con -- tri -- stá -- ri,
  Pi -- am Ma -- trem con -- tem -- pla -- ri
  do -- len -- tem cum Fi -- li -- o&nbsp;?

  Pro pec -- cá -- tis su -- æ gen -- tis
  vi -- dit Ie -- sum in tor -- mén -- tis
  et fla -- gél -- lis súb -- di -- tum.

  Vi -- dit su -- um dul -- cem na -- tum
  Mo -- ri -- én -- tem de -- so -- lá -- tum,
  Dum e -- mí -- sit spí -- ri -- tum.

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
  left-margin = 2\cm
  right-margin = 1\cm
  %indent = 2\cm
  % Plan for recto-verso printing with inner margin
  %two-sided = ##t
  %inner-margin =  2\cm
  %outer-margin = 1.5\cm
  %two-sided = ##f
  %inner-margin =  0\cm
  %outer-margin = 0\cm

  oddFooterMarkup = {}
  #(include-special-characters)

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
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          %\RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          %\RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Antienne          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\bookpart {
  \FirstScorePaper
  \score {
    << % Partition Orgue + Choeur
%{      \new ChoirStaff
      <<
        \new Staff \with { instrumentName = \markup{ "S."} shortInstrumentName = \markup{"S."} }
        <<
          \override Staff.VerticalAxisGroup.remove-first = ##t
          \clef "treble"
          \new Dynamics {\global \silence \preludeOrgueSoprano \silence \intonationRythms \reponsRhythms \bar "||" }
          \new Voice = "reponsSoprano" {\global \silence \preludeOrgueSoprano \oneVoice R2*8 \reponsSopranosMusic }
          \new Lyrics \lyricsto "reponsSoprano" { \reponsLyrics }
        >>
        \new Staff \with { instrumentName = \markup{ "A."} shortInstrumentName = \markup{"A."} }
        <<
          \override Staff.VerticalAxisGroup.remove-first = ##t
          \clef "treble"
          \new Dynamics {\global \silence \preludeOrgueSoprano \silence \intonationRythms \reponsRhythms \bar "||" }
          \new Voice = "reponsAlto" {\global \silence \preludeOrgueSoprano \oneVoice R2*8 \reponsAltosMusic }
          \new Lyrics \lyricsto "reponsAlto" { \reponsAltoLyrics }
        >>
        \new Staff \with { instrumentName = \markup{ "T."} shortInstrumentName = \markup{"T."} }
        <<
          \override Staff.VerticalAxisGroup.remove-first = ##t
          \clef "treble_8"
          \new Dynamics {\global \silence \preludeOrgueSoprano \silence \intonationRythms \reponsRhythms }
          \new Voice = "reponsTenor" {\global \silence \preludeOrgueSoprano \oneVoice R2*8 \reponsTenorsMusic }
          \new Lyrics \lyricsto "reponsTenor" { \reponsTenorLyrics }
        >>
        \new Staff \with { instrumentName = \markup{ "B."} shortInstrumentName = \markup{"B."} }
        <<
          \override Staff.VerticalAxisGroup.remove-first = ##t
          \clef "bass"
          \new Dynamics {\global \silence \preludeOrgueSoprano \silence \intonationRythms \reponsRhythms }
          \new Voice = "reponsBass" {\global \silence \preludeOrgueSoprano \oneVoice \intonationTheme \reponsBassesMusic }
          \new Lyrics \lyricsto "reponsBass" { \reponsBassLyrics }
        >>
      >>
%}      \new PianoStaff \with { instrumentName = \markup{ "O."} shortInstrumentName = \markup{"O."}
        %midiInstrument = "piccolo"  % Pipe Organ
        %midiInstrument = "flute"    % Grand plein jeu
        midiInstrument = "recorder" % Principaux 8 4
      }
      <<
        \new Staff
        <<
          \clef treble
          \new Voice {\voiceOne \global \preludeOrgueSoprano \break \intonationSoprane \reponsSopranosMusic}
          \new Voice {\voiceTwo \global \preludeOrgueAlto \intonationAlto \reponsAltosMusic}
        >>
        \new Staff
        <<
          \clef bass
          \new Voice{ \voiceOne \global \preludeOrgueTenor \intonationTenor \reponsTenorsMusic}
          \new Voice{ \voiceTwo \global \preludeOrgueBass \intonationBass \reponsBassesMusic}
        >>
      >>
    >>
    \AllScoreLayout
    \FirstPageHeaders
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
}