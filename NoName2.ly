\version "2.18.2"
\language "english"

%tagName = #'no-figuredbass
%perPageSystemNumber = 5
tagName = ""
%perPageSystemNumber = 4

\header {
  title = \markup
     \center-column {
       \combine \null \vspace #1
       "No name (yet) 2"
       "Op. 2"
      }
  composer = "Jean Baptiste Favre"
  subtitle = ""
  tagline = ""
  date = "Clichy-la-Garenne, mars 2020"
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 6
  %systems-per-page = \perPageSystemNumber
}
%#(set-global-staff-size 16)
%#(set-default-paper-size "a4landscape")
\score {
  \header {
    title = ##f
    composer = ##f
    subtitle = ##f
    tagline = ##f
    piece = ##f
  }
  <<
    \removeWithTag \tagName \new Staff \with { instrumentName = "Flute" }
    <<
      \clef treble \time 3/4
      \relative c'' { \voiceOne
        %\mark "A"
        \key f \minor
        r2. r2.
        \repeat unfold 2 { c4. bf8 af bf c2 c4 (df8 ef f ef df4) c2. \breathe c8 (bf af bf c4) bf8 (af g af bf4) }
        \alternative {
          { af8 (g f g af4) g2 \breathe df'4 }
          { af4 bf g f2. }
        }
        %\mark "B"
        \repeat unfold 2 {
          g4. af8 g f g2 g4 (af8 bf c bf af4) g2. \breathe af8 (bf c bf af4) g8 (af bf af g4)
        }
        \alternative {
          { f8 (g af g f4) g2. \breathe }
          { af4 bf c f,2 df'4 }
        }
        %\mark "C"
        \repeat unfold 16 { s2. }
      }
    >>
    \removeWithTag \tagName \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff
      <<
        \clef treble \time 3/4
        \new Voice { % Expression marks
          \set Score.markFormatter = #format-mark-box-alphabet
          \mark \default
          \tempo 2. = 55
          s2. s2.
          \bar "||"
          \repeat unfold 8 { s2. } \break
          \repeat unfold 8 { s2. } \break
          %\mark "B"
          \bar "||"
          \mark \default
          \repeat unfold 8 { s2. } \break
          \repeat unfold 8 { s2. } \break
          %\mark "C"
          \bar "||"
          \mark \default
          \repeat unfold 8 { s2. } \break
          \repeat unfold 8 { s2. }
          \bar "|."
        }
        \new Voice { % Up melody
          %\mark "A"
          \relative c'' {
            \key f \minor
            \oneVoice { r2. r2. } \voiceOne
            \repeat unfold 2 { c8 df c4 c c8 df ef f ef4 df2. c8 df c bf af bf af2 af4 f4. f8 f4 }
            \alternative {
              { c'2 c4 c8 df c bf af g }
              { f4 g c c2. }
            }
          }
          %\mark "B"
          \relative c'' {
            \repeat unfold 2 {
              s2. s2. s2. s2. s2. s2.
            }
            \alternative {
              { s2. s2. }
              { s2. s2. }
            }
          }
          %\mark "C"
          \relative c'' {
            \repeat unfold 2 {
              s2. s2. s2. s2. s2. s2.
            }
            \alternative {
              { s2. s2. }
              { s2. s2. }
            }
          }
        }
        \new Voice { % Up harmony
          \voiceTwo
          %\mark "A"
          s2. s2.
          \relative c' {
          }
          %\mark "B"
          \relative c' {
          }
          %\mark "C"
          \relative c' {
          }
        }
      >>
      \new Staff
      <<
        \clef bass \time 3/4
        \new Voice { % Bass harmony
          \voiceOne
          %\mark "A"
          \relative c' {
            s2. s2.
          }
          %\mark "B"
          \relative c' {
          }
          %\mark "C"
          \relative c' {
          }
        }
        \new Voice { % Bass
          %\mark "A"
          s2. s2.
          \repeat unfold 16 { s2. }
          %\mark "B"
          \repeat unfold 16 { s2. }
          %\mark "C"
          \repeat unfold 16 { s2. }
        }
        \new Voice { % Expression marks
          s2. s2.
          \repeat unfold 16 { s2. }
          %\mark "B"
          \repeat unfold 16 { s2. }
          %\mark "C"
          \repeat unfold 16 { s2. }
        }
      >>
    >>
    \removeWithTag \tagName \new Staff \with { instrumentName = "Violoncelle" }
    <<
      \clef bass \time 3/4
      \relative f {
        \key f \minor
        \oneVoice { f2 f4 f4. f8 f4  } \voiceTwo
        f2 f4 f4. f8 f4 
        bf,2 bf4 f'4. f8 f4 f2 f4 bf,4. bf8 bf4 f'2 f4 c4 c' c,
        f2 f4 f4. f8 f4 bf,2 bf4 c4. c8 c4 af2 af4 ef'4. ef8 ef4 df4 bf c f4. f8 f4
        %\mark "B"
        c2 c4 c4. c8 c4 df2 bf4 c4. c8 c4 af2 af4 ef'4. ef8 e4 f2 df4 c4. c8 c4
        bf2 bf4 c4. c8 c4 f2 bf,4 c4. c8 c4 f2 f4 bf,4. bf8 e4 f4 bf, c f2.
        %\mark "C"
      }
      \tag #'no-figuredbass \new FiguredBass \with { fontSize = #10 } {
        s2. s2.
        %\mark "A"
        \figuremode {
          <5> <5> <5> <5> <5> <5> <5> <5> <5> <5> <5> <5> <5> <5>2 <6>4 <5>4 <6> <5> <5>2.
        }
        %\mark "B"
        \figuremode {
          <5>2. <5> <6>2 <5>4 <5>2. <5> <5>2 <6>4 <5>2 <5>4 <5>2. <6> <5> <5>2 <5>4 <5>2. <5> <5>2 <6>4 <5> <6> <5> <5>2.
        }
        %\mark "C"
        \figuremode {
        }
      }
      \tag #'no-figuredbass \new FiguredBass {
        s2. s2.
        %\mark "A"
        \figuremode {
          <I>2. <I> <IV> <I> <I> <IV> <I> <V> <I> <I> <IV> <V> <III> <VII>2 <V>4 <VI>4 <II> <V> <I>2.
        }
        %\mark "B"
        \figuremode {
          <V> <V> <IV> <V> <III> <VII>2 <V>4 <I>2 <VI>4 <V>2. <II> <V> <I>2 <VI>4 <V>2. <I> <IV>2 <V>4 <I> <II> <V> <I>2.
        }
        %\mark "C"
        \figuremode {
        }
      }
    >>
  >>
}