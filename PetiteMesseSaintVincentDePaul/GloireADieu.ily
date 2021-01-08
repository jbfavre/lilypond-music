\version "2.18.2"
\language "english"

%\include "../libs/commonFunctions.ily"
%\include "../libs/settings.ily"
%\include "../libs/translations/fr.ily"
%\include "../libs/layouts/book-titling.ily"
%\include "../PetiteMesseSaintVincentDePaul/pianoSettings.ily"

gloriaHeader = \header {
  title = "Petite messe de Saint Vincent de Paul"
  piece = "Gloire à Dieu"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  opus = ##f
  copyright = \markup { \typewriter "Extrait de la Petite messe de Saint Vincent de Paul" }
}

gloriaKeyTime = {
  \key d \minor
  \time 3/4
  %\tempo 2. = 50
}

gloriaRythm = \relative c' {
  }
gloriaSolistMusic = \relative c' {
  \time 3/4
  \partial 4 d8 d
  d4 d8 e f d \bar "|." \time 2/4 e4.^"Paisible" a8^"Assemblée" \break
  \mark \default
  a4 a8 a a4 a8 a a4 gs8 gs a4 a \bar "||" \break
  \time 3/8
  d,8^"Chantre" f g \time 6/8 a4 d,16^"Assemblée" e f4 g8 a4.  f8^"Chantre" g g a4 f16^"Assemblée" e f4 g8 a4. \bar "||" \break
  d,16^"Chantre" f g8 bf a a8 f g16 a g8 f e4 e8\bar "||"
  d8^"Assemblée" f4 g4. bf8 bf a4 a8 f g a g f e2 \bar "||" \break
  d4^"Chantre" e f8 g f e d4 cs d2 \bar "||" \break
  d8^"Assemblée" d e e f g f e d4 cs d4 d \bar "||" \break
  \time 3/8 d8^"Chantre" f a bf bf a g a bf a4 g8 f4.^"Assemblée" g8 f g a4.~ a4. \bar "||" \break
  d,8^"Chantre" f a c c c bf a g a a g^"Assemblée" f4. g8 f g a4. a4 a8^"Chantre"\bar "||" \break
  d,8 f a d d c bf a g a4 g8 f4.^"Assemblée" g8 f g a4. \bar "||" \break
  r8 a8^"Chantre" a bf4.  g a4. r4 a8^"Assemblée" c4. bf4 bf8 a4. \bar "||" \break
  r4 a8^"Chantre" d4. d8 c bf a g f e4 e8  \bar "||" \break
  d4. e8 gs b a4. g4^"Assemblée" g8 f g a f4 d8 e4. d4. d4. \bar "||"
  }
gloriaSolistLyrics = \lyricmode {
    Gloi -- re~à Dieu, au plus haut des cieux&nbsp;!
    Et paix, sur la ter -- re aux hom -- mes qu'il ai -- me&nbsp;!
    Nous te lou -- ons, nous te bé -- nis -- sons
    Nous t'a -- do -- rons, nous te glo -- ri -- fions
    Nous te ren -- dons grâ -- ce pour ton im -- men -- se gloi -- re
    Sei -- gneur Dieu, Roi du ciel, Dieu le pè -- re tout puis -- sant
    Sei -- gneur, Fils u -- ni -- que Jé -- sus Christ
    Sei -- gneur Dieu, a -- gneau de Dieu, le Fils du Pè -- re
    Toi qui en -- lè -- ves le pé -- ché du mon -- de, prends pi -- tié de nous
    Toi qui en -- lè -- ves le pé -- ché du mon -- de, re -- çois no -- tre pri -- èr -- e
    Toi qui es as -- sis à la droi -- te du Pè -- re, prends pi -- tié de nous
    Car toi seul est saint
    Toi seul es Sei -- gneur
    Toi seul es le très haut, Jé -- sus Christ
    A -- vec le Saint Es -- prit, dans la gloi -- re de Dieu le Pè -- re,
    A -- men&nbsp;!
  }

