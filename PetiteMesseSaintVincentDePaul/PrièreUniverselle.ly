\version "2.18.2"
\language "english"

puGlobal = {
  \time 2/2
  \key f \minor
  \tempo 4=80
}

puMainSopranoMusic = \relative c' {
  \mark \default
  f4 g af af g g f2
  \mark \default
  af4 bf c c bf af g2
  \mark \default
  f4 g af2 g4 g f2
}

puMainAltoMusic = \relative c' {
  c4 c f f f e c2
  f4 g af af f f e2
  df4 df f2 f4 e c2
}

puMainTenorMusic = \relative c' {
  af4 c c df df c8 (bf) af2
  c4 ef ef f bf, bf c2
  af4 bf c2 d4 c8 (bf) a2
}

puMainBasseMusic = \relative c {
  f4 (f8) e f (ef) df4 bf c f2
  f4 ef af8 (g) f (ef) d (e) f4 c2
  df8 (c) bf4 <f f'>4 f'8 ef b4 c <f f,>2
}

puMainSopranoLyrics = \lyricmode {
  Ô Sei -- gneur, é -- cou -- te nous;
  Ô Sei -- gneur, e -- xau -- ce nous;
  Ô Sei -- gneur, sau -- ve nous.
}

puMainBasseLyrics = \lyricmode {
  Ô Sei -- gneur, é -- cou -- te nous;
  Ô Sei -- gneur, e -- xau -- ce nous;
  Ô Sei -- gneur, Sei -- gneur, sau -- ve nous.
}

