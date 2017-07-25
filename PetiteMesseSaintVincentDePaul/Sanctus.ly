\version "2.18.2"
\language "english"

sanctusGlobal = {
  \key e \major
  \time 3/8
  \tempo 4. = 50
}

sanctusSolistMusic = \relative c' {
    b'4 b8 cs4 b8 b (a gs) fs4.
    e8 fs gs a (gs) e e4 fs8 gs4.
  }
sanctusSolistLyrics = \lyricmode {
    San -- ctus, San -- ctus, San -- ctus,
    Do -- mi -- nus De -- us Sab -- ba -- oth
  }

sanctusSopranoMusic = \sanctusSolistMusic
sanctusSopranoLyrics = \sanctusSolistLyrics

sanctusAltoMusic = \relative c' {
    gs'8 (fs) gs e4 e8 ds8 (cs4) ds4.
    a8 
    %b'8 a b cs a cs b (a16 gs16) a8 b4.
  }
sanctusAltoLyrics = \lyricmode {
  }

sanctusTenorMusic = \relative c {
  }
sanctusTenorLyrics = \lyricmode {
  }

sanctusBasseMusic = \relative c {
    e4 e8 a4 gs8 fs (e as) b4.
    cs,8 b8 a gs ds' e a, b4 <e \parenthesize e,>4.
  }
sanctusBasseLyrics = \lyricmode {
    San -- ctus, San -- ctus, San -- ctus,
    Do -- mi -- nus De -- us Sab -- ba -- oth
  }
