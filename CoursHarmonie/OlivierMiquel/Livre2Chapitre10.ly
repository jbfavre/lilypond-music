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
  subtitle = "Livre 2, chapitre 10"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  %max-systems-per-page = 10
  %min-systems-per-page = 4
  %systems-per-page=6
}
%{
global = { \time 2/2 \key f \major }
\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" { \voiceOne
        \relative c'' {
          a2 c a bf g a f g e f d c c1
          a'4 bf c2 a8 f g a bf2 g8 e f g a2 f8 d e f g2 e8 c d e f2 d4 c8 d c2 c1
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c' {
          f2 g f f e e d d c c bf g a1
          f'2 g f f e e d d c c bf g a1
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative c' {
          c2 c c bf bf a a g g f f e f1
          c'4 d c2 c4 bf8 c bf2 bf4 a8 bf a2 a4 g8 a g2 g4 f8 g f2 f4 e8 d e2 f1
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative f {
          f2 e f d e c d bf c a bf c f,1 \break
          f'2 e8 c d e f2 d8 bf c d e2 c8 a bf c d2 bf8 g a bf c2 a8 f g a bf2 c8 bf a g f1
        }
      }
      \new FiguredBass {
        \figuremode {
          <5>2 <6> <5> <6> <5/> <6> <5> <6> <5> <6> <5> <5> <5>1
          <5>2 <6> <5> <6> <5/> <6> <5> <6> <5> <6> <5> <5> <5>1
        }
      }
      \new FiguredBass {
        \figuremode {
          <I>2 <V> <I> <IV> <V> <III> <VI> <II> <V> <I> <IV> <V> <I>1
          <I>2 <V> <I> <IV> <V> <III> <VI> <II> <V> <I> <IV> <V> <I>1
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 10.1"
  }
  \layout {
    ragged-last = ##f
    ragged-right = ##f
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \midi {
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}
global = { \time 4/4 \key a \major }
\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" { \voiceOne
        \relative c'' {
          e4 fs8 gs16 fs e4 gs16 fs e d
          cs4 d8 e16 d cs4 e16 d cs b
          a4 b8 cs16 b a4 cs16 b a gs \break
          fs8 e16 fs gs8 fs16 gs a8 gs16 a b8 cs16 b a2 gs4 a8 b a1
          \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef "treble_8"
      \global
      \new Voice = "tenor" { \voiceOne
        \relative c' {
          cs8 b16 cs d4 cs8 d16 cs b4
          a8 gs16 a b4 a8 b16 a gs4
          fs8 e16 fs gs4 fs8 gs16 fs e4
          d2 e4 fs16 gs a b cs4 d8 cs b2 cs1
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative c' {
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative f {
          a2. e8 d16 e
          fs2. cs8 b16 cs
          d2. a8 gs16 a
          b2 cs4 d
          e2 e,2
          a1
        }
      }
      \new FiguredBass {
        \figuremode {
          <5>4 <6 4> <5> <5> <5>4 <6 4> <5> <5> <5>4 <6 4> <5> <5>  <5>2 <6>4 <6> <6 4>2 <5> <5>1
        }
      }
      \new FiguredBass {
        \figuremode {
          <I>4 <IV> <I> <V> <VI> <II> <VI> <III> <IV> <VII> <IV> <I> <II>2 <I>4 <IV> <I>2 <V> <I>1
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 10.2"
  }
  \layout {
    ragged-last = ##f
    ragged-right = ##f
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \midi {
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}
%}
global = { \time 6/8 \key bf \major }
\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" { \voiceOne
        \relative c'' {
          bf4. d4.
          ef8 d c f4. g8 f ef a4. bf8 a g c4. f,8 ef d ef d c c2 r8 c
          d8 ef d c4 a8 bf8 c bf a4 f8 g8 a g f4 d8 ef8 f ef d4 bf8
          ef8 f g a bf c bf2.
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c' {
          d4. bf c d ef f
          g4. a bf g a2 r4
          bf4. a4. g4. f4. ef4. d4.
          c4. bf4. c4. c8 bf a bf2.
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative c {
          f8 ef f g4.~ g8 f g bf4.~ bf8 a bf d4.~
          d8 c d f4. d4. c8 d ef f2 r4
          f4. f d d bf bf
          g4. g g4. f f2.
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative c {
          bf4. g8 f g c4. bf8 a bf ef4. d8 c d \break
          g4. f8 ef f bf4. ef, f2. \break
          bf4. f8 ef f g4. d8 c d ef4. bf8 a bf \break
          c4. g8 f g ef4. f bf2.
        }
      }
      \new FiguredBass {
        \figuremode {
          <5>4. <5> <5> <5> <5> <5> <5> <5> <5> <6> <5>2.
          <5>4. <5> <5> <5> <5> <5> <5> <5> <6> <5> <5>2.
        }
      }
      \new FiguredBass {
        \figuremode {
          <I>4. <VI> <II> <I> <IV> <III> <VI> <V> <I> <II> <V>2.
          <I>4. <V> <VI> <III> <IV> <I> <II> <VI> <II> <V> <I>2.
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 10.3"
  }
  \layout {
    ragged-last = ##f
    ragged-right = ##f
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \midi {
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}
%{
global = { \time 4/4 \key g \major }
\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" { \voiceOne
        \relative c'' {
          \partial 2 s2
          s1*14
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c' {
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative c {
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative c {
          \partial 2 d4. d8 g4 g8 fs g4 d e e8 d e4 b c8 d e g d4 r4 \break
          b4 c d b e2 a, d g, c d \break
          e8 d c b a b c a d c b a g a b g c b c a d4 d, \break
          g r8 g'8 e4 r8 c8 c4 r8 b8 a4 r8 a'8 d,2 d2 g,1
        }
      }
      \new FiguredBass {
        \figuremode {
          <5>2 <5>4. <6>8 <5>4 <5> <5>4. <6>8 <5>4 <5> <5>4. <5>8 <5>4 <_>
          <6>4 <5> <5> <6> <5>2 <5> <5> <5> <5> <6 4>4 <5> <5>2 <5> <5> <5> <5>4 <6> <6 4> <5>
          <5>4 <_> <5> <_>8 <6 4> <5>4 <_>8 <6 4> <5>4 <_> <6 4>2 <5>
        }
      }
      \new FiguredBass {
        \figuremode {
          <V>
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 10.4"
  }
  \layout {
    ragged-last = ##f
    ragged-right = ##f
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \midi {
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}
%}