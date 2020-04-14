\version "2.20.0"
\language "english"
\header {
  title = "Guimauve"
  subtitle = "(qui colle aux doigts)"
  composer = "Jean Baptiste Favre"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##f
  ragged-last-bottom = ##f
}

global = { \time 6/8 \key g \major }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = ##f
  }
  \new PianoStaff
  <<
    \new ChordNames {
      \chordmode {
        s4. g2. e2.:m c4. a4.:m/c d2.
        b4./ds b e:m e4.:m7/d a4.:m/c a:m d4. s8 g4/d
        b4.:m c4. g2. c4./e c4. d4. s4.
        b4. b4./ds e:m e4.:m7/d a4.:m/c d4. g2.
      }
    }
    \new Staff = "haut" <<
      \clef treble
      \global
      \new Voice = "soprane" { \voiceOne
        \relative c' {
          \partial 4.
          d8 e a b4.~ b8. a16 g a b4.~ b8. g16 a b c4. b8 a8 g8 b4.  a4 a8 \break
          b4. c8 b a a4 g fs8 g a4. e4 a8 a4. \oneVoice r8 \voiceOne b8 c \break
          d4. e8 d c c4. b8 a b c4. b8 c d a4. \oneVoice r8 \voiceOne a8 a \break
          b4. fs8 b a a4 g a8 b a4. a4. g4. \oneVoice r4.
          %r8 d8 c b4. fs4 b8 a4. g8 fs g a4. g8 fs e fs4. \break
          %r8 fs8 fs g4. a8 g fs fs4. e fs g fs4.( f4) e8 e4.
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c'' {
          \partial 4.
          s4. a4. g4 s8 a4. g4. g4. e4. fs4.~ fs4 r8
          fs4. ds4. e4. e4. e4. c4. fs4. s8 g4
          fs4. g4. g2.  g4. g4. fs4. s8 fs4
          fs4. fs4. e4. e4. e4. d4. d4. s4.
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative f' {
          \partial 4.
          s4. d4. d4. e4. e4. e4. c4. d4.~ d4 s8
          b4. fs4. b4. b4. a4. a4. d4. s8 d4
          d4. c4. d2. c4. e4. d4. s8 d4
          d4. b4. b4. b4. a4. fs4. b4. s4.
        }
      }
      \new Voice = "bass" {
        \relative f {
          \partial 4.
          \oneVoice r4. \voiceTwo g4.~ g8 g8 fs e4.~ e8 e8 d8 c4. c4. d4.~ d4 \oneVoice r8 \voiceTwo
          ds4. b e d c4 b8 a8 b c d4. \oneVoice r8 \voiceTwo d8 c
          b4. c g'~ g8 g fs e4. c4. d4. \oneVoice r8 \voiceTwo d8 c
          b4. ds e d c d g \oneVoice r4.
        }
      }
    >>
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
  \layout {}
  \midi {}
}
