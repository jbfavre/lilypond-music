\version "2.18.2"
\language "english"

\header {
  title = "Prière universelle"
}

puGlobal = {
  \time 2/2
  \key f \minor
  \tempo 4=80
}

puMainSopranoMusic = \relative c' {
  f4 g af af g g f2
  af4 bf c c bf af g2
  f4 g af2 g2 f2 f2
}

puMainAltoMusic = \relative c' {
  c4 e f f df c c2
  f4 g af af f f e2
  df4 df f f df2 c c
}

puMainTenorMusic = \relative c' {
  af4 c c df bf g af2
  c4 ef ef f df d c2
  af4 bf c df bf2 g af
}

puMainBasseMusic = \relative c {
  f4 e f8 (ef) df4 bf c f2
  f4 ef af8 g f ef df4 d e2
  df8 c bf4 af4 f'8 ef bf4 b c2 f2
}

puMainSopranoLyrics = \lyricmode {
  Ô Sei -- gneur, é -- cou -- te nous;
  Ô Sei -- gneur, e -- xau -- ce nous;
  Ô Sei -- gneur, sau -- ve nous.
}

