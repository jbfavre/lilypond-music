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
  subtitle = "Livre 1, chapitre 8"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 10
}
%#(set-global-staff-size 18)
%#(set-default-paper-size "a4landscape")

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.1"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 4/4 \key ef \major
      \new Voice = "melody" {
        \relative c'' {
          c2 g4 ef f2 c'4 d b2 g2 \breathe f'2 ef4 d c2 af g f g1 \breathe f'2 ef4 d c2 b c1 \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble \time 4/4 \key ef \major
      \new Voice = "melody" {
        \relative c'' {
          c4 b8 c g8 f16 g ef8 f16 ef f4 g8 f c'8 b16 c d8 ef16 d b4 a8 b g2 \breathe f'4 g8 f ef4 d c4 b8 c af4 bf8 af g4 f8 g f4 g8 f  g1 \breathe f'4 g8 f ef8 d16 ef d8 c16 d c4 b8 c b4 c8 b c1 \bar "|."
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.2 (Sol mineur)"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 3/4 \key bf \major
      \new Voice = "melody" {
        \relative c'' {
          d4 g8 fs16^"B" g d4 ef4. ef8 d4 d8 cs16^"B" d bf'8 a16^"B" bf g8 fs16^"B" g ef16 c d^"B" c bf8 c16^"B" bf a8 g16^"B" a g4 \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble \time 3/4 \key bf \major
      \new Voice = "alto" {
        \relative c'' {
          bf4 bf8 a^"B" bf4 c4 d8^"B" c bf4 a g2~ g2 fs8 e16^"B" fs g4
        }
      }
    >>
    \new Staff <<
      \clef bass \time 3/4 \key bf \major
      \new Voice = "bass" {
        \relative f {
          g2.~ g2. fs4 g bf,8 a16^"B" bf c4 d d, g
        }
      }
      \new FiguredBass{
        \figuremode {
          <5>2. <6 4>2 <5>4 <6>4 <5>4 <6>4 <5> <6 4> <_+> <5>
        }
      }
      \new FiguredBass{
        \figuremode {
          <I>2. <IV>2 <I>4 <V>4 <I>2 <IV>4 <I> <V> <I>
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.3"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 4/4 \key g \major
      \new Voice = "melody" {
        \relative c'' {
          g8 fs^"B" g a^"P" b a^"B" b c^"P" d4 e8^"P" fs^"P" g2 fs r2 g8 fs^"P" e^"P" d^"P" c4 d8^"P" e^"B" d8 c^"B" d e^"P" fs^"P" g^"P" a4 fs4 g8^"B" fs g2 e8 d^"P" c^"P" b^"P" a8 g16^"B" a fs4 g2 r2  \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef bass \time 4/4 \key g \major
      \new Voice = "bass" {
        \relative f {
          g4 fs^"P" e4 d8^"B" e fs4 e8^"P" d^"P" c2 d r2 r2 e4 fs^"P" g2 fs a,4 b^"P" c8 d^"P" e8 d^"P" c b^"P" a8 b16^"P" c^"P" d4 d, g2 r2
        }
      }
    >>
  >>
}
%{
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.4"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 3/4 \key g \major
      \new Voice = "melody" {\voiceOne
        \relative c'' {
          d4 g,8 a b c d4 g, g e' c8 d e fs g4 g, g c d8 c b \break
          a b4 c8 b a g a4 b8 c d b a2. d4 g,8 a b c d4 g, g \break
          e' c8 d e fs g4 g, g c d8 c b a b4 c8 b a g a4 b8 a g fs <b, d g>2.\bar "|."
        }
      }
      \new Voice = "melody2" { \voiceTwo
        \relative c' {
          s2. s2. s2. s2. s4 e4 fs g s2 s4 g2 fs2. s2. s2. s2. s2. s2. s2. s2. s2.
        }
      }
    >>
    \new Staff <<
      \clef bass \time 3/4 \key g \major
      \new Voice = "bass" {
        \relative f {
          <g b d>2 a4 b2. c b a g d'4 b g d' d,8 c' b a b2 a4 g b g c2. <b d>4 c8 b a g a2 fs4 g2 b4 c d d, g2 g,4
        }
      }
    >>
  >>
}
%}
\layout {
  \context {
    \Score
    \override RehearsalMark.self-alignment-X =
      #(lambda (grob)
         (let* ((break-dir (ly:item-break-dir grob)))
           (case break-dir
             ((-1) RIGHT)  ;; end-of-line   -> right aligned
             ((1) LEFT)    ;; begin-of-line -> left-aligned
             (else CENTER) ;; otherwise     -> center-aligned
             )))
    \omit BarNumber
  }
ragged-last = ##f
}