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
  max-systems-per-page = 7
}
midiInstrumentName = "celesta"
global = { \time 4/4 \key g \major \tempo "Swing" 4 = 120 }
sopraneVoice = \relative c' {
  \set Score.markFormatter = #format-mark-box-alphabet
          \partial 4
          d4 \mark \default %\mark "A"
             d'2 c8 b c d~ d2. g,4 a2. b4 c2. d,4 \break
             c'2 b8 a b c~ c2. fs,4 g2 a2 b2. ds4 \break
             \mark \default %\mark "B"
             e2 d8 c d e8~ e2. fs4 d2 c8 b c d d2. d4 \break
             cs2 b8 a b cs cs2. a4 d2 cs2 c!2. d,4 \break
             \mark \default %\mark "C"
             d'2 c8 b c d~ d2. g,4 a2. b4 c2. d,4 \break
             c'2 b8 a b c~ c2. fs,4 g2 a2 b2. ds4 \break
             \mark \default %\mark "D"
             e2 d8 c d e8~ e2. c4 d2 c8 b a b8~ b2. d4 \break
             c2 b8 a g8 b8~ b2. a4 b2 c2 cs2 d4 ds4 \break
             \mark \default %\mark "E"
             e2 d8 c d e8~ e2. c4 d2 c8 b a b8~ b2. d4 \break
             c2 b8 a g! b8~ b2 a2 g1 g1 \break
             \mark \default %\mark "F"
             r4 g4 a bf b!8 bf b! a~ a4 g4 b!8 bf b! a~ a4 g4 c8 b c a~ a4 g \break
             c8 r8 g4 a bf b!8 bf b! a~ a4 g4 b!8 bf b! a~ a8 g4 fs8 e4 e f fs \break
             g8 r8 g4 a bf b!8 bf b! a~ a4 g4 b!8 bf b! a~ a4 g4 c8 b c a~ a4 g4 \break
             c8 r8 c4 b bf a8 gs a b d c b a g c e g4 e8 c g fs4 c' e8 d8~ d4 \break
             c8 r8 g4 a bf b!8 bf b! a~ a4 g4 b!8 bf b! a~ a4 g4 c8 b c a~ a4 g \break
             c8 r8 c4 d e f8 g e f~ f c d f e f d e~ e c d e d e c d~ d b c d e r8 c4 d e \break
             f8 g e f~ f c d f e f ds e~ e c d e d4. d8 e4 fs \tuplet 3/2 4 { g8 d, g b d g f d, g b d f e d, g c d e d d, fs a c d, } c'2 r4 d,4 \break
             \mark \default %\mark "G"
             d'2 c8 b c d~ d2. g,4 a2. b4 c2. d,4 \break
             c'2 b8 a b c~ c2. fs,4 g2 a2 b2. ds4 \break
             \mark \default %\mark "H"
             e2 d8 c d e8~ e2. fs4 d2 c8 b c d d2. d4 \break
             cs2 b8 a b cs cs2. a4 d2 cs2 c!2. d,4 \break
             \mark \default %\mark "I"
             d'2 c8 b c d~ d2. g,4 a2. b4 c2. d,4 \break
             c'2 b8 a b c~ c2. fs,4 g2 a2 b2. ds4 \break
             \mark \default %\mark "J"
             e2 d8 c d e8~ e2. c4 d2 c8 b a b8~ b2. d4 \break
             c2 b8 a g8 b8~ b2. a4 b2 c2 cs2 d4 ds4 \break
             \mark \default %\mark "K"
             e2 d8 c d e8~ e2. c4 d2 c8 b a b8~ b2. d4 \break
             c2 b8 a g! b8~ b2 a2 g1 g1
             %g a a b cs d8 r8 r2. s1 \break
          \bar "|."
        }
altoVoice = \relative c' {
          \partial 4 s4
             %\mark "A"
             g'2 a4 fs  g2. g4 e2 e4 <d gs> a'2. d,4
             fs2 g a2. fs4 d2 <ef fs>2 d2. <f g>4
             % \mark "B"
             g2 g a2 a fs fs g! g!
             g g g2. r4 fs2 g2 a2. r4
             %\mark "C"
             g2 a4 fs g2. g4 e2 e4 <d gs> a'2. d,4
             fs2 g a2. fs4 d2 <ef fs>2 d2. <f g>4
             %\mark "D"
             g2 g a2 a fs e4 <c fs> gs'2 gs
             e e fs fs g2 a2 a2 f4 g4
             %\mark "E"
             g2 g a a fs fs gs d
             e e fs fs e1 <b d fs>1
             %\mark "F"
             R1 f'4 f f f f f f f
             e4 e e e e8 r8 r2.
             f4 f f f f f f r4 s1
             s1 f8 f f f~ f4 r4 f8 f f f~ f4 r4 e8 e e e~ e4 r4
             <e g>8 r8 s2. fs4 fs fs fs e g8 a4 a4 r8 c4 a c8 g~ g4
             <e g>8 r8 r2. f8 f f f~ f4 r4 f8 f f f~ f4 r4 e8 e e e~ e4 r4
             <e g>8 r8 r2. f2 a2 g2 a2
             s1*8
             %\mark "G"
             g2 a4 fs  g2. g4 e2 e4 <d gs> a'2. d,4
             fs2 g a2. fs4 d2 <ef fs>2 d2. <f g>4
             % \mark "H"
             g2 g a2 a fs fs g! g!
             g g g2. r4 fs2 g2 a2. r4
             %\mark "I"
             g2 a4 fs g2. g4 e2 e4 <d gs> a'2. d,4
             fs2 g a2. fs4 d2 <ef fs>2 d2. <f g>4
             %\mark "J"
             g2 g a2 a fs e4 <c fs> gs'2 gs
             e e fs fs g2 a2 a2 f4 g4
             %\mark "K"
             g2 g a a fs fs gs d
             e e fs fs e1 <b d fs>1
             %f e4 e4 fs <g a> <fs a>8 r8 r2.
        }
tenorVoice = \relative c' {
          \partial 4 s4
             %\mark "A"
             r4 <b d>4 r4 <a d>4 r4 <b e>4 r4 <b e>4 r4 <a e'>4 r4 <e b'>4 r4 <e c'>4 r4 r4
             r4 <a d>4 r4 <b e>4 r4 <a d>4 r4 r4 b2 c2 b2 r2
             %\mark "B"
             r4 <c e>4 r4 <c e>4 r4 <c e>4 r4 r4 r4 <b d>4 r4 r4 r4 <b d>4 r4 <b d>4
             r4 <g cs>4 r4 <g cs>4 r4 <e a>4 r4 r4 a2 a2 d2. r4
             %\mark "C"
             r4 <b d>4 r4 <a d>4 r4 <b e>4 r4 <b e>4 r4 <a e'>4 r4 <e b'>4 r4 <e c'>4 r4 r4
             r4 <a d>4 r4 <b e>4 r4 <a d>4 r4 r4 b2 c2 b2 r2
             %\mark "D"
             r4 <c e>4 r4 <c e>4 r4 <c e>4 r4 r4 r4 <b d>4 r4 r4 r4 <b d>4 r4 r4
             r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 r4 d2 e2 ef2 b2
             %\mark "E"
             r4 <c e>4 r4 <c e>4 r4 <e, c'>4 r4 r4 r4 <b' d>4 r4 r4 r4 <b d>4 r4 r4
             r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 r4 <g c>1  <g>1
             %\mark "F"
             R1 r4 <b d>4 r <b d>4 r4 <b d>4 r <b d>4 r4 <g c>4 r4 <g c>4
             <g c>8 r8 r2. r4 <b d>4 r <b d>4 r4 <b d>4 r4 r4 r1
             r1 r4 <b d>4 r <b d>4 r4 <b d>4 r <b d>4 r4 <g c>4 r4 <g c>4
             <g c>8 r8 r2. r4 <a c>4 r <a d>4 c e <c e> e4 r4 <g, c>4 r4 <g c>4
             <g c>8 r8 r2. r4 <b d>4 r <b d>4 r4 <b d>4 r <b d>4 r4 <g c>4 r4 <g c>4
             <g c>8 r8 r2. r4 <f c'>4 r4 <a c> r4 <g c> r4 <e a c> r4 <f d'> r4 <f d'> s1
             s1*7
             %\mark "G"
             r4 <b d>4 r4 <a d>4 r4 <b e>4 r4 <b e>4 r4 <a e'>4 r4 <e b'>4 r4 <e c'>4 r4 r4
             r4 <a d>4 r4 <b e>4 r4 <a d>4 r4 r4 b2 c2 b2 r2
             %\mark "H"
             r4 <c e>4 r4 <c e>4 r4 <c e>4 r4 r4 r4 <b d>4 r4 r4 r4 <b d>4 r4 <b d>4
             r4 <g cs>4 r4 <g cs>4 r4 <e a>4 r4 r4 a2 a2 d2. r4
             %\mark "I"
             r4 <b d>4 r4 <a d>4 r4 <b e>4 r4 <b e>4 r4 <a e'>4 r4 <e b'>4 r4 <e c'>4 r4 r4
             r4 <a d>4 r4 <b e>4 r4 <a d>4 r4 r4 b2 c2 b2 r2
             %\mark "J"
             r4 <c e>4 r4 <c e>4 r4 <c e>4 r4 r4 r4 <b d>4 r4 r4 r4 <b d>4 r4 r4
             r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 r4 d2 e2 ef2 b2
             %\mark "K"
             r4 <c e>4 r4 <c e>4 r4 <e, c'>4 r4 r4 r4 <b' d>4 r4 r4 r4 <b d>4 r4 r4
             r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 r4 <g c>1  <g>1
             %<b d>4 <cs e>4 <cs e>4 d4 e fs8 r8 r2.
        }
