\version "2.19.82"
\include "gregorian.ly"
\include "english.ly"

tempocroche = \tempo \markup {  %% \tempo et non \mark
  \small \note #"8" #1
  \small "="
  \small \note #"8" #1
}

\header {
  title = \markup
     \center-column {
       \combine \null \vspace #1
       "L'écriture musicale"
       "Les bases fondamentales"
       " "
      }
  subtitle = "Livre 1"
  tagline = ""
}

\markup { \vspace #1 }
\score {
  \header {
    piece = "exercice 1.3"
    opus = "proposition 1"
  }
  \new StaffGroup {
    \new Staff \relative c' {
      \key c \major
      \time 2/4 e4\mf b'8\< c b d c a\! b2\f e4\f d8\> c d c b a\! b2\mf \break
      e,4\mp b'8 c b a g a f2 a4\p b8 g a g f d e2\pp \fermata \bar "||" \break
    }
  }
}
\markup { \vspace #1 }
\score {
  \header {
    piece = "exercice 1.3"
    opus = "proposition 2"
  }
  \new StaffGroup {
    \new Staff \relative c' {
      \key c \major
      \time 3/8 e4.-^\(\mp f8-.\< g-. a-.\! b4\f\> b8 b4\) \breathe b8\(\!\mp
      \time 2/4 \tempocroche e4. d8 c4. b8 c b c d b2\) \break
      c2-^\p a4-. a-. c2-^ a8\( b g e f4 g8 a b2\) \break
      \time 3/8 g4.-^\(\mp a8-.\< b-. c-.\! d4\f\> d8 d4\) \breathe d8\!\mp
      \time 2/4 \tempocroche g4. f8 e4. d8 c b c d b2 \break
      a2-^\p f4-. f4-. a2-^ f8\( g e c d4 e8 f e2\) \fermata \bar "||" \break
    }
  }
}
\markup { \vspace #1 }
\score {
  \header {
    piece = "exercice 1.4"
    opus = "mode non diatonique"
  }
  \new StaffGroup {
    \new Staff \relative c' {
      \cadenzaOn
      \once \override Staff.TimeSignature #'stencil = ##f
      \key c \major
      c4 df e f gs a bs
    }
  }
}
\markup { \vspace #1 }
\score {
  \header {
    piece = "exercice 1.4"
    opus = "mélodie"
  }
  \new StaffGroup {
    \new Staff \relative c' {
      \key c \major
      \time 2/4 c4 e f gs a gs bs2
      c4 f, a gs e f df2 \break
      e4 f a gs bs f e2
      c4 f gs a e f gs2 \break
      f4 a f gs e df c2
    }
  }
}
\markup { \vspace #1 }
\score {
  \header {
    piece = "exercice 1.7"
    opus = "mélodie"
  }
  \new StaffGroup {
    \new Staff \relative c' {
      \key d \minor
      \time 2/4 d4. e8 f4. g8 a2 r8 b cs d bf4 g e a f4. g8 a[ g f d] \bar "||" \key a \minor \break
                a'4. b8 c4. d8 e2 r8 fs gs a f4 d b e c8[ e a g] f[ e f d] \break
                e[ fs gs e] a4 f d e c a gs a d,8[ c' b a] gs[ a e fs16 gs] a8[ f c d] \bar "||" \key e \minor \break
                e4. fs8 g4. a8 b2 r8 cs ds e c4 a fs b g4. a8 g[ fs g e] ds4. fs8 b[ c a b] \break
                g4. a8 g[ fs g e] ds4. fs8 b[ a g fs] g[ e ds e] a,[ g' fs e] ds[ fs b, ds] e2
    }
  }
}
\layout {
  ragged-last = ##f
  ragged-right = ##f
  \context {
    \Staff \RemoveEmptyStaves
  }
}