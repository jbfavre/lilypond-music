\version "2.18.2"
\language "english"
\header {
  title = "Guimauve"
  subtitle = "(qui colle aux doigts)"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  %max-systems-per-page = 4
  %min-systems-per-page = 4
  %systems-per-page=4
ragged-last-bottom = ##f
ragged-bottom = ##f
}

global = { \time 6/8 \key g \major }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = ##f
  }
  \new PianoStaff <<
    \new Staff = "haut" <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \set Staff.explicitClefVisibility = #end-of-line-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef treble
      \global
      \new Voice = "soprane" { \voiceOne
        \relative c' {
          \partial 4.
          d8 e a b4.~ b8. a16 g a b4.~ b8. g16 a b c4. b8 a8 g8 b4.  a4 a8 \break
          b4. c8 b a a4. g8 fs g a4. e4 a8 a4. r8 b8 c \break
          d4. e8 d c c4. b8 a b c4. b8 c d a4. r8 a8 a \break
          b4. fs8 b a a4. g8 a b a4. a4. g4. \oneVoice r4.
          %r8 d8 c b4. fs4 b8 a4. g8 fs g a4. g8 fs e fs4. \break
          %r8 fs8 fs g4. a8 g fs fs4. e fs g fs4.( f4) e8 e4.
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c'' {
          \partial 4.
          s4. a4. g4 s8 a4. g4 s8
        }
      }
      \context Staff = "haut" \figuremode {
          \override Staff.BassFigureAlignmentPositioning.direction = #UP
          \bassFigureStaffAlignmentUp
          <_>4. <G> <_> <Em> <_> <C> <"Am/C"> <D>
          <_>4. <"B/D#"> <B> <Em> <"Em7/D"> <"Am/C"> <Am> <D> <_>8 <"G/D">4
          <Bm>4. <C> <G> <_> <"C/E"> <C> <D> <_>
          <"B/D#">4. <B> <Em> <"Em7/D"> <"Am/C"> <D> <G> <_>
      }
    >>
    \new Staff <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \set Staff.explicitClefVisibility = #end-of-line-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef bass
      \global
      \new Voice = "bass" { \voiceTwo
        \relative f {
          \partial 4.
          r4. g4.~ g8 g8 fs e4.~ e8 e8 d8 c4. c4. d4.~
          d4 r8 ds4. b e d c4 b8 a8 b c d4. r8 d8 c
          b4. c g'~ g8 g fs e4. c4. d4. r8 d8 d
          ds4. b e d c d g \oneVoice r4.
        }
      }
      \new FiguredBass{
        \figuremode {
          <0>4.<5> <_> <5> <_> <5> <6> <5>
          <_>4. <6> <_+> <5> <4> <6> <5> <5> <_>8 <6 4>4
          <5>4. <5> <5> <_> <6> <_> <5> <_>
          <6> <_+> <5> <_> <6> <5> <5> <_>
        }
      }
      \new FiguredBass{
        \figuremode {
          <_>4. <I> <_> <VI> <_> <IV> <II> <V>
          <_>4. <III> <_> <VI> <_> <II> <_> <V> <_>8 <I>4
          <III>4. <IV> <I> <_> <IV> <_> <V> <_>
          <III>4. <_> <VI> <_> <II> <V> <I> <_>
        }
      }
    >>
  >>
\layout {
ragged-last = ##f
}
\midi {}
}
