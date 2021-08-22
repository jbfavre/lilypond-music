\version "2.22.0"
\language "english"
\include "../libs/smallcaps.ily"
\paper {
  top-margin = 1 \cm
  bottom-margin = 1 \cm
  left-margin = 1 \cm
  right-margin = 1 \cm

  #(include-special-characters)
}
\header {
  dedication = \markup{ \small \italic \concat {"Au maître " \bold { "D" \smallCaps "éodat de " "S" \smallCaps "évérac" } }}
  title = "Nocturne"
  subtitle = "N°1"
  composer = \markup { \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \column { "Poésie de" \bold \concat { "J.  L" \smallCaps ahor }}}
  tagline = \markup { \concat { "Extrait de " \italic "20 mélodies pour chant de piano" " de J. B" \smallCaps "éesau"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = "Chant"
    } {
      \clef treble
      \new Voice = "chant" {
        \relative c'' {
          \key gf \major
          \time 3/4
          \tempo \markup { \bold Lent. molto. }
          \autoBeamOff
          \tupletUp
          \override TupletBracket.tuplet-slur = ##t
          \override TupletBracket.bracket-visibility = ##t
          % Page 1
          r4 r8 af8^\p bf c ef4 df af8. bf16 gf4 r4 \tuplet 3/2 { bf8 df gf }
          f2 \tuplet 3/2 { ef8 df bf } c2 df8.-- bf16 bf4 bf8 \breathe bf8^\< c df\!
          f4 af, r8 f'8^\p gf^\>( ef) d4\! r4 r8 ef4 af,8 cf^\markup { \italic Cédez} f, \bar "||" \time 9/8
          % Page 2
          g'2. r4 r8 r4 r8 r8 a,8^\markup{\italic Dolce.} b cs b a
          c4.\( c8\) r8 r r r c8^\< gf'4.\( gf4\)\! r8 r f gf
          af4.^\>\( af,8\)\! r8 r r4 r8 r4 r8 c8^\markup{\italic "Toujours calme"} c c ef4 f8
          c4.\( c\) r8 r a8 c4.( c8) r8 c8 bf4 a8
          % Page 3
          c!4.\( c8\) r8 r r b8 c gf' ef df cf!4. r8 df ef \time 12/8
          ff8^\> df af cf4.( cf8)\! r8 r r4 r8 \time 9/8
          s8 r1 \tuplet 4/6 { r16 bf bf bf } \tuplet 4/6 { bf bf bf bf } df4.(
          \tuplet 4/6 { df16) ef df cf } gf'4.( gf8) r8 r s8 r1
          % Page 4
          r4 r8 r a,8 b cs b a c4. \(c8\) r8 r r r c8
          g'4.^\mf\( g8\) r8 r r f^\< g a4.\!\( c,8\) r8 r r4 r8 \time 6/8
          r8 c8 d f c ef \time 12/8 bf4. r4 r8 r \tempo "Rit. molto" bf8 c ef f, cf'! \time 3/4
          % Page 5
          bf4^\pp\( bf8\) r8 r4 R2. R2.
          R2. R2. r4 r8 bf8^\markup { \dynamic p \italic "Très calme" } cf df d8.[\( a16]\) a4 r
          r4 ef'4 df cf2 r4 r8 bf8 bf ef df4
          r8 bf bf af gf4( gf2)^\markup{\italic "Dim."}^\> r4\! R2. R2. R2. \bar "|."
        }
      }
    }
    \new Lyrics \lyricsto "chant" {
      Sur ton sein pâ -- le, mon cœur dort d'un som -- meil
      doux com -- me la mort&nbsp;: Mort ex -- qui -- se, mort par -- fu --
      mé -- e du souf -- fle de la bien ai --
      mée. Ma pen -- sée est se --
      rei -- ne et rê -- ve par -- fu --
      mé -- e Com -- me la cham -- bre~heu --
      reu -- se Où dort __ ma bien ai --
      mé -- e. Lar -- ge fleur au cœur blanc, qui par --
      fu -- me la nuit, __
      La lu -- ne sur l'é -- tang du ciel
      s'é -- pa nou -- it __
      Ma pen -- sée est se -- rei -- ne et
      rê -- ve ca -- res -- sé -- e
      d'u -- ne~o -- deur de san -- tal que tes bras m'ont lais --
      sé -- e
      Sur ton sein pâ -- le
      mon cœur dort d'un som -- meil doux
      com -- me la mort.
    }
    \new PianoStaff \with {
      instrumentName = "Piano"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble
        \relative c'' { \voiceOne
          \key gf \major
          \time 3/4
          \tempo \markup { \bold Lent. molto. }
          % Page 1
          <af df, cf>4 <af df, cf>4 <af df, cf>4 <bf df, bf> <bf df, bf> <df, cf> <ef df cf> <f df cf> <gf df bf>
          <df f df'>4 <df f df'> <df f df'> <c f c'> <c f c'> <df gf df'>-- <df bf'> <df bf'> <df bf'>
          <df af' df>4 <d af' d>4  <d af' f'>4\arpeggio <ef gf ef'> <d gf> <ef f!> <bf df ef> <df ef gf ef'> <df f af df> \bar "||" \time 9/8
          % Page 2
          r16\p df''( bf af gf) r16 r df'( bf gf ef) r16 r df'( bf gf df) r16
          r16 df'( bff af gf) r16 r df'( bff gf d) r16 r cs'( a fs cs) r16
          r16 c'( a fs e) r16 r c'( a fs d) r r  c'( a fs c) r
          r16 a'( gf ef c) r16 r a'( gf! ef c) r r  a'( gf ef a,!) r
          r16 af'!( f ef df) r16 r af'( f ef bf) r r  af'( f ef af,) r
          r16 c'( af! g f) r16 r c'( af g f) r r  c'( af f c?) r
          r16 c'( a g f) r16 r c'( a g d) r r  c'( a f c!) r
          r16 a'( g ef c) r16 r a'( g ef c) r r  a'( g ef a,) r
          % Page 3
          r16 bf'( af ef c) r16 r bf'( af ef c) r r bf'( af ef c) r^\markup{\italic Cédez.}
          r16 cf,!16\( ef gf cf gf\) r16 cf,16\( ff af cf af\) s4.
          s4. <d d'>4. b'4. a8\( d f\)
          <gf, cf ef gf>4 <ef gf cf ef>8( <ef gf cf ef>8)[ <df df'> <cf cf'>] <af cf df af'>16\( <bf bf'>16 <cf cf'>8 <ef ef'>8\)
          <df ff af df>4. <ef gf bf ef>4.\arpeggio <gf bf df gf>4.\arpeggio
          <gf cf ef gf>4. cf,16_\markup{\italic "Molto Rall."}\( ef gf \ottava #1 cf ef gf\) cf4\fermata \ottava #0 r8
          r16^\markup { \bold "a Tempo"} df,( bf af gf) r16 r df'( bf gf ef) r r df'( bf gf df) r
          % Page 4
          r16 df'( bff af! gf!) r16 r df'( a gf! df) r r cs'( a fs cs) r
          r16 c'( a fs e) r16 r c'( a fs d) r r c'( a fs c) r
          r16 c'( bf g e) r16 r c'( bf g d) r r c'( bf g c,) r
          r16 c'( a f c) r16 r c'( a f d) r r c'( a f c c') \time 6/8
          \ottava #1 <g c ef g>2.\arpeggio \ottava #0 \time 12/8
          r16\p  f'( ef df bf) r16 r f'( ef df g,) r2 s16*5
          % Page 5
          r8\pp \ottava #1 <gf bf d>8_\markup{\italic "Lento"}[ r <gf bf d>8 r<gf bf d>8]
          r8 <bf df gf>[ r <gf bf ef> r <gf bf df>]
          r8 <bf df gf>[ r <gf bf ef> r <gf bf df>] \ottava #0
          \voiceTwo r8 <df f ef'>8^-[ r <df f df'>^- r <df f cf'>^-]
          r8 <cf df af'>[ r <cf df gf> r <cf df f>]
          r8 <bf df bf'>[ r <bf df af'> r <bf df gf>]
          r8 <a d fs>8[ r <a d e> r <a d fs>]
          r8 <a ef' gf>8[ r <a ef' af> r <a ef' a>]
          r8 <b d a'>8[ r <b d g> r <cf ef f>]
          << { \voiceOne <bf bf'>2^\markup { \italic più \dynamic p } <ef ef'>8. <cf cf'>16
                         <bf bf'>2 <df df'>8. <gf, gf'>16
                         <af af'>2.
             }
             \new Voice { \voiceTwo r8 <df! gf!>[ r <df gf> r <gf bf>]
                                    r8 <df gf>^\markup{\italic "Rall. molto"}[ r <df gf> r <gf bf>]
                                    r8 <cf, ef>[ r <df f> r <df f cf'>]
             }
          >> \oneVoice
          <df gf df'>2.\pp\arpeggio <df gf df'>2.\arpeggio <df gf bf df gf bf>2.^"m.g."\arpeggio

        }
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass \set Score.connectArpeggios = ##f
        \relative f {
          \key gf \major
          \time 3/4
          \tempo \markup { \bold Lent. molto. }
          % Page 1
          <f df af>4\sustainOn <f df af>4 <f df af>4 << { <gf df gf,>4 <gf df gf,> <f af,> } { s8 \hideNotes f,8_\markup{\italic "simili"} \unHideNotes s2 } >> <gf' af,>4 <af df, af> <gf df gf,>
          <bf f bf,>4 <bf f bf,> <bf f bf,> <af f af,> <af f af,> <bf ff> <bf f> <bf gf> <bf g>
          <f af,>4 <f af,> <bf, f' cf'>\arpeggio <bf gf' bf> <cf gf' af> <c f a> <df gf> <df af' c> <df af' cf> \bar "||" \time 9/8
          % Page 2
          <<  { \voiceOne <gf, df'>2.^\markup{\italic "Ben legato"} s4 r16 df'16 } \new Voice { \voiceTwo s4 \change Staff="right" r16 bf''_"m.g."\( af4\) r16 bf\( gf4\) \change Staff="left" s8} >>
          \oneVoice
          \phrasingSlurUp
          gf,,4 \change Staff="right" r16 bff''_"m.g."\( af4\) r16 a\( fs4\) \change Staff="left" r16 d,16\(
          d,4\) \change Staff="right" r16 a'''_"m.g."\( gs4\) r16 a!\( fs4\) \change Staff="left" r16 gf?16\(
          <gf c, a>4\) \change Staff="right" r16 a_"m.g."\( gs4\) r16 a!\( gf4\) \change Staff="left" r16 af,,!16\(
          <af df,>4\) \change Staff="right" r16 f''_"m.g."\( ef4\) r16 f\( df4\) r16 f16\( \change Staff="left"
          <af,! c>4\) \change Staff="right" r16 c'_"m.g."\( bf4\) r16 c\( af4\) \change Staff="left" r16 f,16\(
          <f, c'>4\) \change Staff="right" r16 a''_"m.g."\( g4\) r16 a!\( f4\) \change Staff="left" r16 c,16\(
          <f, c'>4\) \change Staff="right" r16 f''_"m.g."\( ef4\) r16 f\( c4\) \change Staff="left" r16 ef,16\(
          % Page 3
          <af ef' gf>4\) \change Staff="right" r16 af''_"m.g."\( gf4\) r16 af\( ef4\) \change Staff="left" r16 af,16
          <a, ef' gf>4. <af, ff' af>4. \clef treble cf'!16\( ff af \change Staff="right" cf!16 df ef\) \change Staff="left" \time 12/8
          af,16\( cf df \change Staff="right" ff16 af df\) \change Staff="left" \clef bass g,,,,16\( d' f g b d\) \change Staff="right"  \voiceTwo f\( g b d b g\) f16\( d\< \change Staff="left" b g d g,\!\)
          ef16\( cf' gf' ef gf cf\) \change Staff="right"  \voiceTwo ef\( gf cf gf ef cf\) \change Staff="left" f,,\( af df f af cf\) gf,16\( df' bf' gf bf df\) bf16\( \change Staff="right" df gf bf af gf\) ef16\( df \change Staff="left" bf gf ef df\)
          \voiceOne <cf, gf' cf>16^\pp\sustainOn\( cf'[ ef gf cf \change Staff="right" \voiceTwo ef](\) ef16)\( gf cf \ottava #1 ef gf cf\) ef4\fermata \ottava #0 r8 \change Staff="left"
          <gf,,,, df'>4\sustainOn \change Staff="right" r16 bf''_"m.g."\( af4\) r16 bf\( gf4\) \change Staff="left" r16 df,16\(
          % Page 4
          gf,4\) \change Staff="right" r16 a''_"m.g."\( gs4\) r16 a\( fs4\) \change Staff="left" r16 a,,16
          d,4 \change Staff="right" r16 a'''_"m.g."\( gs4\) r16 a!\( gf4\) r16 a16
          <bf, e g>4 r16 bf'16\( g4\) r16 bf16\( e,!4\) \change Staff="left" \oneVoice r16 \slurUp c,16(
          <f, c'>4) \change Staff="right" r16 a''_"m.g."\( g4\) r16 a\( f4\) \change Staff="left" \oneVoice r8
          \set Score.connectArpeggios = ##t
          \ottava #1 <f c' ef g>2.\arpeggio \ottava #0 << { \voiceOne <g, df' f>4. } \new Voice { \voiceTwo <ef, bf'>4 \change Staff="right" r16 ef'''_"m.g."\( df4\) r16 ef\( bf4.(\) bf8) r8 r8} >> \oneVoice
          % Page 5
          \set Score.connectArpeggios = ##f
          <gf,, d'>2_\markup{\italic "En dehors. Expressivo"} \clef treble f'''8.^\markup{\italic "Calme"}[ d16] df2 ef8.->[ cf!16] bf2 df8.[ gf,16]
          af2 \clef bass \tupletUp
          \override TupletBracket.tuplet-slur = ##t
          \override TupletBracket.bracket-visibility = ##t
          \tuplet 5/4 { af,,16 df f af cf } ef2 df8.[ df,16]
          <gf, df' bf'>2--\arpeggio ef''8.[ df16]
          <af, fs' d'>2\arpeggio a'8.[ fs!16]
          <af, gf' ef'>2.\arpeggio <g d' b'>2\arpeggio <df' af'! cf!>4
          <gf, df' bf'>2\arpeggio ef''8.[ cf16]
          <gf, df' bf'>2\arpeggio df''8.[ gf,16]
          <gf, df' bf'>2 <df' af' f'>4
          <gf, df' bf'>2.\arpeggio \clef treble <df'' gf bf>2. \clef bass <gf,,, gf'>2.
        }
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 17)
  }
}