bassesVoice = \relative f {
          \partial 4 r4
             %\mark "A"
             g2 fs e d c b a b4 c
             d2 e fs e4 fs g2 fs f4 d4 b4 g4
             %\mark "B"
             c2 b a b4 c b2 c4 d e2 e2
             e2 e a, b4 cs d2 e fs4 d e fs
             %\mark "C"
             g2 fs e d c b a b4 c
             d2 e fs e4 fs g2 fs f4 d4 b4 g4
             %\mark "D"
             c2 b a b4 c b2 c4 d e2 fs4 gs
             a2 g fs e4 fs g2 fs f g8 g, a b
             %\mark "E"
             c2 b a b4 c b2 c4 d e2 fs4 gs
             a2 g! fs e4 d c2 b4 a g1
             %\mark "F"
             R1 g'4 r d r g4 r d r c4 r g r
             c8 r c4 b a g r d' r g r d r4 r1
             r1 g4 r d r g4 r d r c4 r g r
             c8 r8 c4 d e fs r4 d r4 e g a a d, d g, g
             c8 r8 r2. g'4 r d r g4 r d r c4 r g r
             c8 r8 c4 b bf a r4 f r4 c' r4 a4 r4 b4 r4 g4 r4 c8 r8 c'4 b bf
             a4 r4 f4 r4 c'4 r4 a4 r4 c4. c8 b4 a g r4 b r4 c r4 d r4 d,4 ds e fs
             %\mark "A"
             g2 fs e d c b a b4 c
             d2 e fs e4 fs g2 fs f4 d4 b4 g4
             %\mark "B"
             c2 b a b4 c b2 c4 d e2 e2
             e2 e a, b4 cs d2 e fs4 d e fs
             %\mark "C"
             g2 fs e d c b a b4 c
             d2 e fs e4 fs g2 fs f4 d4 b4 g4
             %\mark "D"
             c2 b a b4 c b2 c4 d e2 fs4 gs
             a2 g fs e4 fs g2 fs f g8 g, a b
             %\mark "E"
             c2 b a b4 c b2 c4 d e2 fs4 gs
             a2 g! fs e4 d c2 b4 a g1
             %r a' g fs e d8 r8 r2.
        }

pianoMusic =   \new PianoStaff
  <<
    \tag #'nonvisuel \new ChordNames {
      \chordmode {
        \partial 4
        s4 g1 e:m a2.:m e4:7 a1:m
           d:7 d:7/fs g2 fs:dim g1:7/f
           c1 a:m b:m e:m
           cs:dim6/e a:7 d2 cs:dim6/e d1:7
           g1 e:m a2.:m e4:7 a1:m
           d:7 d:7/fs g2 fs:dim g1:7/f
           c1 a:m b:m e:7
           a:m d g2 fs2:dim7 f2:aug7 g4:7 g4:aug/a
           c1 a:m b:m e:7
           a:m d:6 c g:7+
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
                            \tag #'midi \set Voice.midiMaximumVolume = #0.8
                            \voiceTwo \altoVoice
      }
    >>
    \new Staff <<
      \set Staff.midiInstrument = \midiInstrumentName
      \clef bass
      \global
      \new Voice = "tenor" { \tag #'midi \set Voice.midiMinimumVolume = #0.2
                             \tag #'midi \set Voice.midiMaximumVolume = #0.8
                             \voiceOne \tenorVoice
      }
      \new Voice = "bass" { \tag #'midi \set Voice.midiMinimumVolume = #0.2
                            \tag #'midi \set Voice.midiMaximumVolume = #0.8
                            \voiceTwo \bassesVoice
      }
    >>
    \tag #'nonvisuel \new FiguredBass{
      \figuremode { \bassFigureExtendersOn
        <_>4 <5>1 <5\!> <5\!> <5\!>
             <5\!> <6\!> <5\!>2 <5\!>2 <2>1
             <5\!>1 <5\!> <5\!> <5\!>
             <6\!> <_+\!> <5\!>2 <6\!> <6\!>1
             <5>1 <5\!> <5\!> <5\!>
             <5\!> <6\!> <5\!>2 <5\!>2 <2>1
             <5\!> <5\!> <5\!> <_+\!>
             <5\!> <6\!> <5\!>2 <7\!> <7\!> <5\!>2
             <5\!>1 <5\!> <5\!> <5\!>
             <5\!> <6\!> <5\!> <5\!>
      }
    }
    \tag #'nonvisuel \new FiguredBass{
      \figuremode {
        <_>4 <I>1 <VI> <IV> <II> <V> <V>
             <I>2 <VII>2 <I>1
             <IV>1 <II> <III> <VI>
             <IV> <II> <V>2 <IV>2 <V>1
             <I>1 <VI> <IV> <II> <V> <V>
             <I>2 <VII>2 <I>1
             <IV> <II> <III> <VI>
             <II> <V> <I>2 <VII> <VII> <I>
             <IV>1 <II> <III> <VI>
             <II> <V> <IV> <I>
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
