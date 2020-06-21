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
%%{
global = { \time 3/8 \key f \major }
\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" {  \voiceOne
        \relative c'' {
          a8 g f d4 d'8 e d c a4. \break e'8 f e c d bf g4 a8 g f e f4.
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c' {
          c4. bf4 bf8
          c bf c c4.
          g'8 a g
          a4 g8 e4 f8 d8 c4 c4.
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative f {
          f8 e f f4 g8 g8 f g f4. c'4. e8 f d c4 c8 bf8 a g a4.
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
          <I>8 <V> <I> <IV>4 <II>8 <V> <IV> <V> <I>4. <V>8 <I> <V> <III> <VI> <II> <V>4 <I>8 <II> <I> <V> <I>4.
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice R.3 (à 4 voix)"
  }
  \layout {}
  \midi {}
}
%%}
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
        \relative c' {
          e2 a2 gs2
          r4 gs4 a4 b a gs a a2. a2 f4 e e1
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative c' {
          c4 b e d b2
          r4 b4 d4 f e2 e4 d c d c2 b4 b cs1
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative f {
          a4 gs a f e2 r4 e4 d2 a4 b c4 d4 e f a, c d4 e a,1
        }
      }
      \new FiguredBass{
        \figuremode {
          <5>4 <6> <5> <6> <5>2 <_>4 <5>4 <5> <6> <5> <6 4> <6> <5> <6 4> <6> <5> \bassFigureExtendersOn <5>\bassFigureExtendersOff <6> <5> <_+>1
        }
      }
      \new FiguredBass{
        \figuremode {
          <I>4 <V> <I> <IV> <V>2 <_>4 <V>4 <IV> <II> <I>4 <V> <I> <IV> <I> <IV> <I>2 <VI>4 <V> <I>
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice R.4 (à 4 voix)"
  }
  \layout {}
  \midi {}
}
%{
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
        \figuremode {
          <V> <I> <VI> <II> <V> <I> <V> <VI> <II> <V> <I>8 <V> <I> <II> <V>4 <I> <VI> <II>8 <V> <I>4
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice R.5 (à 3 voix)"
  }
  \layout {}
  \midi {}
}
%}