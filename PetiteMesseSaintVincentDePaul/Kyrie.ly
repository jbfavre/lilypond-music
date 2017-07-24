\version "2.18.2"
\language "english"

kyrieGlobal = {
  \key f \minor
  \time 2/4
  \tempo 4 = 75
}

kyrieSolistMusic = \relative c' {
      \mark \default
      \repeat volta 2 { f8 (g) af (bf) c4 c c8 (bf16 af) bf4 c2\fermata } \break
      \mark \default
      \repeat volta 2 { c4 (df) c4. bf8 af (g) af (bf) g2\fermata } \break
      \mark \default
      \repeat volta 2 { f8 (g) af (bf) c4 c c8 (bf16 af) g8 (af) f2\fermata }
  }
kyrieSolistLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieSopranoMusic = \kyrieSolistMusic
kyrieSopranoLyrics = \kyrieSolistLyrics

kyrieAltoMusic = \relative c' {
      af'8 (bf) c (bf) af4 af f8 (af) bf (af) g2\fermata
      af4 f af2 af4 f f (e)\fermata
      f8 (g f) df ef (df) c (ef) f4 g4 af2\fermata
  }
kyrieAltoLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieTenorMusic = \relative c {
      c'4 ef4 f ef df8 (f) g (f) e2\fermata
      c4. (df8) ef2 c8 df4 bf8 g2\fermata
      af4 df c af df ef c2\fermata
  }
kyrieTenorLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chris -- te E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieBasseMusic = \relative c {
      f4 ef df c bf4 df8 (bf) c2\fermata
      f8 (ef df f) af4 g f8 (ef) df (bf) c2\fermata
      df4 bf af f'8 ef8 bf4 c f,2\fermata
  }
kyrieBasseLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chris -- te E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }