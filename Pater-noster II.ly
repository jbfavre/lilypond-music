\version "2.18.2"

\header {
  title = "Pater noster"
}

global = {
  \time 2/4
  \key d \minor
  \tempo 4=150
}

soprano = \relative c'' {
  \global
  f, g a2 a r \fermata \break
  f4 g a2 a4 a4 \break
  bes a bes4 (cis d bes) a2~ a \break
  a4 a g f e2 f4 g a2 a2~ a \break
  % mesure 20: 0'15
  a2 f4 (g) a a f'2 e4 (d) cis2 bes2 \break
  a2 f4 g a2~ a4 bes a2 g \break
  g4 (e) f g a2~ a4 (bes cis bes) a2 \break
  % mesure 39: 0'30
  g4 f e2 (f2) e2~ e \break
  % mesure 44: 0' 34
  a2 f4 g a2 a4 a bes2 (bes4 cis d e) d bes \break
  % mesure 52: 0'40
  a2 g4 f e2 f e2~ e \break
  % mesure 58: 0'45
  f'2 e4 d cis2 d4 e f2 d f4 (e) d (cis) d2\break
  % mesure 67: 0'52
  f,4 g a2 bes4 cis d bes a2 a4 g a2~ a4 bes4 g cis d2 \break
  % mesure 78: 
  f4 g a2~ a4 a bes4 (g) a2 g4 a bes cis d2 cis\break
  % mesure 87: 
  a2 a4 a f'2~ f4 e d2 cis d2~ d \break
  % mesure 95: 
  f2~ f4 e d2 (cis4) d e2 (f4 cis) d2~ d

}

alto = \relative c' {
  \global
  a4 bes d2 d r2 \fermata 
  a4 bes d2 d4 d
  d d d e f d d2~ d
  d4 d bes a g2 a4 bes d2 d~ d
  d2 a4 bes d d a'2 g4 f e2 d
  d2 a4 bes d2~ d4 d d2 bes
  bes4 g a bes d2 (d4) d e d d2
  bes4 a g2 (a) g~ g
  d'2 a4 bes d2 d4 d d2 (d4 e f g) f d
  d2 bes4 a g2 a g~ g
  a'2 g4 f e2 f4 g a2 f a4 g f e f2
  a,4 bes d2 d4 e f d d2 bes4 a bes d d2~ d4 bes g2~ g
  a4 bes d2~ d4 d d bes d2 bes4 d d e f2 e
  d2 d4 d a'2~ a4 g f2 e d~ d
  a'2~ a4 g f2 (e4) f g2 (a4 e) f2~ f
}
tenor = \relative c' {
  \global
  f4 e f2 f r \fermata 
  f4 e f2 f4 f
  g f e2 d4 e f2~ f
  f4 f e d cis2 d4 e f2 f~ f
  f2 d4 e f f d2 e4 f cis2 d2
  d2 d4 e d2 (bes4) bes a2 d2
  d4 bes d e f2~ f4 g g g f2
  e4 d e2 (d) d2 (cis2)
}

bass = \relative c {
  \global
  d2 d2 d2~ d \fermata 
  d4 d d2 d4 d d d g2~ g d~ d
  d4 d d d a2 a4 a d2 d~ d
  % mesure 20: 0'15
  d2 d2 d4 d d2 cis4 d g,2 g
  d'2 d4 d d2~ d4 d d2 g,
  g2 g4 g4 d'2~ d~ d d
  bes4 a g2 (d') a2~ a
  d2 d4 d f e d2~ d
}

PaterNosterLyrics = \lyricmode {
  Pa -- ter nos -- ter,
  Pa -- ter nos -- ter,
  Qui es in cae -- lis,
  Sanc -- ti -- fi -- ce -- tur no -- men tu -- um,
  ad -- ve -- ni -- at re -- gnum tu -- um,
  fi -- at vo -- lun -- tas tu -- a,
  si -- cut in cæ -- lo et in ter -- ra.

  Pa -- nem nos -- trum quo -- ti -- di -- a -- num
  da no -- bis ho -- di -- e;
  et di -- mit -- te no -- bis de -- bi -- ta nos -- tra,
  si -- cut et nos di -- mit -- ti -- mus
  de -- bi -- to -- ri -- bus nos -- tris;
  et ne nos in -- du -- cas in ten -- ta -- ti -- o -- nem;
  sed li -- be -- ra nos a Ma -- lo.
  A -- men, A -- men, A -- men
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      %midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { S }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Lyrics { \lyricsto "soprano" \PaterNosterLyrics }
    >>
    \new Staff \with {
      %midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { A }
    } <<
      \new Voice = "alto" { \voiceTwo \alto }
      \new Lyrics { \lyricsto "soprano" \PaterNosterLyrics }
    >>
    \new Staff \with {
      %midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T }
    } <<
      \clef "treble_8"
      \new Voice = "tenor" { \voiceTwo \tenor }
      \new Lyrics { \lyricsto "soprano" \PaterNosterLyrics }
    >>
    \new Staff \with {
      %midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { B }
    } <<
      \clef bass
      \new Voice = "bass" { \voiceTwo \bass }
      \new Lyrics { \lyricsto "soprano" \PaterNosterLyrics }
    >>
  >>
  \layout { }
  \midi { }
}
