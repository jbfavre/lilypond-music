\version "2.20.0"
\language "english"
\header {
  title = "Piano Bar"
  subtitle = ""
  composer = "Jean Baptiste Favre"
  opus = "op. 2"
  dedication = \markup { \italic "Clichy-la-Garenne, avril 2020" }
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##f
  ragged-last-bottom = ##f
  systems-per-page = 4
}
midiInstrumentName = "celesta"
global = { \time 4/4 \key g \major \tempo "Swing" 4 = 110 }
sopraneVoice = \relative c' {
          \partial 4
          d4 d'2 c8 b c d~ d2. g,4 a2. b4 c2. d,4
          c'2 b8 a b c~ c2. fs,4 g2 a2 b2. g4 e'2 d8 c d e8~
          e2. c4 d2 c8 b a b8~ b2. d4 c2 b8 a g8 b8~ b2. a4
          b2 c2 cs2 d4 ds4 e2 d8 c d e8~
          e2. c4 d2 c8 b a b8~ b2. d4 c2 b8 a g! b8~
          b2 a2 g1 g1
          \bar "|."
        }
altoVoice = \relative c' {
          \partial 4
          s4 g'2 g g2. g4 e2 e a2. d,4 fs2 fs a2. fs4 d2 fs2 d2. f4 g2 g
             a2 a fs fs gs gs e e fs fs g2 a2 a2 f4 g4 g2 g a a fs fs gs gs e e fs fs e1 <b d>1
        }
tenorVoice = \relative c' {
          \partial 4
          s4 r4 <b d>4 r4 <b d>4 r4 <b e>4 r4 <b e>4 r4 <a e'>4 r4 <a e'>4 r4 <e c'>4 r4 r4 r4 <a d>4 r4 <a d>4
             r4 <a d>4 r4 r4 b2 c2 b2 r2 r4 <c e>4 r4 <c e>4 r4 <c e>4 r4 r4 r4 <b d>4 r4 r4
             r4 <b d>4 r4 r4 r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 r4 d2 e2 ef2 b2 r4 <c e>4 r4 <c e>4
             r4 <e, c'>4 r4 r4 r4 <b' d>4 r4 r4 r4 <b d>4 r4 r4 r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 r4
             <g c>1  <b, d g>1
        }
bassesVoice = \relative f {
          \partial 4
          r4 g2 fs e d c b a b4 c d2 e fs e4 fs
          g2 fs f4 d4 b4 g4 c2 b a b4 c b2 c4 d e2 fs4 gs
          a2 g fs e4 fs g2 fs f g8 g, a b c2 b a b4 c
          b2 c4 d e2 fs4 gs a2 g! fs e4 d c2 b4 a g1
        }

pianoMusic =   \new PianoStaff
  <<
    \tag #'visuel \new ChordNames {
      \chordmode {
        \partial 4 s4
        g1 e:m c a:m
        d:7 d:7/fs g2 fs:dim g1:7/f c1
        a:m b:m e a:m d
        g2 fs2:dim7 f2:aug7 g4 g4:aug/b c1
        a:m b:m e a:m
        d c g
      }
    }
    \new Staff = "haut" <<
      \set Staff.midiInstrument = \midiInstrumentName
      \clef treble
      \global
      \new Voice = "soprane" { \tag #'midi \set Voice.midiMinimumVolume = #0.3
                               \tag #'midi \set Voice.midiMaximumVolume = #1
                               \voiceOne \sopraneVoice
      }
      \new Voice = "alto" { \tag #'midi \set Voice.midiMinimumVolume = #0.2
                            \tag #'midi \set Voice.midiMaximumVolume = #0.6
                            \voiceTwo \altoVoice
      }
    >>
    \new Staff <<
      \set Staff.midiInstrument = \midiInstrumentName
      \clef bass
      \global
      \new Voice = "tenor" { \tag #'midi \set Voice.midiMinimumVolume = #0.2
                             \tag #'midi \set Voice.midiMaximumVolume = #0.6
                             \voiceOne \tenorVoice
      }
      \new Voice = "bass" { \tag #'midi \set Voice.midiMinimumVolume = #0.2
                            \tag #'midi \set Voice.midiMaximumVolume = #0.6
                            \voiceTwo \bassesVoice
      }
    >>
    \tag #'visuel \new FiguredBass{
      \figuremode { \bassFigureExtendersOn
        <_>4 <5>1 <5\!> <5\!> <5\!>
             <5\!> <6\!> <5\!>2 <5\!>2 <2>1 <5\!>
             <5\!> <5\!> <_+\!> <5\!> <6\!> <5\!>2 <7\!> <7\!>  <5\!>2 <5\!>1
              <5\!> <5\!> <5\!> <5\!> <6\!> <5\!> <5\!>
      }
    }
    \tag #'visuel \new FiguredBass{
      \figuremode {
        <_>4 <I>1 <VI> <IV> <II> <V> <V>
             <I>2 <VII>2 <I>1 <IV> <II> <III> <VI>
             <II> <V> <I>2 <VII> <VII> <I> <IV>1 <II>
             <III> <VI> <II> <V> <IV> <I>
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
  \keepWithTag midi \pianoMusic
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}
