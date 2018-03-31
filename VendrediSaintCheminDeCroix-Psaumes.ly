\version "2.18.2"
\language "english"

\header {
  title = "Chemin de croix du Vendredi Saint - Psaumes"
  composer = ""
}

intonationMusic = \relative c' {
  \key c \major
  \cadenzaOn
  e4 f a e e f a gs e a c b2 \bar "||" \break
  a\breve c1 b4 \bar "|" g\breve b1 a4 \bar "||" g4^"†"
}
intonationLyrics = \lyricmode {
  Mon Dieu, mon Dieu, pour -- quoi m'as -- tu a -- ban -- don -- né?
}

\score {
  \header {
    piece = "3ème station - Psaume 21"
  }
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "solisteUn" { \voiceOne \intonationMusic }
      \new Lyrics { \lyricsto "solisteUn" \intonationLyrics }
    >>
  >>
}


intonationMusic = \relative c' {
  \key c \minor
  \partial 4. \partial 4 g'8 c4 c8 bf4 bf8 g4. (g4) g8 e4 e4 f4 f8 g4. g4 \bar "||" \break
  \cadenzaOn
  g\breve bf1 c4 \bar "|" c\breve bf1 g4 \bar "||" f4^"†"
  \bar "|"
}
intonationLyrics = \lyricmode {
  Qu'il vien -- ne le Sei -- gneur, c'est lui le roi de gloi -- re.
}

\score {
  \header {
    piece = "4ème station - Psaume 23"
  }
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "solisteUn" { \voiceOne \intonationMusic }
      \new Lyrics { \lyricsto "solisteUn" \intonationLyrics }
    >>
  >>
}

intonationMusic = \relative c' {
  \key a \major
  \partial 4 cs4 fs8 fs gs a b4 a4 gs2 a4 fs8 e fs2 \bar "||" \break
  \cadenzaOn
  fs\breve a1 g4 \bar "|" g\breve e1 fs4 \bar "||"
}
intonationLyrics = \lyricmode {
  Voi -- ci, je viens pour faire, ô Dieu, ta vo -- lon -- té.
}

\score {
  \header {
    piece = "5ème station - Psaume 39"
  }
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "solisteUn" { \voiceOne \intonationMusic }
      \new Lyrics { \lyricsto "solisteUn" \intonationLyrics }
    >>
  >>
}
