\version "2.18.2"
\language "english"

%\include "../libs/commonFunctions.ily"
%\include "../libs/settings.ily"
%\include "../libs/translations/fr.ily"
%\include "../libs/layouts/book-titling.ily"
%\include "../PetiteMesseSaintVincentDePaul/pianoSettings.ily"

kyrieGlobal = {
  \key f \minor
  \time 2/4
  \tempo 4 = 75
}

kyrieSolistMusic = \relative c' {
      \mark \default
      \repeat volta 2 { f8 (g) af (bf) c4 c c8 (bf16 af) bf4 c2\fermata } \break
      \mark \default
      \repeat volta 2 { c4 (df) c4. bf8 af (g) af (bf) g2\fermata } \break
      \mark \default
      \repeat volta 2 { f8 (g) af (bf) c4 c c8 (bf16 af) g8 (af) f2\fermata }
  }
kyrieSolistLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieSopranoMusic = \kyrieSolistMusic
kyrieSopranoLyrics = \kyrieSolistLyrics

kyrieAltoMusic = \relative c {
      c'4 ef4 f ef df8 (f) g (f) e2\fermata
      c4. (df8) ef2 c8 df4 bf8 g2\fermata
      af4 df c af df ef c2\fermata
  }
kyrieAltoLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieTenorMusic = \relative c {
      af'8 (bf) c (bf) af4 af f8 (af) bf (af) g2\fermata
      af4 f af2 af4 f f (e)\fermata
      f8 (g f) df ef (df) c (ef) f4 g4 af2\fermata
  }
kyrieTenorLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chris -- te E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieBasseMusic = \relative c {
      f4 ef df c bf4 df8 (bf) c2\fermata
      f8 (ef df f) af4 g f8 (ef) df (bf) c2\fermata
      df4 bf af f'8 (ef8) bf4 c f,2\fermata
  }
kyrieBasseLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chris -- te E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }
kyrieScore = \score {
    <<
      \new ChoirStaff
      <<
        \new Staff \with { instrumentName = \sopranoVoiceTitle shortInstrumentName = \sopranoVoiceShortTitle }
        <<
          \kyrieGlobal \clef treble
          \new Voice = "kyrieSoprano" { \kyrieSopranoMusic }
          \new Lyrics \lyricsto "kyrieSoprano" { \kyrieSopranoLyrics }
        >>
        \new Staff \with { instrumentName = \altoVoiceTitle shortInstrumentName = \altoVoiceShortTitle }
        <<
          \kyrieGlobal \clef treble
          \new Voice = "kyrieAlto" { \kyrieAltoMusic }
          \new Lyrics \lyricsto "kyrieAlto" { \kyrieAltoLyrics }
        >>
        \new Staff \with { instrumentName = \tenorVoiceTitle shortInstrumentName = \tenorVoiceShortTitle }
        <<
          \kyrieGlobal \clef "treble_8"
          \new Voice = "kyrieTenor" { \kyrieTenorMusic }
          \new Lyrics \lyricsto "kyrieTenor" { \kyrieTenorLyrics }
        >>
        \new Staff \with { instrumentName = \bassVoiceTitle shortInstrumentName = \bassVoiceShortTitle }
        <<
          \kyrieGlobal \clef bass
          \new Voice = "kyrieBasse" { \kyrieBasseMusic }
          \new Lyrics \lyricsto "kyrieBasse" { \kyrieBasseLyrics }
        >>
      >>
      %\new PianoStaff \with { \pianoProperties instrumentName = \organVoiceTitle shortInstrumentName = \organVoiceShortTitle }
      %<<
      %  \new Staff <<
      %    \kyrieGlobal \clef treble
      %    \set Staff.printPartCombineTexts = ##f
      %    \partcombine
      %    << \kyrieSopranoMusic >>
      %    << \kyrieAltoMusic >>
      %  >>
      %  \new Staff <<
      %    \kyrieGlobal \clef bass
      %    \set Staff.printPartCombineTexts = ##f
      %    \partcombine
      %    << \kyrieTenorMusic >>
      %    << \kyrieBasseMusic >>
      %  >>
      %>>
    >>
    \layout {
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