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
  d4 d8 e f d \bar "|." \time 2/4 e4. d8^"Assemblée" \break
  \mark \default
  a'4 g8 f e4 e8 c d (e) f g a4 a4 \bar "||" \break
  d,4^"Chantre" f8 g e2 d8^"Assemblée" e f g e2 \bar "||" \break
  d4^"Chantre" g8 g a2 d,8^"Assemblée" f g g a2 \bar "||" \break
  d,8^"Chantre" f g bf a4 a8 f g a g f e4 d8^"Assemblée" f \bar "||"
  g4 bf8 bf a4 a8 f g a g f e2 \bar "||" \break
  d4^"Chantre" e f8 g f e d4 cs d2 \bar "||" \break
  d8^"Assemblée" d e e f g f e d4 cs d4 d \bar "||" \break
  f4^"Chantre" d8 f g4 f e8 e f g a4 a4 c8^"Assemblée" b a gs a2 \bar "||" \break
  f4^"Chantre" d8 f g4 f e8 e f g a4 a8 a^"Assemblée" c8 b a gs a4 a \bar "||" \break
  a8^"Chantre" a g a c4 b8 c d4 c8 b a4 a c8^"Assemblée" b a gs a2 \bar "||" \break
  a8^"Chantre" a g f e4. d8^"Assemblée" \bar "||" a'4 g8 f e4. c8^"Chantre" \bar "||" \break
  d8 e f a c4 b8 b a4. a8 \bar "||" a^"Assemblée" g f g e4 d8 e f4 f8 a c b a (gs) a2 \bar "||"
  a2 a2
  }
gloriaSolistLyrics = \lyricmode {
    Gloi -- re~à Dieu, au plus haut des cieux&nbsp;!
    Et paix, sur la ter -- re aux hom -- mes qu'il ai -- me&nbsp;!
    Nous te lou -- ons, nous te bé -- nis -- sons
    Nous t'a -- do -- rons, nous te glo -- ri -- fions
    Nous te ren -- dons grâ -- ce pour ton im -- men -- se gloire
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
  a8 a a4 b8 d d d cs4.
  }
gloriaAltoLyrics = \gloriaSolistLyrics

gloriaTenorMusic = \relative c {
  f8 f
  f4 f8 f f f a4.
  }
gloriaTenorLyrics = \gloriaSolistLyrics

gloriaBasseMusic = \relative f {
  d8 d
  c4 b8 b bf bf a4.
  }
gloriaBasseLyrics = \gloriaSolistLyrics

gloriaScore =  <<
        \new ChoirStaff
        <<
          \new Staff %\with { instrumentName = \sopranoVoiceTitle shortInstrumentName = \sopranoVoiceShortTitle }
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