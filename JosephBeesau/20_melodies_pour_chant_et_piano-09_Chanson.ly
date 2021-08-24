\version "2.22.0"
\language "english"
\include "../libs/smallcaps.ily"
\paper {
  top-margin = 1 \cm
  bottom-margin = 1 \cm
  left-margin = 1 \cm
  right-margin = 1 \cm

  markup-system-spacing =
    #'((padding . 20)
       (basic-distance . 15)
       (minimum-distance . 20)
       (stretchability . 12))

  #(include-special-characters)
}
\header {
  dedication = \markup{ \sans \small \italic \concat {"À Mademoiselle " \bold { "Marthe" " S" \smallCaps "urcouf" } }}
  title = \markup{ \sans "Chanson"}
  subtitle = \markup{ \sans "N°9"}
  composer = \markup{ \sans \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup{ \sans \column { "Poésie de" \bold \concat { "M" \smallCaps aurice "  M" \smallCaps aeterlinck }}}
  tagline = \markup { \sans \concat { "Extrait de " \italic "20 mélodies pour chant et piano" " de J" \smallCaps oseph " B" \smallCaps éesau " - É" \smallCaps ditions " M" \smallCaps aurice " S" \smallCaps énart ", 1920"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = \markup{ \sans "Chant"}
    } {
      \clef treble
      \new Voice = "chant" {
        \relative c' {
          \key f \major
          \time 4/4 \autoBeamOff
          \tempo "Lent" 4=54 R1 r2 r4 e8. e16 a8. a16 c8. c16 a4~ a8 r16 e16 \break
          \tuplet 3/2 {e8 e e} a4~ a8 r8 a8.^\< a16 e'8. e16 d8. d16 c8\! c^\> \tuplet 3/2 {a8 f g} a2 r4\! a8. a16 \break
          c8. c16 b8. b16 a8. e16 \tuplet 3/2 { a8 bf a} g2 r4 e8. e16 e8. e16 e8. g16 d8. d16 \tuplet 3/2 {d8 bf c} \pageBreak
          d2 r2 R1 \tempo "Plus lent" r4 fs8. fs16 g8.^> g16 fs8. fs16 g8. g16 \tuplet 3/2 {bf8 gf bf} af2\break
          \tuplet 3/2 {r8 e e} e8. e16 f8.^> f16 e4~ \time 2/4 e8. c16 \tuplet 3/2 {b8 b b} \time 4/4 \tempo "a Tempo" a2 r2 r2 r4 e'8.^\p e16 \break
          a8. a16 c8. c16 a8. f16 \tuplet 3/2 {a8 f a} g2 r4 r8 g8 \tuplet 3/2 {bf8 bf bf} df8. df16 c8. c16 \tuplet 3/2 {bf8 f g} \break
          a2 r2 R1 R1 R1 \bar "|."
        }
      }
    }
    \new Lyrics \lyricsto "chant" {
      J'ai cher -- ché tren -- te~ans mes sœurs,
      où s'est- il ca -- ché&nbsp;?
      J'ai mar -- ché tren -- te~ans mes sœurs
      sans m'en ap -- pro -- cher…
      J'ai mar -- ché tren -- te~ans mes sœurs
      et mes pieds sont làs.
      Il é -- tai par -- tout mes sœurs, et n'e -- xis -- te pas…
      L'heu -- re~est tris -- te~en fin mes sœurs
      Ô -- tez vos san -- dales
      Le soir meurt aus -- si mes sœurs,
      Et mon â -- me~a mal…
      Vous a -- vez sei -- ze~ans mes sœurs al --lez loin d'i -- ci,
      Pre -- nez mon bour -- don mes sœurs
      et cher -- chez aus -- si…
    }
    \new PianoStaff \with {
      instrumentName = \markup{ \sans "Piano"}
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble
        \relative c' { \voiceOne
          \key f \major
          \time 4/4
          <a e'>4_\markup{\dynamic p \italic lié} <d a'> <e c'> <d a'> <a e'> <d a'> <e bf'> <d a'> <a e'> <d a'> <e bf'> <d a'>
          <a e'> <d a'> <e bf'> <d a'> <a e'> <d a'> <e bf'> <d a'> <c a'> <e b'> <a e'> <e b'>
          \tempo "En augmentant" <c a'> <e b'> <a e'> <e b'> <e b'> <g e'> <c g'> <g e'> <e b'> <g e'> <bf,! g'> <d bf'>
          <g, d'> <c g'> <d bf'> <c g'> <g d'> <c g'> <d bf'> <c g'> fs2 <d g>4 <d fs!>4 g4 <ef bf'>8 <bf gf'> <ff' af>2
          e4^\markup{\italic rall.} e <f, a f'>4 <gs e'>4~ <gs e'>4 <gs d'>4^\markup{\italic rit.} <a e'>4 <d a'> <e c'> <d a'> <a e'>4 <d a'> <e c'> <d a'>
          <a e'>4\p <d a'> <e c'> <d a'> <bf g'> <df bf'> <f c'> <df bf'> <bf g'> <df bf'> <bf g'>_\markup{\italic rit.} <df bf'>^\markup{\italic "rit. et dim."}
          \tempo "a Tempo" <a e'>4\pp <d a'> <e c'> <d a'> <a e'>4 <d a'> <e c'> <d a'> <a e'>4_\markup{\italic "morendo et rit."} <d a'> <a' e'> <d a'> <e, a e'>1\pp\arpeggio\fermata
        }
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass \set Score.connectArpeggios = ##f
        \relative f {
          \key f \major
          \time 4/4
          <<
            {\voiceOne c4 f a f c4 f a f  c4 f a f
              c4 f a f  c4 f a f e a c a e a c a g c e c g b d, g
              bf,4 ef g ef bf ef g ef \crossStaff {<fs b>2 <g b>4 <fs b> <g bf?> bf4 af2 <e gs>4 <e a> <f a> <e gs>4~ <e gs>4 <e gs>4}
              c4 f a f c4 f a f c4 f a f df g bf g df g df g
              c,4 f a f c4 f a f e f c' a <f, c' a'>1\arpeggio
            }
            \new Voice {\voiceTwo
              f1\sustainOn f1 f1 f1 f1 a1 a1 c1 c2 a
              ef1 ef \acciaccatura b8 <b' d>2 <b f'>4 <a d> <g ef'> <gf df'>8 <gf df'> <<{\voiceThree c2 s2. \phrasingSlurDown bf4\( b2\)}\\{\voiceTwo ff4 ef <d b'> <c a'>4 <ds c'> e8 ds c d e4}>>
              f1 f1 f1 f1 f2 f f1 f1 f1 r2 f,2\fermata
            }
          >>
        }
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 19)
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
}
