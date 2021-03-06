\version "2.18.2"
\language "english"

anamneseGlobal = {
  \key e \major
  \time 2/2
  \tempo 4. = 40
}
anamneseIntonationMusic =  \relative c'' {
  gs4 gs a a8 a gs gs fs fs e2 \break
}
anamneseMainSopranoMusic = \relative c'' {
  \tuplet 3/2 { gs8 gs gs } gs8 gs a4. a8 gs4 fs4 e2
  r8 e8 e e fs4 fs8 fs e4 fs gs2
  r8 gs8 gs fs es4 fs8 gs a4 gs8 fs fs2 (es2) fs2 \fermata
}

anamneseMainAltoMusic = \relative c' {
  \tuplet 3/2 { e8 e e } e8 e e4. e8 ds4 ds cs2
  r8 cs8 cs cs e4 e8 e ds4 ds e2
  r8 es8 es es css4 cs8 es8 fs4 es8 es8 cs2 (cs) cs2
}

anamneseMainTenorMusic = \relative c' {
  \tuplet 3/2 { b8 b b } cs8 cs cs4. cs8 bs4 bs gs2
  r8 a8 gs gs a4 cs8 cs8 bs4 gs cs2
  r8 css8 css css b4 a8 cs8 cs4 css8 css8 gs2 (gs) as2
}

anamneseMainBasseMusic = \relative c {
  \tuplet 3/2 { e8 e e } e8 e cs4 cs bs gs cs4 b
  a4 gs8 gs8 fs4 a8 a8 gs4 bs cs4 ds
  es4 css b a8 es8 fs4 b8 css cs2. (b4) fs2
}

anamneseIntonationLyrics =  \lyricmode {
  Il est grand le mys -- tè -- re de la foi:
}
anamneseMainSopranoLyrics = \lyricmode {
  Nous pro -- cla -- mons ta mort, Sei -- gneur Jé -- sus,
  Nous cé -- lé -- brons ta ré -- sur -- rec -- tion,
  Nous at -- ten -- dons ta ve -- nue dans la gloi -- re
}

anamneseScore = <<
      \new ChoirStaff
      <<
        \new Staff \with {instrumentName = "Intonation" }
        <<
          \override Staff.VerticalAxisGroup.remove-empty = ##t
          \anamneseGlobal \clef treble
          \new Voice = "anamneseIntonation" {
            \anamneseIntonationMusic
          }
          \new Lyrics \lyricsto "anamneseIntonation" { \anamneseIntonationLyrics }
        >>
        \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." }
        <<
          \override Staff.VerticalAxisGroup.remove-empty = ##t
          \override Staff.VerticalAxisGroup.remove-first = ##t
          \anamneseGlobal \clef treble
          \new Voice = "anamneseSoprano" { \silence \anamneseIntonationMusic \anamneseMainSopranoMusic }
          \new Lyrics \lyricsto "anamneseSoprano" { \anamneseMainSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Alto" shortInstrumentName = "A." }
        <<
          \override Staff.VerticalAxisGroup.remove-empty = ##t
          \override Staff.VerticalAxisGroup.remove-first = ##t
          \anamneseGlobal \clef treble
          \new Voice = "anamneseAlto" { \silence \anamneseIntonationMusic \anamneseMainAltoMusic }
          \new Lyrics \lyricsto "anamneseAlto" { \anamneseMainSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Ténor" shortInstrumentName = "T." }
        <<
          \override Staff.VerticalAxisGroup.remove-empty = ##t
          \override Staff.VerticalAxisGroup.remove-first = ##t
          \anamneseGlobal \clef "treble_8"
          \new Voice = "anamneseTenor" { \silence \anamneseIntonationMusic \anamneseMainTenorMusic }
          \new Lyrics \lyricsto "anamneseTenor" { \anamneseMainSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Basse" shortInstrumentName = "B." }
        <<
          \override Staff.VerticalAxisGroup.remove-empty = ##t
          \override Staff.VerticalAxisGroup.remove-first = ##t
          \anamneseGlobal \clef bass
          \new Voice = "anamneseBasse" { \silence \anamneseIntonationMusic \anamneseMainBasseMusic }
          \new Lyrics \lyricsto "anamneseBasse" { \anamneseMainSopranoLyrics }
        >>
      >>
      %\new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
      %<<
      %  \new Staff <<
      %    \override Staff.VerticalAxisGroup.remove-empty = ##t
      %    \override Staff.VerticalAxisGroup.remove-first = ##t
      %    \anamneseGlobal \clef treble
      %    \set Staff.printPartCombineTexts = ##f
      %    \new Voice <<
      %      { \silence \anamneseIntonationMusic
      %        \partcombine
      %        <<  \anamneseMainSopranoMusic >>
      %        <<  \anamneseMainAltoMusic >>
      %      }
      %    >>
      %  >>
      %  \new Staff <<
      %    \override Staff.VerticalAxisGroup.remove-empty = ##t
      %    \override Staff.VerticalAxisGroup.remove-first = ##t
      %    \anamneseGlobal \clef bass
      %    \set Staff.printPartCombineTexts = ##f
      %    \new Voice <<
      %      { \silence \anamneseIntonationMusic
      %        \partcombine
      %        <<  \anamneseMainTenorMusic >>
      %        <<  \anamneseMainBasseMusic >>
      %      }
      %    >>
      %  >>
      %>>
    >>