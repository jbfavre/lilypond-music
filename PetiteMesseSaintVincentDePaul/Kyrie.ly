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
      \repeat volta 2 { f8 (g) aes (bes) c4 c c8 (bes16 aes) g4 aes2\fermata }
  }
kyrieSolistLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieSopranoMusic = \kyrieSolistMusic
kyrieSopranoLyrics = \kyrieSolistLyrics

kyrieAltoMusic = \relative c' {
      aes'4 g f2 f4 g8 f8 e2\fermata
      aes2 aes4. g8 f4. g8 f4 (e)\fermata
      c'8 (bes) aes8 (bes16 g16) aes8 (g) f (ees) des (ees) e (f) c2\fermata
  }
kyrieAltoLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieTenorMusic = \relative c {
      f,2 (des') bes8 (c des4) c2\fermata
      f4. f8 ees4 ees des8 des4 des8 c2\fermata
      aes4. aes8 des4. c8 bes8 (c16 des16) c4 f,2\fermata
  }
kyrieTenorLyrics = \lyricmode {
    Ky -- ri -- e
    Chri -- ste, Chris -- te, e -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

kyrieBasseMusic = \relative c {
      f,2 (des') bes8 (c des4) c2\fermata
      f4. f8 ees4 ees des8 des4 des8 c2\fermata
      aes4. aes8 des4. c8 bes8 (c16 des16) c4 f,2\fermata
  }
kyrieBasseLyrics = \lyricmode {
    Ky -- ri -- e
    Chri -- ste, Chris -- te, e -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }