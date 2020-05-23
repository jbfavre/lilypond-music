\version "2.18.2"
\language "english"

#(set-global-staff-size 14)
\header {
  title = "Acclamation de l'Évangile"
  subtitle = "Pentecôte"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - Mai 2020"
  tagline = ##f
}
\paper {
  #(include-special-characters)
}
global = {
  \key g \major
  \time 3/4
}

sopranoMusic =   \relative c' {
  e4 b' b b2 g4 a2 c4 b2. \break
  b4 b d c2 b4 a2 a4 g2. \break
  b4 a g a2 fs4 g2 g4 fs2. \break
  fs4 g a b2 g4 a fs2 e2. \break
  \time 4/4
  b'2 g4 a b1 r4 b4 g a b a d cs b2 b2 \break
  g4 c c b a g2. e4 g2. a
}
sopranoLyrics = \lyricmode {
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia&nbsp;!
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia&nbsp;!
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia&nbsp;!
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia&nbsp;!
  Viens, Es -- prit Saint&nbsp;!
  Em -- plis le cœur de tes fi -- dè les&nbsp;!
}
\score {
  \new GrandStaff <<
    \new ChoirStaff <<
      \new Staff \with { instrumentName = \markup {\right-align "Soprano"} } <<
        \global \clef treble
        \new Voice = "soprano" { \sopranoMusic }
        \new Lyrics \lyricsto "soprano" { \sopranoLyrics }
      >>
    >>
  >>
  \layout { ragged-last = ##f }
}
