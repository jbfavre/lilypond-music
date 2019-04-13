\version "2.18.2"
\language "english"

#(set-global-staff-size 14)
\header {
  title = "Acclamation de l'Évangile de la Passion"
  subtitle = "Dimanche des Rameaux"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - Avril 2019"
  tagline = ##f
}
\paper {
  #(include-special-characters)
}
global = {
  \key g \major
  \time 2/4
}

sopranoMusic =   \relative c'' {
  b4 g8 g a4 a4 b4 \fermata e,4 a a g2 \fermata \break
  r4 b,4 d4. d8 e e d e g g e g a b b a b4 a8 b c4 b8 g a2 \fermata \break
  fs8 g a4 a8 a b b g4. g8 g g a b c4 b8 a g e \tuplet 3/2 { g e g } a2.
}
sopranoLyrics = \lyricmode {
  Gloire et lou -- ange à toi, Sei -- gneur Jé -- sus&nbsp;!
  Pour nous, le Christ est dev -- ve -- nu o -- bé -- is -- sant jus -- qu'à la mort,
  et la mort de la croix.
  C'est pour -- quoi Dieu l'a e -- xal -- té&nbsp;: il l'a do -- té du nom qui est au des -- sus de tout nom.
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
