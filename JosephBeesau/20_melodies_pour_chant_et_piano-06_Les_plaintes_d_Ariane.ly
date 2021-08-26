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
  dedication = \markup{ \sans \small \italic \concat {"À mon ami le Marquis de " \bold { "H" \smallCaps eere } }}
  title = \markup{ \sans "Les plaintes d'Ariane"}
  subtitle = \markup{ \sans "N°6"}
  composer = \markup { \sans \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \sans \column { "Poésie de" \bold \concat { "Madame la Comtesse M" \smallCaps athieu " de N" \smallCaps oailles }}}
  tagline = \markup { \sans \concat { "Extrait de " \italic "20 mélodies pour chant et piano" " de J" \smallCaps oseph " B" \smallCaps éesau " - É" \smallCaps ditions " M" \smallCaps aurice " S" \smallCaps énart ", 1920"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = \markup{ \sans "Chant"}
    } {
      \clef treble
      \new Voice = "chant" {
        \relative c'' {
          \key c \minor
          \time 9/8 \autoBeamOff
          r2. r4. r2. r4. \break
          r4^\mf g8^\markup{\italic "Avec tristesse"} g c bf bf f af g4\( g8\) r8 ef d af'4.\break
          r4 g8 c ef d b4 c8 g4.\( g8\) r8 r8 r4 af8 \time 6/8 \pageBreak
          c4^- g8 f\( d\) f \time 9/8 g2. r4 r8 r4 r8 r4 r8 r4 f8 \break
          d'4^\f^\markup{\italic Marcato} d8 ef4. d8 c8. g'16 \time 6/8 c,4\( c8\) r8 bf^\mf af \time 9/8 g4 g8^\f bf bf af g4\( ef8\) \time 12/8 \break
          c'4^-\( c8\) r8 d8 g, ef'4. ef8 d c \time 9/8 ef2. s4. \break
          r4 r8 r4 r8 r4 fs,8 \time 12/8 g4.^\markup{\italic "Plus calme"}\( g8\) af16\( g\) f ef bf'4\( bf8\) r8 af bf \pageBreak
          c4.~ c8 d ef bf4. af8 bf c d^\markup{\italic Expressif}\( a\) d f?4.~ f8 c d ef4^\markup{\italic Cédez} b8 \time 9/8 \break
          g4. r4 r8 r4 r8 R1*9/8 \time 12/8 \tempo "Agitato" d'4.^\f r8 af af f'4\( f8\) r8 d8 b \break
          ef4\( ef8\) r4 r8 r4 r8 d4^- c8^- ef4.^- r4 r8 r4 r8 r8 b8 c\break
          d4^-\( d8\) r8 c c d4^-\( d8\) r8  af af f'2. r8 r8 af,8 cf4^\markup{\italic Rit} ef8 \bar "||" \time 6/8 \pageBreak
          cf4. r4 r8 \time 9/8 c4^-^\f g16 g c4\( c8\) ef,8 f af \break
          g4\( g8\) r8 ef8 d8 fs4. r8 g8 af8 af4. g8 d f \break
          g8 g g c4 g8 f ef f g4.~ g8 r8 r8 r4 r8 \break
          r4 r8 r4 r8 r8 g8^\markup{\italic Rit} d'8 \bar "||" \key c \major e4\( e8\) \tuplet 4/6 {r16 d e fs}\tuplet 4/6 { e16 d c d} \pageBreak
          b8 a b g4\( g8\) r8 r8 a8 \time 12/8 b4\( b8\) r8 r8 e8 c4\( c8\) r8 r8 a8 d4. r8 r8 d8^\p a4\( a8\) r8 r8 a8 \time 6/8 \break
          e'4.^\>~ e8\! r8 r8 \time 9/8 r4 r8 \tupletUp \tuplet 4/6 4. {r16^\f f,16 g a b a b d} e4\( e8\) r4 r8 d4 c8 \time 6/8 \break
          e4. d4 c8 <f a>4^-\( <f a>8\) b,8 b b d4\( d8\) r8 af bf \bar "||" \time 9/8 \key c \minor c2. r4 r8 \break
        }
      }
    }
    \new Lyrics \lyricsto "chant" {
      Le vent qui fait tom -- ber les pru -- nes,
      Les coings verts,
      qui fait va -- cil -- ler la lu -- ne,
      Le vent qui mê -- ne la mer,
      Le vent qui rompt et qui sac -- ca -- ge,
      Le vent froid,
      Qu'il vien -- ne~et qu'il fas -- se ra -- ge
      sur mon cœur en dé -- sar -- roi&nbsp;!
      Qu'il vien -- ne, com -- me dans les feuil -- les,
      Le vent clair __
      Sur mon cœur et qu'il le cueil -- le
      Mon cœur et son suc a -- mer.
      Ah&nbsp;! qu'el -- le vien -- ne la tem -- pê -- te,
      Bond par bond,
      Qu'el -- le pren -- ne dans ma tê -- te
      Ma dou -- leur qui tour -- ne~en rond
      Ah&nbsp;! qu'el -- le vien -- ne et qu'el -- le~em -- por -- te,
      Se sau -- vant,
      Mon cœur lourd com -- me~u -- ne por -- te
      Qui s'ou -- vre~et bat dans le vent. __
      Qu'el -- le~em -- por -- te et qu'el -- le~en jet -- te
      Les mor -- ceaux
      Vers la lu -- ne, à l'ar -- bre, aux bê -- tes,
      Dans l'air, dans l'om -- bre, dans l'eau, __
      Pour que plus rien ne m'en re -- vien -- ne
      À ja -- mais,
      De mon â -- me et de la sien -- ne,
      Que j'ai -- mais&nbsp;!
    }
    \new PianoStaff \with {
      instrumentName = \markup{ \sans "Piano"}
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble
        \relative c'' { \voiceOne
          \key c \minor
          \time 9/8 \oneVoice
          r8 g16 f ef f g8 <c, c'> <bf bf'>8~ <bf bf'>8 <af af'>16 <g g'> <ef ef'> <f f'>
          r8 g'16 f ef f g8 <ef ef'> <d d'>8~ <d d'>8 <c c'>16 <b b'> <c c'> <d d'>
          r8 g16 f ef f g8 <c, c'> <bf bf'>8~ <bf bf'>8 <af af'>16 <g g'> <ef ef'> <f f'>
          r8 g'16 f ef f g8 <ef ef'> <d d'>8~ <d d'>8 <c c'>16 <b b'> <c c'> <d d'>
          \voiceOne <d' af'>8 g16 f ef d f ef d c b af g8 f16 ef d c
          r8 \oneVoice g'16 f ef f g8 <c, c'> <bf bf'>8~ <bf bf'>8 af'16 g ef f
          <c ef g>8 g <c ef g> <c d f>8 af <c d f>
          <<{\voiceOne r8 \oneVoice \autoBeamOff g'16[ f ef f] g8[ <ef ef'> <d d'>8]~ <d d'>8\cresc[ <c c'>16 <d d'> <ef ef'> <f f'>]
             <g g'>8[ <bf bf'> <af af'>]~ <af af'>[ <bf bf'>16 <c c'> <d d'> <ef ef'>] <f f'>4.\!
            }\\{\voiceTwo \autoBeamOff g,,4. <c ef> f \voiceOne c' d s}>>\oneVoice
          <d, g d'>4.\f <ef g ef'> <d g d'>
          <<{\voiceOne <g c>4 f8 bf4_\markup{\italic Dim.} af8 g4 c8 bf4^>\f af8 s4.}
            \\{\voiceTwo c,4. <af ef'> <g ef'> <af ef'> <g ef' g>}>>\oneVoice
          <c fs c'>4\< <a ef' fs a>8 <d g d'>4. <ef g ef'> <c g' c>\!
          <<{\voiceOne r8 \ottava #1 ef''16[ d c d] ef8[ <f, f'> <fs fs'>]~ <fs fs'>[ <f f'>16 <ef ef'> <f f'> <fs fs'>]
             <g g'>8 <af af'> <a a'>~ <a a'> <bf bf'>16 <b b'>_\markup{\italic Dim} <c c'> <cs cs'> <d d'>8 <ef ef'>_\markup{\italic Rall} <fs fs'> <g g'> \ottava #0
            }
            \\{\voiceTwo <c,,, ef fs a>2\f s4 s4. s4. s4. s4. r8_\markup{\dynamic pp \italic "Calme et lié"} \voiceOne \phrasingSlurDown bf16\( ef f g\) bf16\( g f ef bf8\) \oneVoice r8 bf16\( ef f g bf16 g f ef bf8\) }>>\oneVoice
          <<{\voiceOne c'4. s bf' \ottava #1 \phrasingSlurDown af8\( bf c\)\oneVoice <fs, a d fs>8\(\cresc a d\) <f, af c f>4.\arpeggio <f' a c f>^- <g, b ef g>4\arpeggio <f f'>8\! \ottava #0 }
            \\{\voiceTwo \phrasingSlurUp c,8\( e g\) <g c ef! g>4. bf8\( ef g\) <ef ef'>4.}>>\oneVoice
          \tempo "a Tempo" r8\f g,16 f ef f g8 <c, c'> <bf bf'>8~ <bf bf'>8 <af af'>16 <g g'> <ef ef'> <f f'>
          r8 g'16\cresc[ f ef f] g8[ <ef ef'> <d d'>8]~ <d d'>8[ <c c'>16 <d d'> <ef ef'> <f f'>\!]
          <<{\voiceOne f'2. f4.~ f4 b,8 ef1.}
            \\{\voiceTwo \repeat tremolo 12 {f,32 af} \repeat tremolo 12 {f32 af}
                \repeat tremolo 12 {ef32 gf} \repeat tremolo 12 {ef32 gf}
              }>>\oneVoice
          <c, ef a c>4\f <bf d g bf>8 <c ef a c>4 <bf d g bf>8 <af d f af>4 <g c ef g>8 <f b f'>4 <g c ef>8
          <<{\voiceOne r8 f'16\p ef d ef f8 ef f~ f f16 ef d ef f8 c' f, \clef bass \voiceTwo cf8 cf16_\markup{\italic "Dim               et               retenu"} bf af bf cf8 ef cf8^~ cf ef cf8^~ cf8 ef cf8^~ cf8_\markup{\italic "Dim               Rit"} ef cf8~ cf8 ef cf}
            \\{\voiceTwo <af c d>2. <f af c d>2. \voiceOne <f ef' f>2. s2. <f ef' f>2. }>>\oneVoice
          \tempo "a Tempo" \clef treble r8^\f g'16 f ef f g8 <c, c'> <bf bf'>~ <bf bf'>8 <af af'>16 <g g'> <ef ef'> <f f'>
          r8 g'16 f ef f g8 <ef ef'> <d d'>8~ <d d'>8 <c c'>16 <b b'> <c c'> <d d'>
          <<{\voiceOne af''8 g16 f ef d \oneVoice <c f> ef d c b af g8 f16 ef d c <d f>8\< <c ef> <d f> <d f>8 <c ef> <d f> <d f>8 <c ef>\! <d f>}
            \\{\voiceTwo <af d>8 g4 s4. \hideNotes g'16\(\unHideNotes s16 s4 g2.\) f,4. }>>\oneVoice
          <<{\voiceOne <g d' g>8\(_\markup{\italic "Très lié"} <g d'> c <c g' c> g' f <f f'> <g g'> <af af'>\)
             \ottava #1  <b' d>4. <b d>4. <b d>4. \ottava #0 \key c \major r8 e,16 d c d e8 a e8~ e8 b' e,
            }
            \\{\voiceTwo s8 g,4 s8 <c, c'>4 c'4 s8 \oneVoice <af' af'>8 <g g'> <f f'> <af af'>8\cresc <g g'> <f f'> <af af'>8\! <g g'>_\markup{\italic Rit.} <f f'> \showStaffSwitch <gs, gs,>4.\f \change Staff="left" \clef treble <a, a'> <b b'> \hideStaffSwitch \change Staff="right"}>> \oneVoice
          <<{\voiceOne e8 a16 fs e fs g8 d g a e a b4.~ b8 e e, a4.\arpeggio~ a8 c c, fs4.~ fs8 e fs fs!2.\sustainOn a8 b c d_\< e g\!}
            \\{\voiceTwo b,,4. \change Staff="left" \voiceOne bf4. a4. \change Staff="right"\voiceTwo \hideStaffSwitch <c e>2. <a c>2.\arpeggio <fs c'> <c' ef>8 d\pp ef c d ef <c e!>2.}>>\oneVoice
           \set Score.connectArpeggios = ##f
           <<{\voiceOne \ottava #1 r8\sustainOn\f e''16 d c d e8 r8 r8 r4 r8 r4 r8 r8 e16 d c d e8 a a, \oneVoice <d e g b>2.\arpeggio \ottava #0 }
            \\{\voiceTwo \ottava #1 <c, d f a>2.\arpeggio~ <c d f a>4. <e f a c>2.\arpeggio~_\markup {\italic Sempre \dynamic f} <e f a c>4. s2.}>>\oneVoice
           <c f a>4.\f\arpeggio <b e g>4.\arpeggio
           <<{\voiceOne <c d f>2. \key c \minor \tempo "a Tempo"
              r8 g16_\markup{\italic Expressif} f ef f g8 <c, c'> <bf bf'>8~ <bf bf'>8 <af af'>16 <g g'> <ef ef'> <f f'>
              r8 g'16 f ef f g8 <ef ef'> <d d'>8~ <d d'>8 <c c'>16 <b b'> <c c'> <d d'>
             }
             \\{\voiceTwo a'4. af4.^\markup{\italic Rit}_\markup{\italic Rit}}>>\oneVoice
           \time 6/8
           <<{<ef c' ef>8_\markup{\italic "Rall.               et               dim."} <f d' f> <g ef' g>~ <g ef' g>4^- <f d' f>8
              <ef c' ef>8 <f d' f> <g ef' g>~ <g ef' g>4^- <f d' f>8\> <ef c' ef>2.\p~ <ef c' ef>4.\! r4 r8
             }
             \\{\voiceTwo s4. b'4. s4. b4.}>>\oneVoice
           \bar "|."
        }
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass \set Score.connectArpeggios = ##f
        \relative f {
          \key c \minor
          \time 9/8
          <<{\voiceOne
             r4 r8 <g c ef>8 r8 r8 <af c d>8 r8 r8
             r4 r8 <g c ef>8 r8 r8 <af c d fs>8 r8 r8
             r4 r8 <g c ef>8 r8 r8 <af c d>8 r8 r8
             r4 r8 <g c ef>8 r8 r8 <af c d fs>8 r8 r8
             \change Staff="right" \voiceTwo af'8 g4 \change Staff="left" \autoBeamOn <<{\voiceOne g8 f4~ <g, b f'>4.}\\{\voiceFour <g c>4. }>> \oneVoice
             \change Staff="right" \voiceTwo g4. \change Staff="left" \voiceOne <g c ef>8 r8 r8 <af c d>8 r8 r8
            } \\{\voiceTwo
               <c,, g' c>2.\sustainOn~ <c g' c>4. <c g' c>2.~ <c g' c>4.
               <c g' c>2.~ <c g' c>4. <c g' c>2.~ <c g' c>4.
               <c g'>2.~ <c g'>4. <c g' c>2.~ <c g' c>4.
            }>> \oneVoice
            <c c'>4.^>\arpeggio <f c'> <c g' c> <bf' bf'> <af af'> <ef ef'>4 <f f'>8 <d' af' c>2.
            b,8 b' b, c c' c, bf bf' bf, af af' af, <cf cf'>4. c8 c' c, <cf cf'>4. c8 c' c,
            r8 <ef ef'>16 <d d'> <df df'> <c c'> <bf bf'>4. <c c'> <ef, ef'>
            <<{\voiceOne r4 r8 \oneVoice <fs'' a c ef>4. <a c ef fs> <bf d g> <c ef a>8 <bf d g>4 <a c fs>4. }
              \\{\voiceTwo \slurUp <d,,,\( d'(>2. s4. <d\) d')>4. s4. s}>>\oneVoice
            ef'16\( bf' ef g bf c\) ef16\( c bf g ef bf\) ef,16\( bf' ef g bf df ef16 df bf g ef bf\)
            \set Score.connectArpeggios = ##t
            <<{\voiceOne c,16 g' c d e g a8\arpeggio b c bf,16\( g' bf c ef g\)
               \clef treble <bf, c ef af>4.\arpeggio <a d fs a>4.\arpeggio \set Score.connectArpeggios = ##f <af c d f>\arpeggio <af' c d f>4.^-\arpeggio
               \clef bass g4 f8}
              \\{\voiceTwo s4. <f,, c' ef>4.\arpeggio s4. s4. s4. s4. s4. <g' b ef>4.}>>\oneVoice
            \set Score.connectArpeggios = ##t
            <<{\voiceOne s4. <g c ef>8 r8 r8 <af c d>8 r8 r8 s4. <g c ef>8 r8 r8 <af c d f>8 r8 r8
               \repeat tremolo 12 {af!32\arpeggio d} \repeat tremolo 12 {af32 d}
               r8 \voiceTwo c16_\markup{\italic Marqué} b a b \voiceTwo c8 a'^- c,^- d4^- c16 bf a4.
              }
              \\{\voiceTwo <c,, g' c>4. s4. s4. <c g' c>2. s4. <b b'>1.\arpeggio<a a'>1.}>>\oneVoice
            <gf gf'>4 <g g'>8 <gf gf'>4 <g g'>8 <b b'>4 <c c'>8 <d d'>4 <ef ef'>8
            \repeat tremolo 12 {f32 f'32} \repeat tremolo 12 {ef,32 ef'32}
            \repeat tremolo 6 {df,32 df'32} \repeat tremolo 6 {cf,32 cf'32} \repeat tremolo 6 {bf,32 bf'32} \repeat tremolo 6 {af,32 af'32}
            \repeat tremolo 12 {g,32 g'32}
          <<{\voiceOne s4. <g' c ef>8 r8 r8 <af c d>8 r8 r8 s4. <g c ef>8 r8 r8 <af c d f>8 r8 r8
            <<{\voiceOne s4. g'8 f4~ <g, b f'>4.}\\{\voiceFour s4. <g c>4. }>> \oneVoice
            }
            \\{\voiceTwo <c,, g' c>2.~ <c g' c>4. <c g' c>2.~ <c g' c>4. <c g' c>2.~ <c g' c>4. }>>\oneVoice
          <c c'>4.\( <bf bf'> <af af'>\)
          <<{\voiceOne s4. s4. s4. d''8 ef f\( \clef treble f\) g af~ af bf b \clef bass}
            \\{\voiceTwo <ef,,,, ef'>8\( <f f'> <g g'> <af af'> <bf bf'> <c c'> <d d'> <ef ef'> <f f'> <g g'>2.\)\arpeggio }>>\oneVoice
          \key c \major
          <<{\voiceTwo s4. e''2.}
            \\{\voiceTwo <c,, g'! c>2. s4. }>>\oneVoice
          \clef bass
          \oneVoice <c g'>2.~ <c g'>4. <a' e' g>2. <f c' ef> <d a' d> <gs ds' a'>
          <<{\voiceOne a'8\arpeggio b c \hideStaffSwitch \change Staff="right" \voiceTwo d8 e g}
            \\{\voiceTwo <g,, e'>2.\arpeggio}>>\oneVoice
          \clef treble <g' c d f a>2.\arpeggio~ <g c d f a>4. <g e' f c'>2.\arpeggio~  <g e' f c'>4.
           <g d' e f g b>2.\arpeggio
           \clef bass
           <<{\voiceFour <c f a>4.\arpeggio <b e g>4.\arpeggio
              <<{\voiceOne <c d f>2.} \\{\voiceTwo a4. af4.}>>\voiceOne
             r4 r8 <g c ef>8 r8 r8 <af c d>8 r8 r8
             r4 r8 <g c ef>8 r8 r8 <af c d fs>8 r8 r8

             }
             \\{\voiceFour g,2.\sustainOn~ g2. \key c \minor
                \voiceTwo <c, g' c>2.\sustainOn~ <c g' c>4. <c g' c>2.~ <c g' c>4.
               }>>\oneVoice
           \set Score.connectArpeggios = ##T
           <<{\voiceOne r4 r8 b''4^> r8 c4\arpeggio r8 b4^> r8 g2.\arpeggio~ g4. r4 r8}
             \\{\voiceTwo <c,, g'>2. <c g'>2.\arpeggio <c g'>2.\arpeggio~ <c g'>4. r4 r8}>>\oneVoice
        }
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 18)
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
