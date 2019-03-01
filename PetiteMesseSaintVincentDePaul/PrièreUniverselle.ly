\version "2.18.2"
\language "english"

puGlobal = {
  \time 2/2
  \key f \minor
  \tempo 4=80
}

puMainSopranoMusic = \relative c' {
  \mark \default
  f4 g af af g g f2 \break
  \mark \default
  af4 bf c c bf af g2 \break
  \mark \default
  f4 g af2 g4 f f2 \break
}

puMainAltoMusic = \relative c' {
  c4 e f f df e c2
  f4 g af af f f g2
  df4 df f2 df4 f8 (ef) c2
}

puMainTenorMusic = \relative c' {
  af4 c c df df c8 (bf) af2
  c4 ef ef f bf, bf c2
  af4 bf c (df) bf g af2
}

puMainBasseMusic = \relative c {
  f4 e f8 (ef) df4 bf c f2
  f4 ef af8 (g) f (ef) df4 d e2
  df8 c bf4 af4 f'8 (ef) bf8 b c4 f2
}

puMainSopranoLyrics = \lyricmode {
  Ô Sei -- gneur, é -- cou -- te nous;
  Ô Sei -- gneur, e -- xau -- ce nous;
  Ô Sei -- gneur, sau -- ve nous.
}

puMainBasseLyrics = \lyricmode {
  Ô Sei -- gneur, é -- cou -- te nous;
  Ô Sei -- gneur, e -- xau -- ce nous;
  Ô Sei -- gneur, Ô Sei -- gneur, sau -- ve nous.
}

