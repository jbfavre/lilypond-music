\version "2.22.0"
\language "english"

SopranosMusic = \relative c'' {
        \voiceOne
        g4. g8 g4 a b4. b8 b4 (c)
        c4. c8 c4 bf? bf4. a8 g2
      }
AltosMusic = \relative c' {
        \voiceTwo
        d4. d8 d4 ef f4. g8 g2
        g4. g8 g4 g fs4. fs8 d2
      }
TenorsMusic = \relative c' {
        \voiceOne
        bf4. bf8 c4 c d4. d8 c2
        c4. c8 c4 d d4. c8 bf2
      }
BassesMusic = \relative c' {
        \voiceTwo
        g4. g8 fs4 fs f4. f8 e2
        ef?4. ef?8 d4 d d4. d8 d2
      }

\score {
  \new Staff
  <<
    \clef treble
    \key g \minor
    \time 2/4
    \new Voice \relative c'' {
        \voiceOne
        g4. g8 a4 a b4. b8 c2
        c4. c8 bf4 bf? a4. a8 g2
      }
  >>
  \header {
    piece = "Étape 1 - mélodie"
  }
  \layout {
      ragged-last = ##f
  }
}
\score {
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble
      \key g \minor
      \time 2/4
      \new Voice \relative c'' {
        \voiceOne
        g4. g8 a4 a b4. b8 c2
        c4. c8 bf4 bf? a4. a8 g2
      }
      \new Voice \relative c' { \voiceTwo
        d4. d8 fs4 fs g4. g8 g2
        g4. g8 g4 g fs4. fs8 d2
      }
    >>
    \new Staff
    <<
      \clef bass
      \key g \minor
      \time 2/4
      \new Voice \relative c' { \voiceOne
        bf4. bf8 d4 d d4. d8 e2
        ef4. ef8 d4 d d4. d8 bf2
      }
      \new Voice \relative f { \voiceTwo
        g4. g8 d4 d g,4. g8 c,2
        c'4. c8 g4 g d'4. d8 g2
      }
    >>
  >>
  \header {
    piece = "Étape 2 - harmonie"
  }
  \layout {
      ragged-last = ##f
  }
}
\score {
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble
      \key g \minor
      \time 2/4
      \new Voice \relative c'' {
        \voiceOne
        g4. g8 a4 a b4. b8 c2
        c4. c8 bf4 bf? a4. a8 g2
      }
      \new Voice \relative c' { \voiceTwo
        d4. d8 fs4 fs g4. g8 g2
        g4. g8 g4 g fs4. fs8 d2
      }
    >>
    \new Staff
    <<
      \clef bass
      \key g \minor
      \time 2/4
      \new Voice \relative c' { \voiceOne
        bf4. bf8 d4 d d4. d8 e2
        ef4. ef8 d4 d d4. d8 bf2
      }
      \new Voice \relative f { \voiceTwo
        g4. g8 fs4 fs g4. g8 e2
        c4. c8 g'4 g d4. d8 g2
      }
    >>
  >>
  \header {
    piece = "Étape 3 - harmonie"
  }
  \layout {
      ragged-last = ##f
  }
}
\score {
  \new ChoirStaff
  <<
    \new Staff <<
      \clef treble
      \key g \minor
      \time 2/4
      \new Voice \relative c'' {
        \voiceOne
        g4. g8 a4 a b4. b8 c2
        c4. c8 bf?4 bf? a4. a8 g2
      }
      \new Voice \relative c' {
        \voiceTwo
        d4. d8 ef4 ef f4. f8 g2
        g4. g8 g4 g fs4. fs8 d2
      }
    >>
    \new Staff <<
      \clef bass
      \key g \minor
      \time 2/4
      \new Voice \relative c' {
        \voiceOne
        bf4. bf8 c4 c d4. d8 c2
        c4. c8 d4 d c4. c8 bf2
      }
      \new Voice \relative c' {
        \voiceTwo
        g4. g8 fs4 fs f4. f8 e2
        ef?4. ef?8 d4 d d4. d8 d2
      }
    >>
  >>
  \header {
    piece = "Étape 4 - chromatismes"
  }
  \layout {
      ragged-last = ##f
  }
}
\score {
  \new ChoirStaff
  <<
    \new Staff <<
      \clef treble
      \key g \minor
      \time 2/4
      \new Voice \relative c'' {
        \voiceOne
        g4. g8 g4 a b4. b8 b4 c
        c4. c8 c4 bf? bf4. a8 g2
      }
      \new Voice \relative c' {
        \voiceTwo
        d4. d8 d4 ef f4. g8 g2
        g4. g8 g4 g fs4. fs8 d2
      }
    >>
    \new Staff <<
      \clef bass
      \key g \minor
      \time 2/4
      \new Voice \relative c' {
        \voiceOne
        bf4. bf8 c4 c d4. d8 c2
        c4. c8 c4 d d4. c8 bf2
      }
      \new Voice \relative c' {
        \voiceTwo
        g4. g8 fs4 fs f4. f8 e2
        ef?4. ef?8 d4 d d4. d8 d2
      }
    >>
  >>
  \header {
    piece = "Étape 5 - retards"
  }
  \layout {
      ragged-last = ##f
  }
}
\score {
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble
        \key g \minor
        \time 2/4
        \relative c'' {
          r8 d8 d d
          r8 d4 d8
          r8 d8 d d
          d4 (c)
          r8 ef8 ef ef
          r8 d4 d8
          r8 d8 d d
          d2
        }
    >>
    \new Staff <<
      \clef treble
      \key g \minor
      \time 2/4
      \new Voice \SopranosMusic
      \new Voice \AltosMusic
    >>
    \new Staff <<
      \clef bass
      \key g \minor
      \time 2/4
      \new Voice \TenorsMusic
      \new Voice \BassesMusic
    >>
  >>
  \header {
    piece = "Étape 6 - contrechant"
  }
  \layout {
      ragged-last = ##f
  }
}