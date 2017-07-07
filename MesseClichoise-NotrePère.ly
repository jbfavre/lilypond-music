\version "2.18.2"

\header {
  title = "Notre Père"
}

global = {
  \time 2/4
  \key g \minor
  \tempo 4=150
}

soprano = \relative c'' {
  \global
  g4 a bes2 bes4 g a bes c2~ c \break
  c4 d ees ees d c d2~ d \break
  d4 d c bes c2 c  \break
  c4 d ees ees d c d d  \break
  c4 bes a a g f g2~ g \break
  bes4 bes ees2 ees4 ees d2 d4 d d2 c4 bes c2~ c  \break
  c2 bes4 c d2 ees4 d c2 bes2 \break
  bes2 a4 g f g a c bes2~ \break 
  bes4 a bes c d ees c ees d2 \break
  d2 c4 bes a g f2 g4 a bes2 a bes \break
  %g4 a bes c d ees d2~ d \break
  bes4 bes c bes a g f2~ f \break
  g (a bes c) d2 \break
  c4 (d ees2 d4 c) d2~ d \break
  c2~ c4 (bes a2 c2) d
}

alto = \relative c' {
  \global
  
}

tenor = \relative c' {
  \global
  
}

bass = \relative c {
  \global
  g'4 d g2 (g4) g f d c2~ c
}

verseOne = \lyricmode {
  \set stanza = "1."
  No -- tre Pè -- re, qui êtes aux cieux,
  Que ton nom soit sanc -- ti -- fié,
  Que ton rè -- gne vien -- ne,
  Que ta vo -- lon -- té soit fai -- te, sur la ter -- re comme au ciel
  Don -- nes nous au -- jour -- d'hui no -- tre pain de ce jour,
  Par -- don -- nes nous nos of -- fen -- ses,
  Com -- me nous par -- don -- nons aus -- si à ceux qui nous ont of -- fen -- sés
  Et, ne nous sou -- met pas à la ten -- ta -- tion,
  Mais dé -- li -- vre nous du mal.
  A -- men, A -- men, A -- men, A -- men
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
