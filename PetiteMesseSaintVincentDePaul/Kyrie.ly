\version "2.18.2"

kyrieGlobal = {
  \key f \minor
  \time 2/4
}

kyrieSolistMusic = \relative c' {
      \tempo 4 = 75
      \mark \default
      \repeat volta 2 { f8 (g) aes (bes) c4 c c8 (bes16 aes) bes4 c2\fermata } | \break
      \mark \default
      \repeat volta 2 { c4 (des) c4. bes8 aes (g) aes (bes) g2\fermata } | \break
      \mark \default
      \repeat volta 2 { f8 (g) aes (bes) c4 c c8 (bes16 aes) g8 (aes) f2\fermata }
  }
kyrieSolistLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieSopranoMusic = \kyrieSolistMusic
kyrieSopranoLyrics = \kyrieSolistLyrics

kyrieAltoMusic = \relative c' {
      c4 ees f ees des des g2\fermata
      aes4 (f) aes2 aes4 f f (e)\fermata
      des4 f ees c f g aes2\fermata
  }
kyrieAltoLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieTenorMusic = \relative c {
      aes'4 c aes aes f' g8 (f) e2\fermata
      c8 ( bes aes c) ees4 des c8 des4 bes8 c2\fermata
      aes4 des c aes des ees c2\fermata
  }
kyrieTenorLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chris -- te E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieBasseMusic = \relative c {
      f4 ees des f bes,4 des c2\fermata
      f8 (ees des f) aes4 g f8 (ees) des (bes) c2\fermata
      des4 bes aes f'8 ees8 bes4 c f,2\fermata
  }
kyrieBasseLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chris -- te E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }