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
  dedication = \markup{ \sans \small \italic \concat {"À Mademoiselle " \bold { "J" \smallCaps "eanne B" \smallCaps "ézier" } }}
  title = \markup{ \sans "Le Ciel en nuit s'est déplié"}
  subtitle = \markup{ \sans "N°5"}
  composer = \markup { \sans \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \sans \column { "Poésie d'" \bold \concat { É \smallCaps mile "  V" \smallCaps erhaeren }}}
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
          \key gf \major
          \time 4/4 \autoBeamOff \tupletUp
          \tempo \markup { \bold Lent. }
          R1 R1 r8^\markup{\italic "Dolce avec calme"} df8 bf gf f ef bf' df \break
          bf2 r4 bf8 df f4 bf, r8 a8 a a df! af! f ef df4 f8 bf af2~ af8 r8 r4 \break
          r8 cf8 cf ef af,4. cf8 ef2 r4 r4 r8 df8 c bff af4 gf8 bff \pageBreak
          af4 gf8 af bf4 r8 df8~ df8 r8 c8 bf c d c d a4. g8 c4 r4 \break
          r4 \phrasingSlurDown\tuplet 3/2 { r8^\mf\( af!^\markup{\italic Rit.} f'\)} f4 f,8 f \tempo "a Tempo" af8^\p\( af\) af cf af\( gf\) af ef' af,4 r8 af8 ff4\( ff8\) df \break
          cf4 gf' cf, r8 cf8 cf2 r2\fermata r8^\markup{\italic "Sempre dolce"} ef8 f gf bf4 \tuplet 3/2 {bf8 bf df} \break
          c4\( f,8\) r8 r8 bf8 c df ef4 \tuplet 3/2 {df8 c bf} \phrasingSlurUp f'8\( bf,\) \tuplet 3/2 {c8 bf c} \bar "||" \time 2/4 f4 \tuplet 3/2 {ef8^\markup{\italic Calme} c bf} \bar "||" \time 4/4 \pageBreak
          a4( a8) r8 r8 bf8 c df c c f, f bf4 \tuplet 3/2 {bf8 c df} ef4\( bf\) r8 bf8 df4~ df8 cs8 a\( a\) \tuplet 3/2 {gs8^\< gs gs} g g cs8.\! f,16 d'8\( d\) r8 f,8 f f \break
          \tempo "Très lent" bf4 \tuplet 3/2 {gf8 gf gf} f4^\markup{\italic rit.} \tuplet 3/2{bf8 bf bf} bf\( bf\) ef( bf) bf8 r8 r8 c8 c af bf2. \break
          r8 af8^\markup{\italic "dolcissimo et rit."} af ef f4. af8 \tempo "a Tempo" bf2\( bf4\) r4 R1 R1 R1 \bar "|."
        }
      }
    }
    \new Lyrics \lyricsto "chant" {
      Le ciel en nuit, s'est dé -- pli -- é
      Et la lu -- ne sem -- ble veil -- ler
      sur le si -- len -- ce~en -- dor -- mi. __
      Tout est si pur et clair,
      Tout est si pur et si pâ -- le dans l'air
      Et sur les lacs du pa -- y -- sa -- ge~a -- mi,
      Qu'elle an -- gois -- se, la gout -- te d'eau
      Qui tom -- be d'un ro -- seau
      Et tin -- te, et puis se tait dans l'eau.
      Mais j'ai tes mains en -- tre les mien -- nes
      Et tes yeux sûrs&nbsp;; qui me re -- tien -- nent,
      De leurs fer -- veurs, si dou -- ce -- ment&nbsp;; __
      Et je te sens si bien en paix de toutes cho -- ses
      Que rien, __ pas mê -- me~un fu -- gi -- tif soup -- çon de crain -- te,
      Ne trou -- ble -- ra, fût-ce un mo -- ment,
      La con -- fi -- an -- ce sain -- te
      Qui dort en nous com -- me un en -- fant re -- po -- se.
    }
    \new PianoStaff \with {
      instrumentName = \markup{ \sans "Piano" }
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble
        \relative c'' {
          \key gf \major
          \time 4/4
          \tempo \markup { \bold Lent. }
          r8_\markup{\dynamic p \italic "Ben legato"} <gf df'>\( <bf ef> <df gf>\) <bf ef>8\( <gf df'> <bf ef>\) r8 r8 <cf, ef af> df' ef, <ef af> <f bf> af bf r8 <gf df'>\( <bf ef> <df gf>\) <bf ef>\( <gf df'> <bf ef>\) r8
           r8 <gf df'>\( <bf ef> <df gf>\) <bf ef>\( <gf df'> <bf ef> <gf df'>\) r8 <f df'>\( <bf ef> <df f>\) r8 <f, df'>\( <a ef'> <f df'>\) r8 <df af'!>\( <f bf> <df af'>\) r8 <df af'>\( <f bf> <df af'>\) r8_\markup{\italic più \dynamic p} <af' ef' af>4\( <df gf> <af ef'>8 <df gf> <ef af>\)
           r8 <af, ef'>8\( <df gf> <ef af>\) r8 <af, ef'>8\( <df gf> <ef af>\) r8 <a, ef'>8\( <c gf'> <a ef'>\) r8 <a ef'>8\( <c gf'> <a ef'>\) r8_\markup{\italic più \dynamic p} <bff ff'>8\( <df bff'> <bff ff'>\) r8_\markup{\italic Tranquillo} <af ef'>8\( <c af'> <af ef'>\)
           r8 <af d>8\( <cf af'> <af d>\) r8 <bf gf'>8\( <df bf'> <bf gf'>\) r8 <e, df'>8\( <bf' gf'> <e, df'>\) r8 <f c'>8\( <a f'> <f c'>\) r8 <d a'>8 <e c'> <d a'> <e c'> <d a'><e c'> <d a'>
           <af! df! f af!>1\mf r8\p <af' ef'>8\( <df gf> <ef af>\sustainOn \) r8 ef16\sustainOn\( af, gf' df af' ef\) r8 ef16\sustainOn af, <df gf>4\arpeggio^- r8 ef16\sustainOn af, <df gf>4\arpeggio^-~
           <df gf>4 <df, gf>2 <df gf>4~ <df gf>1\fermata\sustainOff
           r8\p <c gf'>8 r8 <ef bf'>8 r8 <gf df'>8\( <bf ef> <df f>\)
           <<{c4^\markup{\italic "en dehors"} bf8 f' bf,2}\\{c8 f,~ f4_\markup{\italic Calme} r8 df\( ef df\)}>>
           <<\mergeDifferentlyHeadedOn {gf8 df ef df f4. <bf, ef>8}\\{gf'2 r8 bf, c bf8}>>
           <<\mergeDifferentlyHeadedOn {f'4 ef}\\{r8 bf8[ c bf]}>>
           a''4_\markup{\italic "Doux et expressif"} g8 a f ef df! bf! a4 g8 a f4 ef <<{<ef ef'>4\( <df df'>8 <ef ef'> \phrasingSlurDown <df\( df'(>2\) <cs\) cs')>4\p\) a'4 gs^\markup{\italic  "un peu pressé"} g cs\> b\!}\\{s2 r4 ef, r8 e8 a e gs[ e] g[ e] <d fs>2}>> \oneVoice r4 r4
           <d f>4 <cs e> <d f>2 r8 <gf df'!>8\( <bf ef> <df gf>\) <bf ef>8\( <gf df'> <bf ef> <gf c>\) <<{<af c>4 <gf bf>2.}\\{df1}>>\oneVoice
           <ef af>1\pp r8 <gf df'>8 <bf ef> <df gf> <bf ef>2 r8_\markup{\italic Dim.} \ottava #1 <gf' df'> <bf ef> <df gf> <bf ef>4 <gf df'> <bf ef>2\pp <df gf> <ef, bf' ef>2\arpeggio \ottava #0 r2
        }
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass \set Score.connectArpeggios = ##f
        \relative f, {
          \key gf \major
          \time 4/4
          \tempo \markup { \bold Lent. }
          gf8\( df' gf bf\) df8\( ef df bf\) gf,8\(df' f af\) cf8\( df ef f\) gf,,8\( df' gf bf\) df8\( ef df bf\)
          gf,8\( df' gf bf\) df8\( ef df bf\) bf,8\( f' bf df\) a,8\( f' df' f,\) <<\mergeDifferentlyHeadedOn {af,8\( f' af f\) bf,8\( f' af f\)}\\{af,4 s bf4 s}>> ff8\( cf' ff af\) cf8\( ff cf ff\)
          <<\mergeDifferentlyHeadedOn {af,8 cf ff cf gf8 cf ff cf}\\{af2^- gf2^-}>>
          <<\mergeDifferentlyHeadedOn {f8 cf' ef cf f,8 cf' ef cf}\\{f,2^- f2^-}>>
          <<\mergeDifferentlyHeadedOn {ff8 df' ff df ef,8 c' ef c}\\{ff,2^- ef2}>>
          <<\mergeDifferentlyHeadedOn {d8 cf' d c df,8 bf' df bf}\\{d,2 df2}>>
          <<\mergeDifferentlyHeadedOn {c8 bf' c bf c,8 a' c a}\\{c,2 c2}>>
          <<\mergeDifferentlyHeadedOn {c8 bf' c bf c8 bf c bf}\\{c,2 s}>>
          <f,! f,!>1 ff8 cf' af' cf, cf' ff_\markup{\italic "Très délicatement"} cf ff cf ff cf^.^- ff cf4^.^- cf4^.^-~
          cf2 cf2^.^-~ cf1 af,8\( ef' f gf bf4 df8 bf\) bf8 c df af <<{\voiceTwo gf2}\\{\voiceOne r8 bf8\( c bf\)}>>
          <<\mergeDifferentlyHeadedOn {ef,8 bf' c bf}\\{ef,2}>> af,8 gf' af gf af,8 ef' gf ef
          f,8 c' a' c, gf c bf' c, f, c' a' c, gf? c bf' c, ef, bf' gf' bf, ef, bf' g' bf,
          <<{a8 e' a e gs[ e] g[ e] cs'4 b4}\\{a,1 <a d fs>2}>> r4 r4
          <<{f'!4 gf! f2}\\{bf,1}>> gf!8 df'! gf! bf df ef df ef gf,,!8\( df'! gf! bf df ef df ef\)
          <cf,! gf'>1 gf8\( df' gf bf\) \clef treble df8\( ef gf af\) bf1~ bf1 \clef bass <gf,, df' bf'>2\arpeggio r2
        }
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 19)
  }
}
