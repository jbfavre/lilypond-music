\version "2.22.0"
\language "english"

\paper {
  #(set-paper-size "a4")
}
\score {
  \new Staff <<
    \new Voice = "soprane" {
      \relative c' {
      \time 6/8
        \partial 4.
        c4 d8 e4. e e d4 c8 e4. e e
        g4 c8 \break b4. a g f4 e8 d4. d d
        c4 d8 \break e4. e e d4 c8 e4. g c4. \fermata
        c4 c8 \break b4. b4. g4 b8 d4 d8 c2. \bar "||" \break
        g4 e8 c'4 e,8 g4. f4. f4 e8 d4 c8 e4. (d) \break
        g4 e8 c'4 b8 a4. d c4 b8 a b (a) g2.
      }
    }
    \new Lyrics \lyricsto "soprane" {
        É -- toi -- le des flots, à tes ma -- te -- lots,
        Qui vien -- nent vers toi, joy -- eux et dé -- vots,
        Gar -- de~une â -- me pu -- re,~un cœur de hé -- ros,
        Sois leur gui -- de, É -- toi -- le des flots

        Quand la mer l'ap -- pel -- le, le gai ma -- te -- lot,
        Part sur sa na -- cel -- le, ou son grand vais -- seau
    }
  >>
  \header {
    piece ="Étoile des flots"
  }
}

\score {
  \new Staff <<
    \new Voice = "soprane" {
      \relative c' {
      \time 4/4
      \key f \major
        \partial 4
        c4 d a' f4. g8 a2. f8 f c'4 bf8 c d4 c8 bf c2 c8 r8 c,4 d a' a4. g8 f2 r2 \break
        \cadenzaOn
        f\breve g1 a4 \bar "|"
        a\breve c4 a f g4 \bar "|"
        g\breve a4 f f g a g \bar "||"
      }
    }
    \new Lyrics \lyricsto "soprane" {
        Soy -- ez bé -- ni, Sei -- gneur, en l'hon -- neur de la Vier -- ge Ma -- ri -- e,
        Soy -- ez bé -- ni Sei -- gneur!
    }
  >>
  \header {
    piece ="Psaume"
  }
}

