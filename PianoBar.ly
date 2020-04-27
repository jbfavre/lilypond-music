\version "2.20.0"
\language "english"
% Renders swing rhythm in midi
\include "articulate.ly"
% Will be included in lilypond 2.21
% In the mean time, you can get it from
% https://github.com/lilypond/lilypond/blob/master/ly/swing.ly
\include "swing.ly"
% This one has been found here:
% http://lsr.di.unimi.it/LSR/Item?id=204
\include "libs/rhythmMarks.ily"

keepTags   = #'(visuel notvideo)

%%% To enable processing with ly2video, uncomment include and paper blockbelow
%\include "libs/ly2video.ily"
%removeTags = #'(notvideo school)
%\paper {
%   page-breaking = #ly:one-line-breaking
%   top-margin    = 148\mm
%   bottom-margin = 148\mm
%   left-margin   = 46\mm
%   right-margin  = 46\mm
%}

%%% To enable processing with ly2video, comment paper block below
\paper {
  #(include-special-characters)
  print-all-headers = ##f
  ragged-last-bottom = ##f
  systems-per-page = 5
}
removeTags = #'(school)

\header {
  title = \markup { \override #'(font-name . "Park Lane NF") \fontsize #8 \smallCaps "Piano Bar" }
  subtitle = ""
  composer = "Jean Baptiste Favre"
  opus = "op. 2"
  dedication = \markup { \italic "Clichy-la-Garenne, avril 2020" }
  tagline = ""
}
midiInstrumentName = "honky-tonk"
global = { \override Score.MetronomeMark.padding = #7 \tempo "Swing" 4 = 132 \time 4/4 \key g \major }
sopraneVoice = \relative c' {
          \partial 4
          d4
             \tag #'notvideo \once \override Score.RehearsalMark.X-offset = #0
             \tag #'notvideo \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
             \tag #'notvideo \rhythmMark #"ternaire" \rhyMarkIIEighths \rhyMarkTriplets
             %\mark \default %\mark "A"
             d'2 \tripletFeel 8 { c8[ b c d~] } d2. g,4 a2. b4 c2. d,4 \break
             c'2 \tripletFeel 8 { b8[ a b c~] } c2. fs,4 g2 a2 b2. g4 \break
             \mark #2 %\mark "B"
             e'2 \tripletFeel 8 { d8[ c d e8~] } e2. fs4 d2 \tripletFeel 8 { c8[ b c d~] } d2. d4 \break
             cs2 \tripletFeel 8 { b8[ a b cs~] } cs2. a4 d2 cs2 c!2. d,4 \break
             \mark \default %\mark "C"
             d'2 \tripletFeel 8 { c8[ b c d~] } d2. g,4 a2. b4 c2. d,4 \break
             c'2 \tripletFeel 8 { b8[ a b c~] } c2. fs,4 g2 a2 b2. ds4 \break
             \mark \default %\mark "D"
             e2 \tripletFeel 8 { d8[ c d e8~] } e2. c4 d2 \tripletFeel 8 { c8[ b a b8~] } b2. d4 \break
             c2 \tripletFeel 8 { b8[ a g8 b8~] } b2 a2 b2 c2 cs2 d4 ds4 \break
             \mark \default %\mark "E"
             e2 \tripletFeel 8 { d8[ c d e8~] } e2. c4 d2 \tripletFeel 8 { c8[ b a b8~] } b2. d4 \break
             c2 \tripletFeel 8 { b8[ a g! b8~] } b2 a2 g1 <b, d e g>1 R1 R1 \break
             \bar"||" \pageBreak
             \mark \default \key c \major %\mark "F"
             r4 g'4 a as \tripletFeel 8 { b!8[ as b! a~] } a4 g4 \tripletFeel 8 { b!8[ as b! a~] } a4 g4 \tripletFeel 8 { c8[ b c a~] } a4 g \break
             c8 r8 g4 a as \tripletFeel 8 { b!8[ bf b! a~] } a4 g4 \tripletFeel 8 { b!8[ bf b! a~] a8 g4 f8 } e8 r8 e4 f fs \break
             \mark \default %\mark "G"
             g8 r8 g4 a bf \tripletFeel 8 { b!8[ as b! a~] } a4 g4 \tripletFeel 8 { b!8[ as b! a~] } a4 g4 \tripletFeel 8 { c8[ b c a~] } a4 g4 \break
             c8 r8 c4 b bf \tripletFeel 8 { a8[ gs a b] d[ c b a] g![ c e] g4 e8[ c g] } fs4 c' \tripletFeel 8 { e8 d8~ } d4 \break
             \mark \default %\mark "H"
             c8 r8 g4 a as \tripletFeel 8 { b!8[ bf b! a~] } a4 g4 \tripletFeel 8 { b!8[ bf b! a~] } a4 g4 \tripletFeel 8 { c8[ b c a~] a4 } g \break
             c8 r8 c4 d e \tag #'notvideo { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \rhythmMark #"binaire" \rhyMarkIIEighths \rhyMarkIIEighths } f8[ g e f~] f[ c d f] e[ f d e~] e[ c d e] d[ e c d~] d[ b c d] \break
             e r8 c4 d e \tag #'notvideo { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \rhythmMark #"binaire" \rhyMarkIIEighths \rhyMarkIIEighths } f8 g e f~ f c d f e f ds e~ e c d e
             \tag #'notvideo { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \rhythmMark #"ternaire" \rhyMarkIIEighths \rhyMarkTriplets }
             \tripletFeel 8 { d4. d8 e4 fs } \break
             \tuplet 3/2 4 { g8 d, g b d g f d, g b d f e e, g c d e e e, g a b cs } d2 r4 d,4 \bar"||" \break
             \key g \major \mark \default %\mark "I"
             \acciaccatura cs'8 \tag #'notvideo { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \rhythmMark #"ternaire" \rhyMarkIIEighths \rhyMarkSlurredTriplets } d2 \tripletFeel 8 { c8[ b c d~] d2. g,4 a4. e8 b'4 e,8 c'8~ } c2. d,4 \break
             c'2 \tripletFeel 8 { b8[ a b c~] } c2. fs,4 \tripletFeel 8 { g4. a8~ a4. b8~ } b2. g4 \break
             \mark \default %\mark "J"
             \acciaccatura ds'8 e2 \tripletFeel 8 { d8[ c d e8~] } e2. fs4 d2 \tripletFeel 8 { c8[ b c d~] } d2. d4 \break
             cs2 \tripletFeel 8 { b8[ a b cs~] } cs2. a4 \tripletFeel 8 { d4. cs8~ cs4. c8~ } c!2. d,4 \break
             \mark \default %\mark "K"
             d'2 \tripletFeel 8 { c8[ b c d~] d2. g,4 a4. e8 b'4 e,8 c'8~ } c2. d,4 \break
             c'2 \tripletFeel 8 { b8[ a b c~] } c2. fs,4 \tripletFeel 8 { g4. a8~ a4. b8~ } b2. ds4 \break
             \mark \default %\mark "L"
             e2 \tripletFeel 8 { d8[ c d e8~] } e2. c4 d2 \tripletFeel 8 { c8[ b a b8~] } b2~  \tuplet  3/2 4 { b8 f' e d c b } \break
             c2 \tripletFeel 8 { b8[ a g8 b8~] } b2. a4 b2 c2 \tripletFeel 8 { cs4. d8~ } d4 ds4 \break
             \mark \default %\mark "M"
             e2 \tripletFeel 8 { d8[ c d e8~] } e2. c4 d2 \tripletFeel 8 { c8[ b a b8~] } b2. d4 \break
             c2 \tripletFeel 8 { b8[ a g! b8~] } b2 a2 g2.  fs4
             \tag #'midi { \set tieWaitForNote = ##t b,32~ d~ e~ g~ <b, d e g>4.~ <b d e g>2~ <b d e g>1 \unset tieWaitForNote }
             \tag #'(visuel) { <b d e g>1\arpeggio~ <b d e g>1 }
          \bar "|."
        }
altoVoice = \relative c' {
          \partial 4 s4
             %\mark "A"
             g'2 \tripletFeel 8 { a4. g8~} g2. g4 e2. <d gs>4 a'2. d,4
             fs2 \tripletFeel 8 { g4. a8~} a2. fs4 d2 <ef fs>2 d2. <d f>4
             % \mark "B"
             e2 \tripletFeel 8 { g4. a8~} a2. a4 fs2 \tripletFeel 8 { fs4. gs8~} gs2. gs4
             g2 \tripletFeel 8 { g4. g8~} g2. r4 fs2 g2 a2. r4
             %\mark "C"
             g2 \tripletFeel 8 { a4. g8~} g2. g4 e2. <d gs>4 a'2. d,4
             fs2 \tripletFeel 8 { g4. a8~} a2. fs4 d2 <ef fs>2 d2. <f g>4
             %\mark "D"
             g2 \tripletFeel 8 { g4. a8~} a2. a4 fs2 \tripletFeel 8 { e4. gs8~} gs2. gs4
             e2 \tripletFeel 8 { e4. fs8~} fs2 fs2 g2 a2 a2 f4 g4
             %\mark "E"
             g2 \tripletFeel 8 { g4. g8~} g2. a4 fs2 \tripletFeel 8 { fs4. gs8~} gs2. e4
             e2 \tripletFeel 8 { e4. fs8~} fs2 fs e1 s1 R1 R1
             \key c \major %\mark "F"
             R1 f4 f f f f4 f4 f
             f4 e e4 e e <e g>8 r8 e4 g <e g>
             f4 f4 f4 f \tripletFeel 8 { f4 f f8 r4 r8 } c8 r8 c4 d d
             %\mark "G"
             d d g g f4 f f f f4 f f f e4 e e e
             <e g>8 r8 g4 f g \tripletFeel 8 { f4 f f f e g8 a4 a4 r8 } c,4 a' \tripletFeel 8 { b8 f~ } f4
             %\mark "H"
             <e g>8 r8 e4 g <e g> f4 f f f f f f f e e e e
             <e g>8 r8 g4 <f g> <e g> f4. a8~a2 g4. a8~ a2 f4. g8~ g2 <e g>8 r8 g4 <f g> <e g>
             f4. a8~ a2 g4. a8~ a2 fs2 d2 s1 s1 <fs a>2 r2
             \key g \major %\mark "I"
             g2 \tripletFeel 8 { a4. g8~  g2. g4 e2. e8 a8~ } a2. d,4
             fs2 \tripletFeel 8 { g4. a8~ } a2. fs4 \tripletFeel 8 { d4. <ef fs>8~ <ef fs>4. d8~ } d2. <d f>4
             % \mark "J"
             e2 \tripletFeel 8 { g4. a8~ } a2 \tuplet 3/2 { e8 fs g } a4 fs2 \tripletFeel 8 { fs4. gs8~ } gs!2. gs!4
             g!2 \tripletFeel 8 { g4. g8~ } g2. r4 \tripletFeel 8 { fs4. g8~ g4. a8~ } a2. r4
             %\mark "K"
             g2 \tripletFeel 8 { a4. g8~ g2. g4 e2. e8 a8~ } a2. d,4
             fs2 \tripletFeel 8 { g4. a8~ } a2. fs4 d2 <ef fs>2 d2. <f g>4
             %\mark "L"
             g2 \tripletFeel 8 { g4. a8~ } a2 \tuplet 3/2 { e8 fs g } a4 fs2 \tripletFeel 8 { e4. gs!8~ } gs!2. e4
             e2 e2~ e4 fs4 g a g2 a2 \tripletFeel 8 { a4. <gs b>8~ } <gs b>4 <f! g!>4
             %\mark "M"
             g2 \tripletFeel 8 { b8 a4 af8 } \tuplet 3/2 4 { g8 fs f } e4~ \tuplet 3/2 4 { e8 fs g} a4 a2~ \tripletFeel 8 { a8[ g fs f] } <e gs!>2. <d b'>4
             <e a>2 e2~ e4 fs4 fs2 e2. <as, cs>4 s1 s1
        }
tenorVoice = \relative c' {
          \partial 4 s4
             %\mark "A"
             r4 <b d>4 r4 <a d>4 r4 <b e>4 r4 <b e>4 r4 <a e'>4 r4 <e b'>4 r4 <e c'>4 r4 r4
             r4 <a d>4 r4 <b e>4 r4 <a d>4 r4 r4 b2 c2 b2 r2
             %\mark "B"
             r4 <c e>4 r4 <c e>4 r4 <c e>4 r4 r4 r4 <b d>4 r4 r4 r4 <b d>4 r4 <b e>4
             r4 <e, a>4 r4 <e a>4 r4 <e a>4 r4 r4 a2 a2 d2. r4
             %\mark "C"
             r4 <b d>4 r4 <a d>4 r4 <b e>4 r4 <b e>4 r4 <a e'>4 r4 <e b'>4 r4 <e c'>4 r4 r4
             r4 <a d>4 r4 <b e>4 r4 <a d>4 r4 r4 b2 c2 b2 r2
             %\mark "D"
             r4 <c e>4 r4 <c e>4 r4 <c e>4 r4 r4 r4 <b d>4 r4 r4 r4 <b d>4 r4 r4
             r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 <a d>4 d2 e2 ef2 b2
             %\mark "E"
             r4 <c e>4 r4 <c e>4 r4 <e, c'>4 r4 r4 r4 <b' d>4 r4 r4 r4 <b d>4 r4 r4
             r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 r4 <g c>1 <g>1 R1 R1
             \key c \major %\mark "F"
             R1 r4 <b d>4 r <b d>4 r4 <b d>4 r <b d>4 r4 <g c>4 r4 <g c>4
             <g c>8 r8 c4 e d r4 <b d>4 r <b d>4 r4 <b d>4 r4 <b d>4 g8 r8 g4 g c
             %\mark "G"
             <g b>4 <b d> <b d> <c e> r4 <b d>4 r <b d>4 r4 <b d>4 r <b d>4 r4 <g c>4 r4 <g c>4
             <g c>8 r8 e'4 d c r4 <a c>4 r <a d>4 r4 <g c> r4 <e a> r4 <fs d'>4 r4 <b d>4
             %\mark "H"
             c8 r8 c4 e d r4 <b d>4 r <b d>4 r4 <b d>4 r <b d>4 r4 <g c>4 r4 <g c>4
             <g c>8 r8 e'4 d c r4 <f, c'>4 r4 <a c> r4 <g c> r4 <e a c> r4 <a d> r4 <b d> <g c>4 e'4 d c
             r4 <f, c'>4 r4 <a c> r4 <g c> r4 <e a c> a2 b2
             r4 <b d>4 r4 <g d'> r4 <e c'> r4 <a e'> c2 r2
             \key g \major %\mark "I"
             r4 <b d>4 r4 <a d>4 r4 <b e>4 r4 <b e>4 r4 <a e'>4 r4 <gs b>4 r4 <e c'>4 r4 r4
             r4 <a d>4 r4 <b e>4 r4 <a d>4 r4 r4 b2 c2 b2 r2
             %\mark "J"
             r4 <c e>4 r4 <c e>4 r4 <c e>4 r4 r4 r4 <b d>4 r4 r4 r4 <b d>4 r4 <b d>4
             r4 <g cs>4 r4 <g cs>4 r4 <e a>4 r4 r4 a2 a2 d2. r4
             %\mark "K"
             r4 <b d>4 r4 <a d>4 r4 <b e>4 r4 <b e>4 r4 <a e'>4 r4 <gs b>4 r4 <e c'>4 r4 r4
             r4 <a d>4 r4 <b e>4 r4 <a d>4 r4 r4 b2 c2 b2 r2
             %\mark "L"
             r4 <c e>4 r4 <c e>4 r4 <c e>4 r4 r4 r4 <b d>4 r4 r4 r4 <b d>4 r4 r4
             r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 r4 d2 e2 ef2 d4 b
             %\mark "M"
             r4 <c e>4 r4 <c e>4 r4 <e, c'>4 r4 r4 r4 <b' d>4 r4 r4 r4 <b d>4 r4 r4
             r4 <c e>4 r4 <c e>4 r4 <a d>4 r4 r4 <g c>2. af4 g1~ g1
        }
bassesVoice = \relative f {
          \partial 4 r4
             %\mark "A"
             g4 r4 fs r4 e r4 d r4 c r4 b r4 a r4 b4 c
             d4 r4 e r4 fs r4 e4 d g2 fs f4 d4 b4 g4
             %\mark "B"
             c4 r4 b r4 a r4 b4 c b4 r4 c4 d e4 r4 b4 r4
             a4 r4 cs r4 a r4 b4 cs d2 e fs4 d e fs
             %\mark "C"
             g4 r4 fs r4 e r4 d r4 c r4 b r4 a r4 b4 c
             d4 r4 e r4 fs r4 e4 d g2 fs f4 d4 b4 g4
             %\mark "D"
             c4 r4 b r4 a r4 b4 c b4 r4 c4 d e4 r4 fs4 e
             a4 r4 g r4 fs r4 d4 r4 g2 fs f \tripletFeel 8 { g8[ g, a b] }
             %\mark "E"
             c4 r4 b r4 a r4 b4 c b4 r4 c4 d e4 r4 fs4 gs
             a4 r4 g! r4 fs r4 e4 d c2 b4 a
             <<
               { g1 R1 R1 }
               \new DrumStaff \with { \remove "Time_signature_engraver"
                                      alignAboveContext = #"main"
                                      fontSize = #-3
                                      \override StaffSymbol.staff-space = #(magstep -3)
                                      \override StaffSymbol.thickness = #(magstep -3)
                                      firstClef = ##t
               } \drummode { R1 r2 ss4 r4 ss4 r4 ss4 ss ss r2 r4 }
             >>
             \key c \major %\mark "F"
             g'4 r d r g4 r d r c4 r g r
             c8 r c4 b a g r d' r g r d r4 c8 r8 c4 b af
             %\mark "G"
             g8 r8 g'4 f e d r g, r d' r g, r c4 r g r
             c8 r8 c4 d e f r4 d r4 e r4 a, r4 d r4 g r4
             %\mark "H"
             c,8 r8 c4 b a g4 r d' r g4 r d r c4 r g r
             c8 r8 c4 b bf a r4 f r4 c' r4 a4 r4 d4 r4 g,4 r4 c8 r8 c4 b bf
             a4 r4 f4 r4 c'4 r4 a4 r4 d4 c b a g r4 b r4 c r4 cs r4 d4 ds e fs
             \key g \major %\mark "I"
             g4 r4 fs r4 e r4 d r4 c r4 b r4 a r4 b4 c
             d4 r4 e r4 fs r4 e4 d g2 fs \tripletFeel 8 { f4~ f16 d c  b~ b8 a4 g8 }
             %\mark "J"
             c4 r4 b4 r4 a4 r4 b4 c b4 r4 c4 d e4 r4 e4 r4
             e4 r4 e4 r4 a,4 r4 b4 cs d2 e2 fs4 d e fs
             %\mark "K"
             g4 r4 fs4 r4 e4 r4 d4 r4 c4 r4 b4 r4 a4 r4 b4 c
             d4 r4 e4 r4 fs4 r4 e4 d g2 fs \tripletFeel 8 { f4~ f16 d c  b~ b8 a4 g8 }
             %\mark "L"
             c4 r4 b4 r4 a4 r4 b4 c b4 r4 c4 d e4 r4 fs4 gs
             a4 r4 g4 r4 fs4 r4 e4 d g2 fs f \tripletFeel 8 { e8[ gs, a b] }
             %\mark "M"
             c4 r4 b4 r4 a4 r4 b4 c b4 r4 c4 d e4 r4 fs4 gs
             a4 r4 g!4 r4 fs4 r4 e4 d \tripletFeel 8 { c4. b8~ b8 bf8 } af4 g1~ g1
        }

pianoMusic =   \new PianoStaff
  <<
    \tag #'(notvideo school) \new ChordNames {
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
      \set Score.markFormatter = #format-mark-box-alphabet
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
    \tag #'(notvideo school) \new FiguredBass{
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
    \tag #'(notvideo school) \new FiguredBass{
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
  \removeWithTag \removeTags \keepWithTag \keepTags \pianoMusic
  \layout {}
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = ##f
  }
  \removeWithTag \removeTags \keepWithTag midi \pianoMusic
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