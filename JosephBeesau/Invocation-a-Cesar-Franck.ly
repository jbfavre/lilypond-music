\version "2.22.0"
\language "english"
pdolce = \markup { \dynamic p \italic dolce }
prit = \markup { \dynamic p rit. }
pdim = \markup { \dynamic p \italic dim. }
pprit = \markup { \dynamic pp rit. }

\header {
  dedication = \markup{\concat {"À Monsieur H. D" \smallCaps "elalande" }}
  title = "Invocation à César Franck"
  composer = "Joseph BÉESAU"
}

\paper {
  #(set-paper-size "a4")
  %systems-per-page = 4
}

global = {
  \key af \major
  \time 4/4
  \tempo \markup { \bold Andantino. \small \italic "bene legato, espressivo." } 4=69
}

rightOne = \relative c'' {
  \global \set Score.connectArpeggios = ##t
  % En avant la musique !
  c8_\pdolce( ef4 c8 bf af4 bf8) c8( ef4 c8 << {c2} { s4. \hideNotes ef,8) \unHideNotes } >> ef'8->( bf4 c8 bf af4 bf8) \break
  c8 af4 bf8 c2 f8\mf\<(-> ef4 bf'8 f8\! ef4.) f8\p(-> ef4 bf'8\arpeggio f?8 << { ef4.} { s8 \hideNotes g,4) \unHideNotes}>> ef'8( df4 c8 bf af4 cf8) \break
  ef,8 f4 c'!8 bf af4. \tempo "un peu plus vite" r8\mf <af cf>4\<-.^\p( <af cf>4\!-._\> <af cf>4-. <af cf>8-.\!) df8\p\>( ef bf af\!) bf2 \break
  r8\mf <gf cf>4-.\<( <gf cf>4-.\!\> <f cf'>4-. <ef bf'>8-.\!) gf8_\prit( af) f4 <ef bf gf>2 gf8(^\< af bf gf)\! ef' f af,4 \pageBreak
  gf8\<( af bf ef\!) af,4. bf8 \tempo "un peu plus lent" gf'8^\markup{ \italic "espressivo dolce"}[ f g e af] gf f4 ef8\p f c df ef2 \break
  ef8_\pprit ff cf df ef2 \tempo "a Tempo" c8^\markup{ \italic dolce}( ef4 c8 bf af4 bf8) c8( ef4 c8 c2) ef8( bf4 c8 bf af4 bf8) \break
  c8 af4 bf8 c2 f8\mf\<(-> ef4 bf'8 f\! ef4.) f8\p( ef4 bf'8 f ef4.) ef8( df4 c8 bf af4 cf8) \break
  ef,8_\pdim( f4 c'8\> bf af4.) c,8^\markup{\italic "calme et expressif"}\!\<( df4 c8 ef\!\> df4 c8) c8\!( af4 bf8 c2) f''8^\markup{\italic "m.g."}\p\<(-> <<{g4 f8)}{s8 s8\!\> s16 s16\!}>>  c2 \break
  ef8^\markup{\italic "m.g."}(-> f4 ef8) bf2 f8(-> g4 f8) af, bf4 af8 c8( af_"rit.         e     morendo" bf c) bf8( ef, f bf) c2 af'2\pp R1 \bar "|."
}

rightTwo = \relative c' {
  \global \set Score.connectArpeggios = ##t
  % En avant la musique !
  ef2 ef2 ef4 g g8 f4 ef8 df2 ef
  f2 e8( f g4) g2 af4 g8( bf) a4 bf8 g\arpeggio fs4 g f g eff2
  df!2_\markup{ \bold "poco rit."} df4 c s1  gf'4 df d2
  s1 cf4 <c af>8 d s2 << {c2_\markup{\bold "a Tempo"}} { s4. \hideNotes gf'8( \unHideNotes} >> gf4) f
  ef2 ef4 f8 g df'4 c2( c8) cf af4 fs( fs8)( af4 g8)
  gf4 ff f8( fs4 g8) ef2 ef2 ef4 g <ef g>2 df2 ef
  f2 e8( f g4) g2 af a4 bf fs2 f?4 g eff2
  d4 df c2 s1 s1 <af' c f af>2\arpeggio <g c ef>2\arpeggio
  <gf bf ef gf>2\arpeggio <f bf df f>2\arpeggio <af, c f af>2\arpeggio
  \offset positions #'(0 . 2) Arpeggio
  <af bf d>2\arpeggio <f af df f>2\arpeggio <g bf df ef>2\arpeggio <ef af c f>2\arpeggio <c' ef f af c>2\arpeggio R1
}

leftOne = \relative f {
  \global \set Score.connectArpeggios = ##t
  % En avant la musique !
  ef2 ef4 f8( g) af4 df c2\arpeggio ef,4 f8( g) af4 c(
  af) f g8( af bf4) df4 bf c bf8( df) c4 df ef2 df4\arpeggio bf cf4. af8
  bf4 g ef2 s1 bf'4 gf( gf8)( af f gf)
  s1 <ef af,>4 <f bf,>4 \slurDown ef8( bf ef,4) ef'4 gf \slurUp c8( df c bf)
  bf8( af) gf4 df'8 c4 bf8 \clef treble bf'4( af a af) \clef bass << {\voiceOne ef2 df2} {\voiceTwo c4 a4 bf2} \voiceOne>>
  b4 b df2 ef,2 ef4 f8( g) af4( df <<{g,8 c4 bf8)}{ s8\< s s\!\> s}>> ef,4\! f8( g) af4 c
  af4 f g8( af bf4) df4 c8 bf cf4 c8 df cf c df d ef2 df4\arpeggio bf cf4. af8 \slurUp bf4( g ef af,,) ef''4 e g f d ff ef2 s1
  s1 s2
  <f f,>4\arpeggio\sustainOn <ff ff,>4\sustainOn s1 s1 af,2 \oneVoice r2
}

leftTwo = \relative f, {
  \global \set Score.connectArpeggios = ##t
  % En avant la musique !
  af4\sustainOn( bf << { c2\sustainOn) } { s4 \hideNotes f,4_\markup{\italic "simili"} \unHideNotes } >> f'4 ef <ef af,>2\arpeggio bf2 c df! c ef ef ef a4 \slurUp bf8( c) bf,4\arpeggio e f ff
  f2 af, af'8_\markup { \small \italic "en dehors" }( cf df ef) g( f) ef4 ef,2 bf
  af'8_\markup { \small \italic "en dehors" }( cf df ef) bf( af gf4) s1 af,1
  af1 %{\clef treble %} ef''2 d2 %{ \clef bass %} \slurDown ef,2( ef2)
  <<{a4 gs <ef bf>2}{s8\sustainOff s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff s8\sustainOn}>> af,4\sustainOn bf c2 f4 ef c2 bf2 c
  df2 c ef( ef ef\<) a4\!( bf8 c) bf,4\arpeggio e4 f ff ef2 af,4 af,4 af'2( af) af2( af)
  \set Score.connectArpeggios = ##f
  <f' c' f>2\arpeggio\sustainOn <c g' ef'>2\arpeggio\sustainOn
  <ef bf' ef>2\arpeggio\sustainOn <bf f' df'>2\arpeggio\sustainOn <f c' f>2\arpeggio\sustainOn bf2
  \set Score.connectArpeggios = ##t
  <ef, bf' ef>2\arpeggio\sustainOn <ef bf' df ef>2\arpeggio\sustainOn <af, ef' c'>2\arpeggio\sustainOn <af' ef' af>2\arpeggio af,2
}

\markup {
  \override #'(font-family . sans)
  \fill-line {
    \rounded-box \bold \center-column {
      \concat { "Cette petite pièce peut se jouer aussi sur l'orgue ou sur l'harmonium." }
      \concat { "L'exécution des 6 dernières mesures est laissée à l'initiative personnelle"}
      \concat { "de l'organiste qui avec l'usage de la pédale arrivera à les interpréter." }
    }
  }
}
\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \rightOne \\ \rightTwo >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {}
}
