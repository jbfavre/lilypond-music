\version "2.18.2"
\language "english"

#(set-global-staff-size 14)
\header {
  title = "Acclamation de l'Évangile (Alléluia de Shütz)"
  subtitle = "31e dimanche du Temps Ordinaire"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - octobre 2019"
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
  e4 b' b b2 g4 a2 c4 b2. b4 b d c2 b4 a2 a4 g2. \bar "|" \break
  b4 a g a2 fs4 g2 g4 fs2. fs4 g a b2 g4 a fs2 e2. \fermata \bar "||" \break
  \time 2/4
  e8 fs g a b b a c b4 b r8 b8 g b d c b a b4 b8 b \bar "|" \break
  d d b a g fs g4 e8 fs \tuplet 3/2 { g e g } b2 b2 \fermata
}
sopranoLyrics = \lyricmode {
  Al -- le -- lu -- ia, Al -- le -- lu -- ia, Al -- le -- lu -- ia, Al -- le -- lu -- ia, 
  Al -- le -- lu -- ia, Al -- le -- lu -- ia, Al -- le -- lu -- ia, Al -- le -- lu -- ia&nbsp;!
  Dieu a tel -- le -- ment ai -- mé le mon -- de qu'il a don -- né son Fils u -- ni -- que,
  a -- fin que ceux qui croient en lui aient la vie é -- ter -- nel -- le
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
