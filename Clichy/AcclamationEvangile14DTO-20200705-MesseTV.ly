\version "2.18.2"
\language "english"


\header {
  title = "Acclamation de l'Évangile"
  subtitle = "14e Dimanche du Temps Ordinaire"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - Juillet 2020"
  tagline = ##f
}
\paper {
  #(include-special-characters)
}
global = {
  \key g \major
  \time 6/8
}

sopranoMusic =   \relative c' {
  d4( g8) g4( a8) b8.( a16 g8) a4. c4( a8) b8.( a16 g8) a8( g e) d4. \break
  d4( g8) g4( a8) b8.( a16 g8) a4. c4( a8) b8.( a16 g8) g8( a fs) g4. \fermata \bar "||" \break
  \cadenzaOn
  d4 g a b\breve a4 a b \bar "|" \break
  b\breve d4 d b a g
  g a b b a g a \bar "|."
  \cadenzaOff
}
bassMusic = \relative f {
  g4( fs8) e4( d8) g,4( b8) d4.
  e4( fs8) g4( b,8) c4( a8) d4.
  g4( fs8) e4( d8) g,4( b8) d4.
  e4( fs8) g4( b,8) c8( a8 d8) g,4.

  g'4 e d g\breve e4 fs g
  g\breve fs4 fs d d e e d g g e c d
}
sopranoLyrics = \lyricmode {
  Al -- lé -- lu -- ia, Al -- lé -- lu -- ia&nbsp;!
  Al -- lé -- lu -- ia, Al -- lé -- lu -- ia&nbsp;!

  Tu es bé -- \once \override LyricText.self-alignment-X = #LEFT "ni,
  Père,
  Seigneur du ciel et&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" de la terre,
  \override LyricText.self-alignment-X = #LEFT
  "tu as révé" -- lé
  \override LyricText.self-alignment-X = #CENTER
  aux tous pe -- tits
  les mys -- tè -- res du Roy -- aume&nbsp;!
}
\score {
  \new GrandStaff <<
    \new ChoirStaff <<
      \new Staff \with { instrumentName = \markup {\right-align "Soprano"} } <<
        \global \clef treble
        \new Voice = "soprano" { \sopranoMusic }
        \new Lyrics \lyricsto "soprano" { \sopranoLyrics }
      >>
      \new Staff \with { instrumentName = \markup {\right-align "Basse"} } <<
        \global \clef bass
        \new Voice = "bass" { \bassMusic }
        \new FiguredBass{
          \figuremode {
            <5>4. <5> <5> <5> <6> <5> <6> <5>
            <5>4. <5> <5> <5> <6> <5> <6>4 <5>8 <5>4.
            <5>4 <5> <5> <5>\breve <6>4 <6 4> <5>
            <5>\breve \bassFigureExtendersOn <6>2. <6>4 <5> <5> \bassFigureExtendersOff <5>4 <5> <6> <6> \bassFigureExtendersOn <6> \bassFigureExtendersOff <5>
          }
        }
      >>
    >>
  >>
  \layout { ragged-last = ##f }
}
