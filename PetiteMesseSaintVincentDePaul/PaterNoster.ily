\version "2.18.2"

\header {
  title = "Notre Père"
}

global = {
  \time 2/2
  \key d \minor
  \tempo 4=80
}

soprano = \relative c' {
  \global
  f8 g a4 a8 g c b a2 \bar "||"
  d,8 e f g a bes a2 \breathe
  a8 g c b a4 a \breathe
  a8 bes a g f g a4 a g8 f e g c4 b4 a2 \bar "||"
  d,8 e f4 e8 f g4 a8 c c4 b8 g a4. \breathe 
  a8 bes bes a4 g8 f g4 a4. g8 a bes c b a g a4. bes8 g a c b a g a4. \breathe
  g8 a bes a4 f8 f g g b b c4 \breathe
  d (b g a8 b) a2 \bar "||"
}

alto = \relative c' {
  \global
}

tenor = \relative c' {
  \global
}

bass = \relative c {
  \global
}

verseOne = \lyricmode {
  No -- tre Pè -- re, qui êtes aux cieux,
  Que ton nom soit sanc -- ti -- fié,
  Que ton rè -- gne vien -- ne,
  Que ta vo -- lon -- té soit fai -- te, sur la ter -- re comme au ciel
  Don -- nes nous au -- jour -- d'hui no -- tre pain de ce jour,
  Par -- don -- nes nous nos of -- fen -- ses,
  Com -- me nous par -- don -- nons aus -- si à ceux qui nous ont of -- fen -- sés
  Et, ne nous lais -- se pas en -- trer en ten -- ta -- tion,
  Mais dé -- li -- vre nous du mal.
  A -- men
}

verseTwo = \lyricmode {
  \set stanza = "2."
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      %midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Staff \with {
      %midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}
