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
  dedication = \markup{\concat {"À Mademoiselle " \bold { "Mary P" \smallCaps "ironnay" }}}
  title = "Spleen"
  subtitle = "N°8"
  composer = \markup { \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \column { "Poésie de" \bold \concat { P \smallCaps aul " V" \smallCaps erlaine }}}
  tagline = \markup { \concat { "Extrait de " \italic "20 mélodies pour chant de piano" " de J. B" \smallCaps "éesau"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = "Chant"
    } {
      \clef treble
      \new Voice = "chant" {
        \relative c' { \autoBeamOff
          \key e \major
          \time 3/4
          \tempo "Lent"
          % Page 1
          R2. R2. R2. r4 r4 r8 b8 \break
          b4. b16 b \tuplet 3/2 { b8 b b } cs4(cs8) r8 \tuplet 3/2 {r8 b b } cs4 cs8 ds e8. cs16 b4( b8) r8 r4 \break
          r4 r8 cs'4->\( a8\) r8 b8 a16 g fs e g8 fs r8 e8 g fs^\< a16 a g fs cs'4( cs8)\! r8 r4 \pageBreak
          % Page 2
          R2.*3 \key df \major \tempo "Plus lent et très doux" r4 r4 r8 ef8 \break
          df4. c8 bf8. f16 af4. f8 ef df r4 r8 df'8 ef8. df16 bf4\( bf8\) f ef8. f16 \break
          af2 r4 \key e \major \tempo "a Tempo" \acciaccatura {s8.} r4 r16 fs fs fs a4 r16 a16 b cs cs8 fs, r4 \break
          \tuplet 3/2 { r8\( fs fs} a8. fs16\) c'8 a16 c ef8 r r4 r4 r4 r4 r8 a,8 \pageBreak
          % Page 3
          cs4( \tuplet 3/2 4 {cs8) b fs a b cs}
          ds4( \tuplet 5/4 { ds16)\( b cs ds cs} e8\) ds16 cs \break
          fs2 cs8^\markup { \dynamic f \italic "en élargissant"} a e'8. ds16^\< cs4 b8. gs'16 gs4\!\( gs8\) r8 r16 cs,16 cs fs( \break
          fs4)^\markup "rit." cs8. cs16 e4( e8) r8 r4 r r8 a,8 cs2( cs4) r4 r R2. R2. \break
           R2. R2. R2. R2. R2. R2. \bar "|."
        }
      }
    }
    \new Lyrics \lyricsto "chant" {
      Les ro -- ses é -- taient tou -- tes rou -- ges,
      Et les lier -- res étaient tout noirs. __
      Chè -- re, pour peu que tu te bou -- ges, Re -- nais -- sent tous mes dé -- ses -- poirs __
      Le ciel é -- tait trop bleu, trop ten -- dre,
      La mer trop ver -- te et l'air trop doux.
      Je crains tou -- jours, ce qu'est d'at -- ten -- dre&nbsp;!
      Quel -- que fui -- te~a -- tro -- ce de vous
      Du houx __ à la feuil -- le ver -- nie __
      Et du lui -- sant buis je suis las,
      Et de la cam -- pa -- gne~in -- fi -- ni -- e
      Et de tout, fors de vous
      Hé -- las
    }
    \new PianoStaff \with {
      instrumentName = "Piano"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble
        <<
          \new Voice {
            \relative c'' {
              \key e \major
              \time 3/4
              \tempo "Lent"
              % Page 1
              b4. as8 es fs <fss, cs' fss>4 < gs b gs'> r8 b'8\( <<{\voiceOne gs4-> a\) r8 cs8\( gs8 a\)( a4)} \new Voice{\voiceTwo d,2. d4 ds}>>\oneVoice r4
              R2. b'4. as8 es fs <fss, cs' fss>4 < gs b gs'> r8 b'8\( <<{\voiceOne gs4-> a\) r8 cs8\( gs8 a\)( a4)} \new Voice{\voiceTwo d,2. d4 ds}>>\oneVoice
              <cs' fs cs'>4\mf->\arpeggio\( <b b'>4. <gs gs'>8 <a a'> <cs, cs'> <e gs e'>4 <ds a' ds>4\)( <ds a' ds>8) r8 r8 <fs' fs'>4\f\( <es es'>8^\markup{\italic expressif} <bs bs'>8[ <cs cs'>8]\)
              % Page 2
              <<{\voiceOne <css css'>4\( <ds ds'>8\) r8 r8 <fs fs'>8} \new Voice {\voiceTwo gs,4. as8 b4}>> \oneVoice
              <<{\voiceOne <d d'>4\( <ef ef'>8\) r8 r8_\markup{\italic "retenez et diminuez"} <gf gf'>8} \new Voice {\voiceTwo a,4. b8 c4}>> \oneVoice
              <<{\voiceOne <d d'>4\( <ef ef'>8\) r8 r8 <gf gf'>8} \new Voice {\voiceTwo a,4. b8 c4}>> \oneVoice
              \key df \major
              <f f'>8_\markup{\dynamic pp \italic "très lié"} <bf, f' bf>4 <df af' df>4 <ef af ef'>8
              <df af' df>8 \ottava #1 <af' df af'>4\( <f bf f'>4 <c f c'>8\)^\markup{\italic "loco"} \ottava #0 <bf ef bf'>8\( <af af'>\)
              <f bf f'>4 <ef af ef'>8\( <df df'>\) <<{\voiceOne <ef ef'>8\arpeggio\( <f f'>4\) <df f>8\( <ef af>8[ <f bf>]\)} \new Voice {\voiceTwo s16 <df af'>2}>>\oneVoice
              <f' bf>8\( <af df> <f bf> <df af'> <bf ef> <af df>\)
              <<{\voiceOne af'4_\< ef' \tuplet 3/2{ df8\! af bf}} \new Voice{\voiceTwo <f, cf' ef>2 r4}>> \oneVoice
              \key e \major
              \acciaccatura {s8.} <cs' fs a cs>8\mf
              \repeat tremolo 2 { <cs fs>32 a' }
              \once \override Beam.gap-count = #2 \once \override Beam.gap = #7 \repeat tremolo 8 { <cs, fs>32 a' }
              \phrasingSlurUp <cs,, cs'>4.\( <b b'>8 <es, es'> <fs fs'>\)
              <a e' a>8[ \tuplet 3/2 { a'16 as b }]
              \voiceOne <ef, cs'>8 r8 <cs' fs>8 r8
              \ottava #1 <c' fs>8[ \tuplet 3/2 { <b f'>16 <bf e> <bf f'> }] \tuplet 3/2 { <c fs>8 <cs g'> <d gs> } <ef a>4 \ottava #0
              <fs,, a cs fs>4.^\markup{\italic loco} <e e'>8 <cs cs'> <a a'>
              % Page 3
            }
          }
        >>
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass
        <<
          \new Voice {
            \relative f, {
              \key e \major
              \time 3/4
              % Page 1
              R2. <<{\voiceOne b4.\( bs8 cs4\)} \new Voice {\voiceTwo e,2.}>> \oneVoice
              <<{\voiceOne b''2.} \new Voice {\voiceTwo e,4.\( es8 fs4\)} >> \oneVoice
              \phrasingSlurDown <es\( b'(>4 <fs\) b)>4 r4
              R2. R2. <<{\voiceOne b,4.\( bs8 cs4\)} \new Voice {\voiceTwo e,2.}>> \oneVoice
              <<{\voiceOne b''2.} \new Voice {\voiceTwo e,4.\( es8 fs4\)} >> \oneVoice
              <f b>2 <e a cs fs>8\arpeggio r8 R2.
              <c fs a>4 << { \voiceOne <cs'>4 b8 } \new Voice { \voiceTwo <b, fs'>4( <b fs'>8) } >> \oneVoice r8 r8 fs''4\( es8 bs8[ cs8]\)
              % Page 2
              <e, b'>4( <e b'>8) r8 r4 <f cs'>4( <f cs'>8) r8 r4 <gf c>4( <gf c>8) r8 r4
              \key df \major
              <<{\voiceOne r8 \clef treble <df' af'>4 <f bf> <c gf'>8} \new Voice{\voiceTwo <df,, af'>2.\sustainOn}>>\oneVoice
              <f'' bf>8\( <bf f'>4 <af df>4 <df, af'>8\) <f c'>4\( <df af'> <bf f'>\) \clef bass <df,, af' f'>2.\arpeggio( <df af' f'>2.\arpeggio)( <df af' f'>2) r4
              \key e \major
              \acciaccatura {b16 fs' b} a'4.\( gs8_\markup{\italic "en dehors"} es fs\)
              \repeat tremolo 1 { a16 s16 e16 }
              \repeat tremolo 1 { a16 s8 ds, }
              \repeat tremolo 1 { a'16 d, }
              \repeat tremolo 1 { a'16 \grace s16 cs, }
              <c fs>8 \arpeggio r8 \change Staff="right" \voiceTwo <a' ef'>8_\markup{\italic m.g.}[ \tuplet 3/2 { fs'16 g gs }] as8[ \tuplet 3/2 { fs'16 g^\markup{\italic m.g.} gs }]
              \ottava #1 a8[ \tuplet 3/2 { gs16 g gs }] \tuplet 3/2 { a8 as b } c4 \ottava #0 \change Staff="left"
              \tuplet 5/4 { b,,,,16 fs' b ds a' } cs8 r8 r4
              % Page 3
            }
          }
        >>
      }
    >>
  >>
  \layout {
    \context {
      %\Staff \RemoveEmptyStaves
      %\override VerticalAxisGroup.remove-first = ##t
    }
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
}
