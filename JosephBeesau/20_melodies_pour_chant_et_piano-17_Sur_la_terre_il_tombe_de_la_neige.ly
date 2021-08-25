\version "2.22.0"
\language "english"
\include "../libs/smallcaps.ily"
\paper {
  top-margin = 1 \cm
  bottom-margin = 1 \cm
  left-margin = 1 \cm
  right-margin = 1 \cm

  %markup-system-spacing =
  %  #'((padding . 20)
  %     (basic-distance . 15)
  %     (minimum-distance . 20)
  %     (stretchability . 12))

  #(include-special-characters)
}
\header {
  dedication = \markup{ \sans \small \italic \concat {"À Madame du " \bold { P \smallCaps laix } }}
  title = \markup{\sans "Sur la terre il tombe de la neige"}
  subtitle = \markup{\sans "N°17"}
  composer = \markup { \sans \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \sans \column { "Poésie de" \bold \concat { A \smallCaps ndré " F" \smallCaps erdinand " H" \smallCaps érold }}}
  tagline = \markup { \sans \concat { "Extrait de " \italic "20 mélodies pour chant et piano" " de J" \smallCaps oseph " B" \smallCaps éesau " - É" \smallCaps ditions " M" \smallCaps aurice " S" \smallCaps énart ", 1920"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = \markup{\sans "Chant"}
    } {
      \clef treble
      \new Voice = "chant" {
        \relative c' {
          \key ef \major
          \time 4/4 \autoBeamOff \tupletUp
          \tempo "Lent"
          r1 r2 r4 r8 f16 g c,8. c16 c8 \tuplet 3/2{c16 c c} af'8 af r8 g16 g \break
          c8. c16 af8 gf16 af f8 f r16 b16 d c ef8 \tuplet 3/2 {d16 c b} d8 d \tuplet 3/2 4 {r8 c bf af g f} \break
          af8 g16 f g8 g r8 c d ef bf4 \tuplet 3/2{r8 af cf} g8 d16 ef f8. d16 \break
          c4 c r2 r1 \tuplet 3/2{r8^\markup{\italic "Un peu plus vite"} c'8 c } cf8 \tuplet 3/2{cf16\( cf ef\)} \tuplet 3/2{bf8\( bf cf\)} af16 af af c \pageBreak
          \tuplet 3/2{f,8 f af~} af16 d, d d f8 f r8 b \time 3/4 ef4\( ef8\) r8 d8. c16 \break
          ef2 \tempo "Plus lent" d8 c ef4^\>\( cf4.\)\! \tempo "Lent" cf8 d4^\>\( af\)\! r4 r4 a4 \tuplet 3/2{ g8 g g} \break
          f4. f8^\< f a\! e4\<\( fs\) d c c8\! r8 r4 \time 4/4 r8 af'!16 af af8. af16 g4\( g16\) g g g \break
          fs4. fs8 g4 \tempo "Lent" d8\fermata r8 r4 \tuplet 3/2{r8 c8 c} ef4 r16 ef ef ef c4. d16 ef f4. d16 ef c4 c4 r2 R1 \bar "|."
        }
      }
    }
    \new Lyrics \lyricsto "chant" {
      Sur la ter -- re~il tom -- be de la nei -- ge,
      Sur la ter -- re~il tom -- be de l'om -- bre,
      Où sont al -- lées les feuil -- les sè -- ches&nbsp;?
      Mê -- me les feuil -- les sè -- ches sont mor -- tes,
      Et main-- te -- nant de la nei -- ge~et de l'om -- bre tom -- bent
      On di -- rait de mau -- vais an -- ges qui heur -- tent
      Les mar -- teaux rouil -- lés con -- tre les por -- tes
      Des An -- ges qui nous tuent de souf -- fran -- ces très len -- tes
      Et à l'ho -- ri -- zon les tris -- tes nues _ traî -- nan -- tes
      Les mai -- sons sont clo -- ses com -- me des tom -- bes som -- bres
      Et par -- tout c'est de la nei -- ge~et de l'om -- bre qui tom -- bent.
    }
    \new PianoStaff \with {
      instrumentName = \markup{\sans "Piano"}
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass
        \relative f { \voiceOne
          \key ef \major
          \time 4/4
          <<{\voiceOne <g c>2 ef' <g, c> f' <g, c> ef' <g, c> f'}\\
            {\voiceTwo ef,4_\markup{\dynamic p \italic "lugubre"} c af' g ef c af' f ef c af' g ef c af' f}>>
          <<{ \clef treble <c' fs>4 <b fs'> s4 d8 c'}\\{ s2 c,2}>>
          <c f c'>4 <b( ef b'\(>4 <b) d b'\)>8 r8 <ef a ef'>4 <bf e bf'> <af ef' af>8 d <g, c g'>4 <f b f'>
          <c' ef g c>4_\markup{\italic Soutenu} c4 <af c ef> <b g'>
          <<{\voiceOne <g' c>2 <f af c f>4 <d f b d> <c c'> <b b'> <bf bf'> <af! af'!>8 <af af'>8}
            \\
            {\voiceTwo ef'4_\markup{\italic cresc.} c\< s2
             r16\!_\mf \oneVoice <ef g>16 \change Staff="left" g, \change Staff="right"<ef' g>16
             r16 <ef g>16 \change Staff="left" g, \change Staff="right"<ef' g>16
             r16 <ef g>16 \change Staff="left" g, \change Staff="right"<ef' g>16
             r16 \voiceTwo <d f>16 af <d f>16
            }>> \oneVoice
          <<{\voiceOne
             f4 <f f'> <f f'> <d' f>
             s4^\f g,4 <ef' g>4^\markup{"m.g."}
             s2.\f ef4_\markup{\italic rall}^\> cf2\! d!4 a2 \tempo "a Tempo" d4_\p a g
             a4 cs a e fs s4 <af,! c f>2.
            }\\
            {\voiceTwo
             r16 \oneVoice <c d>16 \change Staff="left" d, \change Staff="right" <c' d>16
             r16 \oneVoice <c' d>16 \change Staff="left" d, \change Staff="right" <c' d>16 s2 s2. s2  <ef fs>4^\markup{"m.g."}
             \voiceTwo f,?2. ef d <f f'> <c a'>2 <bf d g>4
            }>> \oneVoice
             \clef bass <ff af! df>2_\markup{\italic "Très lugubre"} <e g b>
             <d fs b>2\pp <d f b>2\fermata
          <<{<g c>2\p ef'2 <g, c>2 f'2
            }\\
            {\voiceTwo
             ef,4 c af' g ef4 c af' <f d'>
            }>> \oneVoice
          <c ef g c>2_\markup{\italic Dim} < c es f c'>2 <c ef g c>2\pp r2
        }
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass \set Score.connectArpeggios = ##f
        \relative f, {
          \key ef \major
          \time 4/4
          c4 af f b c4 af b g'4 c,4 af f b c4 af b g'4
          \acciaccatura a? a'4 \acciaccatura g, af'4 \acciaccatura ef, g'4 \acciaccatura f, f'4
          <d,! af''>4\arpeggio <g f'>4~ <g f'>8 r8 <c gf' c>4
          <<{df8 c s2 af8 g}\\{g4 <f cf'>4 <ef c'>4 d}>>
          <c g'>4 <af' ef' af> <f c' f> <<{\voiceOne \autoBeamOff \crossStaff f'4 \autoBeamOn}\\{\voiceTwo <g, d'>4}>>
          <c,, c'>4 <af' ef' af> <d, d'> <g g'> <c c'>1
          <<{\voiceOne \crossStaff f'4 \voiceTwo g8 d' s2
             \voiceOne \tupletDown \phrasingSlurDown \tuplet 6/4{ef,,16\( c' g' \change Staff="right" c^\markup{"m.d."} fs af\)} \change Staff="left"
             s4 r4 s2.
             <g,, cf'>2. g'4\( f g8 a\) f2 g4
            }\\{\voiceTwo
              <af,, af'>2 \phrasingSlurUp \tuplet 6/4 {g'16\( d' af' \change Staff="right" b^\markup{"m.g."} d af'\) \change Staff="left"} s4
              s2.
              \phrasingSlurUp \tuplet 6/4 {d,,,16\( c' fs \change Staff="right" c'^\markup{"m.d."} fs c'\) \change Staff="left"} \oneVoice s4 r4
              \voiceTwo af,!2 g4 <f, a'>2. bf2.
            }>> \oneVoice
            <d! a'>2. <a e'>2 <g d'>4 <f c'>2. <df af' df>2 <e b'>
            <<{\voiceOne <b fs' b>2 <b g' b>}
              \\{\voiceTwo s2. s8 g8}>> \oneVoice
            c4 af f b c af b g' c, c af af c, c r2
        }
      }
    >>
  >>
  \layout {
    %#(layout-set-staff-size 19)
    #(layout-set-staff-size 18)
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
}
