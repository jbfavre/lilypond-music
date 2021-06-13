\version "2.18.2"
\language "english"

%\include "../libs/commonFunctions.ily"
%\include "../libs/settings.ily"
%\include "../libs/translations/fr.ily"
%\include "../libs/layouts/book-titling.ily"
%\include "../PetiteMesseSaintVincentDePaul/pianoSettings.ily"

puGlobal = {
  \time 2/2
  \key f \minor
  \tempo 4=80
}

puMainSopranoMusic = \relative c' {
  \mark \default
  f4 g af af g g f2 \break
  \mark \default
  af4 bf c c bf af g2 \break
  \mark \default
  f4 g af2 g4 g f2
}

puMainAltoMusic = \relative c' {
  c4 c f f f e c2
  f4 g af af af8 (g) f4 e2
  f4 f8 (e) f2 f4 e c2
}

puMainTenorMusic = \relative c' {
  af4 c c df df c8 (bf) af2
  c4 ef ef f f8 (c) c4 c2
  af4 df8 (c) c2 d4 c8 (bf) a2
}

puMainBasseMusic = \relative c {
  f4 (f8) e f (ef) df (c) bf4 c f2
  f4 ef af8 (g) f (ef) d (e) f4 c2
  df8 (c) bf (c) <f f,>4 f8 d b4 c <f f,>2
}

puMainSopranoLyrics = \lyricmode {
  Ô Sei -- gneur, é -- cou -- te nous;
  Ô Sei -- gneur, e -- xau -- ce nous;
  Ô Sei -- gneur, sau -- ve nous.
}

puMainBasseLyrics = \lyricmode {
  Ô Sei -- gneur, é -- cou -- te nous;
  Ô Sei -- gneur, e -- xau -- ce nous;
  Ô Sei -- gneur, Sei -- gneur, sau -- ve nous.
}

puScore = \score {
    <<
      \new ChoirStaff
      <<
        \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." }
        <<
          \puGlobal \clef treble
          \new Voice = "puSoprano" { \puMainSopranoMusic }
          \new Lyrics \lyricsto "puSoprano" { \puMainSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Alto" shortInstrumentName = "A." }
        <<
          \puGlobal \clef treble
          \new Voice = "puAlto" { \puMainAltoMusic }
          \new Lyrics \lyricsto "puAlto" { \puMainSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Ténor" shortInstrumentName = "T." }
        <<
          \puGlobal \clef "treble_8"
          \new Voice = "puTenor" { \puMainTenorMusic }
          \new Lyrics \lyricsto "puTenor" { \puMainSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Basse" shortInstrumentName = "B." }
        <<
          \puGlobal \clef bass
          \new Voice = "puBasse" { \puMainBasseMusic }
          \new Lyrics \lyricsto "puBasse" { \puMainBasseLyrics }
        >>
      >>
      %\new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
      %<<
      %  \new Staff
      %  <<
      %    \puGlobal \clef treble
      %    \set Staff.printPartCombineTexts = ##f
      %    \partcombine
      %    << \puMainSopranoMusic >>
      %    << \puMainAltoMusic >>
      %  >>
      %  \new Staff
      %  <<
      %    \puGlobal \clef bass
      %    \set Staff.printPartCombineTexts = ##f
      %    \partcombine
      %    << \puMainTenorMusic >>
      %    << \puMainBasseMusic >>
      %  >>
      %>>
    >>
    \layout {
      ragged-last = ##f
      short-indent = 0.8\cm
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \Score
          \omit BarNumber
      }
      \context {
          \Voice
          \consists "Horizontal_bracket_engraver"
      }
      \override LyricText #'font-family = #'sans
      \override Score.RehearsalMark.font-family = #'typewriter
    }
  }
