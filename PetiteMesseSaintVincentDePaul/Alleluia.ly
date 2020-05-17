\version "2.18.2"
\language "english"

alleluiaGlobal = {
  \key a \major
  \time 3/4
  \tempo 2. = 50
}

alleluiaSolistMusic = \relative c'' {
    \mark \default
    a4. cs8 a4 b2. cs4. b8 a4 b2. d4 cs a gs2. \break
    \mark \default
    a4. cs8 a4 b2. cs4. b8 a4 b2 b4 a gs2 a2.\fermata \bar "|."
  }
alleluiaSolistLyrics = \lyricmode {
    Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;!
    Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;!
  }

alleluiaSopranoMusic = \alleluiaSolistMusic
alleluiaSopranoLyrics = \alleluiaSolistLyrics

alleluiaAltoMusic = \relative c' {
    e4. e8 e4 gs2. fs4. fs8 fs4 fs2. fs4 fs fs e2.
    e4. e8 e4 gs2. fs4. fs8 fs4 fs2 fs4 fs d2 e2.
  }
alleluiaAltoLyrics = \alleluiaSolistLyrics

alleluiaTenorMusic = \relative c' {
    cs4. cs8 cs4 b2. a4. a8 cs4 b2. b4 a b b2.
    cs4. cs8 cs4 b2. a4. a8 cs4 b2 b4 d b2 cs2.
  }
alleluiaTenorLyrics = \alleluiaSolistLyrics

alleluiaBasseMusic = \relative f {
    a4. a8 a4 e2. fs4. fs8 e4 d2. b4 cs d e2.
    a4. a8 a4 e2. fs4. fs8 e4 d2 d4 b e2 a,2.
  }
alleluiaBasseLyrics = \alleluiaSolistLyrics