gloriaSopranoMusic = \gloriaSolistMusic
gloriaSopranoLyrics = \gloriaSolistLyrics

gloriaAltoMusic = \relative c' {
  a8 a a4 b8 d d d cs4. e8
  f4 f8 f f4 f8 f f4 e8 e e4 e
  a,8 e' e e4 a,16 a e'4 e8 e4. d8 e e e4 e16 e d4 e8 e4.
  }
gloriaAltoLyrics = \gloriaSolistLyrics

gloriaTenorMusic = \relative c {
  f8 f f4 f8 f f f a4. cs8
  d4 d8 d e4 e8 e d4 d8 d d4 cs
  f,8 a d cs4 f,16 f a4 d8 cs4. bf8 d d cs4 cs16 cs bf4 d8 cs4.
  }
gloriaTenorLyrics = \gloriaSolistLyrics

gloriaBasseMusic = \relative f {
  d8 d c4 b8 b bf bf a4. a8
  d4 d8 d c4 c8 c b4 bf8 bf a4 a
  d8 c bf a4 d16 d c4 bf8 a4. bf8 bf e a,4 a16 a bf8 (g') e8 a,4.
  s2*4
  s2*4
  s2*4
  s2*4
  s2*4
  d8 d c bf bf bf e e e a, (b) cs d4 (c8) bf a bf a4.~ a4.
  d8 d d c bf a g a bf a b cs d4 c8 bf a bf a4. a4 a8
  d8 d c bf bf a g a bf a (b) cs d4. e4. a,4.
  r8 d8 d bf4. bf a r4 d8 c4. d4 d8 a4.
  r4 a8 bf4. g8 a bf c4 d8 e4.
  }
gloriaBasseLyrics = \gloriaSolistLyrics

gloriaScore =  <<
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = \sopranoVoiceTitle shortInstrumentName = \sopranoVoiceShortTitle }
          <<
            \gloriaKeyTime \clef treble
            \new Voice = "gloriaRythm" { \gloriaRythm }
            \new Voice = "gloriaSoprano" { \gloriaSopranoMusic \fermata }
            \new Lyrics \lyricsto "gloriaSoprano" { \gloriaSopranoLyrics }
          >>
          \new Staff \with { instrumentName = \altoVoiceTitle shortInstrumentName = \altoVoiceShortTitle }
          <<
            \gloriaKeyTime \clef treble
            \new Voice = "gloriaAlto" { \gloriaAltoMusic \fermata }
            \new Lyrics \lyricsto "gloriaAlto" { \gloriaAltoLyrics }
          >>
          \new Staff \with { instrumentName = \tenorVoiceTitle shortInstrumentName = \tenorVoiceShortTitle }
          <<
            \gloriaKeyTime \clef "treble_8"
            \new Voice = "gloriaTenor" { \gloriaTenorMusic \fermata }
            \new Lyrics \lyricsto "gloriaTenor" { \gloriaTenorLyrics }
          >>
          \new Staff \with { instrumentName = \bassVoiceTitle shortInstrumentName = \bassVoiceShortTitle }
          <<
            \gloriaKeyTime \clef bass
            \new Voice = "gloriaBasse" { \gloriaBasseMusic \fermata }
            \new Lyrics \lyricsto "gloriaBasse" { \gloriaBasseLyrics }
          >>
        >>
        %\new PianoStaff \with { instrumentName = \organVoiceTitle shortInstrumentName = \organVoiceShortTitle }
        %<<
        %  \new Staff <<
        %    \gloriaKeyTime \clef treble
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \transpose a g { \gloriaSopranoMusic } \fermata >>
        %    << \transpose a g { \gloriaAltoMusic } >>
        %  >>
        %  \new Staff <<
        %    \gloriaKeyTime \clef bass
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \transpose a g { \gloriaTenorMusic } >>
        %    << \transpose a g { \gloriaBasseMusic } \fermata >>
        %  >>
        %>>
      >>