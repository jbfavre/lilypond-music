\version "2.18.2"

\header {
  title = "Messe Clichoise"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - 2017"
  tagline = ##f
}

setStaffElements = {
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #5
  \override Staff.MultiMeasureRest #'font-size = #-1.5
}

\paper {
  paper-width = 8.5\in
  paper-height = 11\in
  left-margin = 0.725\in
  right-margin = 0.725\in
  top-margin = 0.625\in
  bottom-margin = 0.625\in

  max-systems-per-page = #9
}

kIglobal = {
  \key f \minor
  \time 2/4
}
kIsoloMusic = \relative c' {
    f8 g aes4 aes8 bes c4 bes8 (aes) g g f2 | \break
    c'4 c  aes aes  bes8 (aes) g  f g2 | \break
    f8 g aes4 aes8 bes c4 bes8 (aes) g g a2
  }
kIsoloLyrics = \lyricmode {
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
    Chri -- ste Chri -- ste E -- le -- i -- son
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
  }
kIwomenMusic = \relative c' {
    f'8   ees d4 des aes8 (bes) c des bes ees f2
    f8 (ees d4) des  f,8 (aes) bes (d) f (d) e2
    f8   ees d4 des8 des aes bes c (f,) bes (ees) c2
  }
kIwomenLyrics = \lyricmode {
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
  }
kImenMusic = \relative c {
    f4 f4 ees ees c c f2
    aes4 bes f (des8 ees) bes4 b4 c2
    f8 (g) f ees des (c) des ees f (des) ees c f2
  }
kImenLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
  }
kIsoloStaff = \new Staff \with {
    instrumentName = \markup \column { "Soliste" }
  } <<
    \setStaffElements
    \kIglobal \clef treble
    \new Voice = "soliste" {
      \kIsoloMusic
    }
    \new Lyrics \lyricsto "soliste" {
      \kIsoloLyrics
    }
  >>
kIchoirStaff = \new ChoirStaff \with {
      instrumentName = \markup {\right-align "Chœur"}
    } <<
    \new Staff \with {
      instrumentName = \markup {\right-align "1"}
    } {
      \setStaffElements
      \kIglobal \clef treble
      \new Voice = "femmes" {
        \kIwomenMusic
      }
    }
    \new Lyrics \lyricsto "femmes" {
      \kIwomenLyrics
    }
    \new Staff \with {
      instrumentName = \markup {\right-align "2"}
    } {
      \setStaffElements
      \kIglobal \clef bass
      \new Voice = "hommes" {
        \kImenMusic
      }
    }
    \new Lyrics \lyricsto "hommes" {
      \kImenLyrics
    }
  >>
KyrieI = \new GrandStaff <<
    \kIsoloStaff
    \kIchoirStaff
  >>





kIIglobal = {
  \key d \minor
  \time 2/4
}
kIIsoloMusic = \relative c' {
    d8 (e) f (g) a4 a a8 (g16 f) g4 a2 | \break
    a4 c4 bes4 g4 f8 e f g e2 | \break
    d8 e f g a4 a a8 g16 f e8 f d1
  }
kIIsoloLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste Chri -- ste E -- le -- i -- son
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
  }
kIIwomenMusic = \relative c' {
    r1 r
    r1 r
    r1 r
  }
kIIwomenLyrics = \lyricmode {
  }
kIImenMusic = \relative c {
    d4. d8 c4 c bes4. bes8 a2
    f' e d c
    bes f' g4 a4 d,1
  }
kIImenLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
  }
kIIsoloStaff = \new Staff \with {
    instrumentName = \markup \column { "Soliste" }
  } <<
    \setStaffElements
    \kIIglobal \clef treble
    \new Voice = "soliste" {
      \kIIsoloMusic
    }
    \new Lyrics \lyricsto "soliste" {
      \kIIsoloLyrics
    }
  >>
kIIchoirStaff = \new ChoirStaff \with {
      instrumentName = \markup {\right-align "Chœur"}
    } <<
    \new Staff \with {
      instrumentName = \markup {\right-align "1"}
    } {
      \setStaffElements
      \kIIglobal \clef treble
      \new Voice = "femmesII" {
        \kIIwomenMusic
      }
    }
    \new Lyrics \lyricsto "femmesII" {
      \kIIwomenLyrics
    }
    \new Staff \with {
      instrumentName = \markup {\right-align "2"}
    } {
      \setStaffElements
      \kIIglobal \clef bass
      \new Voice = "hommesII" {
        \kIImenMusic
      }
    }
    \new Lyrics \lyricsto "hommesII" {
      \kIImenLyrics
    }
  >>
KyrieII = \new GrandStaff <<
    \kIIsoloStaff
    \kIIchoirStaff
  >>

\markup { \vspace #1 }
\book {
\score {
  \header {
    piece = "Kyrie I (pour soliste et chœur à 2 voix, ou chœur à 3 voix)"
  }
  \KyrieI
}
\pageBreak
\score{
  \header {
    piece = "Kyrie II (pour soliste et chœur à 2 voix, ou chœur à 3 voix)"
  }
  \KyrieII
}
  \layout { }
  \midi { \tempo 4 = 90 }
}
