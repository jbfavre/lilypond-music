\version "2.18.2"
\language "english"

\header {
  title = \markup
     \center-column {
       \combine \null \vspace #1
       "L'écriture musicale"
       "Les bases fondamentales"
       " "
      }
  subtitle = "Livre 1, Révisions"
  tagline = ""
}
\paper {
  #(include-special-characters)
  ragged-last-bottom = ##t
  ragged-last = ##f
  print-all-headers = ##t
  %max-systems-per-page = 10
  %min-systems-per-page = 4
  %systems-per-page=6
}
global = { \time 3/8 \key f \major }
\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" {  \voiceOne
        \relative c'' {
          s4.*9
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c'' {
          s4.*9
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative f {
          s4.*9
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative f, {
          f8 g a bf4 g8 c d e f4. c a8 d g, c4 f8 bf,8 c4 f4.
        }
      }
      \new FiguredBass{
        \figuremode {
          <5>8 <6 4> <6> <5>4 <5>8 <5> <6> <6> <5>4. <5>8 <6 4> <5> <5> <5> <5> <5>4 <5>8 <6> <6 4> <5> <5>4.
        }
      }
      \new FiguredBass{
        \figuremode {
          <I>8 <IV> <I> <IV>4 <II>8 <V> <IV> <V> <I>4. <V>8 <I> <V> <III> <VI> <II> <V>4 <I>8 <II> <I> <V> <I>4.
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice R.3"
  }
  \layout {}
  \midi {}
}
global = { \time 4/4 \key a \minor }
\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" {  \voiceOne
        \relative c'' {
          a4( e' c d e2) r4 e4 f( d c b a) f'( e d e c b gs a1)
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c'' {
          s4.*9
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative f {
          s4.*9
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative f, {
          s1*6
        }
      }
      \new FiguredBass{
        \figuremode {}
      }
      \new FiguredBass{
        \figuremode {}
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice R.4"
  }
  \layout {}
  \midi {}
}
global = { \time 2/4 \key a \minor }
\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" {  \voiceOne
        \relative c'' {
          s2*9
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c'' {
          s2*9
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative f {
          s2*9
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative f {
          e16 fs gs e a b a g f! e d c b a b d e2( e4) f \break
          d8 b gs e' c b a d e16 fs gs e a b a g f! e d c d8 e a,4 r4
        }
      }
      \new FiguredBass{
        \figuremode {
          <_+>4 <5> <5> <5/> <_+> <6 4> <_+> <5>
          \bassFigureExtendersOn
          <6>8 <6> <6\!> <6> <6\!> <6+ 4> <5> <6> <_+>4 <5> <5\!> <6>8 <_+> <5>4
        }
      }
      \new FiguredBass{
        \figuremode {}
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice R.5"
  }
  \layout {}
  \midi {}
}