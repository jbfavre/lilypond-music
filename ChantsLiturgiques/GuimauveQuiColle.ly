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
pianoMusic =   \new PianoStaff
  <<
    \tag #'visuel \new ChordNames {
      \chordmode {
        s4. g2. e2.:m c2. d2.
        b4./ds b e:m e4.:m7/d a4.:m/c a:m d4. s8 b4:m/d
        b4.:m c4. g2. c4./e c4. d4. s4.
        b4. b4./ds e:m e4.:m7/d a4.:m/c d4. g2.
      }
    }
    \new Staff = "haut" <<
      \set Staff.midiInstrument = "acoustic grand"
      \clef treble
      \global
      %\tempo 8 = 90
      \tempo 4. = 60
      \new Voice = "soprane" { \voiceOne
        \relative c' {
          \partial 4.
          d8 e8. a16 b4.~ b8. a16 g a b4.~ b8. g16 a b c4. b8  a8 b8 a4. \oneVoice r4 \voiceOne a8 \break
          b4. c8 b a a4 g fs8 g a4. e4 a8 a4. \oneVoice r8 \voiceOne b8 c \break
          d4. c8 b a c4 b4 a8 b c4. b8 c d a4. \oneVoice r8 \voiceOne a8 a \break
          b4. ds!8 b a a4 g a8 b a4. a4. g4. \oneVoice r4.
          %r8 d8 c b4. fs4 b8 a4. g8 fs g a4. g8 fs e fs4. \break
          %r8 fs8 fs g4. a8 g fs fs4. e fs g fs4.( f4) e8 e4.
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c'' {
          \partial 4.
          s4. a4. g4 s8 a4. g4. g4. g4. fs4. s4 r8
          fs4. ds4. e2. e4. c4. fs4. s8 fs4
          fs4. e4. d2. g2. fs4. s8 fs4
          fs2. e2. e4. fs4. d4. s4.
        }
      }
    >>
    \new Staff <<
      \set Staff.midiInstrument = "acoutic grand"
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative f' {
          \partial 4.
          s4. d2. e2. e4. e4. d4. s4.
          b2. b2. a2. d4. s8 b4
          b4. g4. b2. c4. e4. d4. s8 d8 c
          b2. b2. c4. c4. b4. s4.
        }
      }
      \new Voice = "bass" {
        \relative f {
          \partial 4.
          \oneVoice r4. \voiceTwo g4.~ g8 g8 fs e4.~ e8 e8 d8 c2. d4. \oneVoice r4. \voiceTwo
          ds4. b4. e4. d c4 b8 a8 b c d4. \oneVoice r8 \voiceTwo d8 c
          b4. c g' fs4. e4. c4. d4. \oneVoice r8 \voiceTwo d4
          ds4. b e d c d g, \oneVoice r4.
        }
      }
    >>
    \tag #'visuel \new FiguredBass{
      \figuremode {
        <0>4.<5> <_> <5> <_> <5> <_> <5>
        <_>4. \bassFigureExtendersOn <6> <6> <5> <5> <6> <6> \bassFigureExtendersOff <5> <_>8 <6>4
        <5>4. <5> <5> <_> \bassFigureExtendersOn <6> <6> \bassFigureExtendersOff <5> <_>
        \bassFigureExtendersOn <6> <6> <5> <5> \bassFigureExtendersOff <6> <5> <5> <_>
      }
    }
    \tag #'visuel \new FiguredBass{
      \figuremode {
        <_>4. <I> <_> <VI> <_> <IV> <_> <V>
        <_>4. <III> <_> <VI> <_> <II> <_> <V> <_>8 <III>4
        <III>4. <IV> <I> <_> <IV> <_> <V> <_>
        <III>4. <_> <VI> <_> <II> <V> <I> <_>
      }
    }
  >>

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = ##f
  }
  \keepWithTag visuel \pianoMusic
  \layout {}
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = ##f
  }
  \removeWithTag visuel \pianoMusic
  \midi {}
}
