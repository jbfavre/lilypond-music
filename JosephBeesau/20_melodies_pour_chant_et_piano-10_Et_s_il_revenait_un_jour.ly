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
  dedication = \markup{ \sans \concat {"À Madame de " \bold { L \smallCaps "annurien" }}}
  title = \markup{ \sans "Et s'il revenait un jour…"}
  subtitle = \markup{ \sans "N°10"}
  composer = \markup{ \sans \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup{ \sans \column { "Poésie de" \bold \concat { M \smallCaps aurice " M" \smallCaps aeterlinck }}}
  tagline = \markup { \sans \concat { "Extrait de " \italic "20 mélodies pour chant et piano" " de J" \smallCaps oseph " B" \smallCaps éesau " - É" \smallCaps ditions " M" \smallCaps aurice " S" \smallCaps énart ", 1920"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = \markup{ \sans "Chant"}
    } {
      \clef treble
      \new Voice = "chant" {
        \relative c' { \autoBeamOff
          \key g \minor
          \time 3/4
          \tempo \markup { "Lent, avec tristesse"}
          R2.*3 \break
          R2. d8 d d d g8. d16 ef2 d8. c16 \break
          d8. c16 d8\( d\) r4\fermata^\markup{\italic court} R2. \time 4/4 r4 ef'8 ef d4 \tuplet 3/2 { d8 d a } \pageBreak
          c2 bf8 bf fs fs \time 3/4 d2. ef8. ef16 ef ef d c fs4 \break
          fs16 fs fs fs bf4 \(bf8\) r8 \time 4/4 r4 ef8 ef d4 \tuplet 3/2 { d8 d a} \break
          c4. g8 bf4--\( fs8\) r16 fs16 %{\time 3/4%} fs4\( fs8\) r8 r4 r2. \break
          r16 d16 d d d d d b d8 d r8 cs16 cs cs8. cs16 fs8\( e\) \pageBreak
          R2. \time 4/4 r4 bf'8 bf df4 \tuplet 3/2 { af8 bf cf } af2 bf8-- bf-- bf-- bf-- \time 3/4 \break
          bf4\( bf8\) r8 r4 R2. ef,16 ef ef ef ef8. ef16 g8. ef16 \break
          bf'8 bf16 bf bf4\( bf8\) r8 \time 4/4 r4 b8 b bf4 \tuplet 3/2 { bf8 bf bf } bf4.\( bf8\) r4 a8 a \time 2/4 \break
          a4. d,8 \time 3/4 d4\( d8\) r8 r4 R2. \pageBreak
          R2. R2. d8 d d d g8. d16 \break
          ef4 ef8 ef ef a! d,4 d8 r8 r4 \time 4/4 \tempo "Plus lent" r4 ef'8 ef d4 \tuplet 3/2 { d8 d a } \break
          c4. c8 bf4 bf8 fs \time 3/4 d'4-- d8 r8 r4 R2. \break
          R2. R2. R2. R2. R2. \bar "|."
        }
      }
    }
    \new Lyrics \lyricsto "chant" {
      Et s'il re -- ve -- nait un jour
      Que faut- il lui di -- re&nbsp;?
      Di -- tes lui qu'on l'at -- ten -- dit jus -- qu'à s'en mou -- rir…
      Et s'il m'in -- ter -- ro -- ge~en -- core
      Sans me re -- con -- nai -- tre&nbsp;?
      Par -- lez- lui com -- me~u -- ne sœur,
      Il souf -- fre peut- ê -- tre…
      Et s'il de -- man -- de où vous ê -- tes
      Que faut- il ré -- pon -- dre&nbsp;?
      Don -- nez lui mon an -- neau d'or
      sans rien lui ré -- pon -- dre
      Et s'il veut sa -- voir pour -- quoi
      la sal -- le~est dé -- ser -- te&nbsp;?
      Mon -- trez lui la lam -- pe~é -- tein -- te
      Et la port ou -- ver -- te…
      Et s'il m'in -- ter -- ro -- ge~a -- lors
      sur la der -- niè -- re~heur -- re&nbsp;?
      Di -- tes lui que j'ai sou -- ri
      de peur qu'il ne pleu -- re.
    }
    \new PianoStaff \with {
      instrumentName = \markup{ \sans "Piano"}
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble
        <<
          \new Voice {
            \relative c' {
              \key g \minor
              \time 3/4
              % Page 1
              <<{\voiceOne <bf d>2\p d'8->\( bf\)} \new Voice {\voiceTwo s2 d,4}>>\oneVoice <<{\voiceOne <af ef'>4. a'!8 c <fs, ef'> } \new Voice{\voiceTwo s4. ef4.}>> <bf g' d'>2\arpeggio bf'8\( g\)
              <af, ef'>2 <g c>8\( <af ef'>\) <<{\voiceOne <bf d>2\p d'8->\( bf\)} \new Voice {\voiceTwo s2 d,4}>>\oneVoice <<{\voiceOne <af ef'>4. a'!8 c <fs, ef'> } \new Voice{\voiceTwo s4. ef4.}>>\oneVoice
              <bf d>4 <bf d> <bf' d> <d, d'>4\(^\markup{\italic expressif} <cs cs'>4 <d d'>8 <ef ef'>\) \time 4/4 <c af' ef'>2 <c fs d'>2
              % Page 2
              <bf e c'>2 <bf fs' bf>2 \time 3/4 <<{\voiceOne <bf d>2\p d'8->\( bf\)} \new Voice {\voiceTwo s2 d,4}>>\oneVoice <af ef'( af>2 <a ef') a>4(
              <a ef' a>4) <bf ef bf'>2 \time 4/4 <ef af ef'>2 <fs c' fs>
              \override TextSpanner.bound-details.left.text = "rit."
              <<{\voiceOne c'4_\startTextSpan d8 ef( ef4) fs4\stopTextSpan} \new Voice {\voiceTwo <g, g'>2 <bf bf'>2 } >>\oneVoice %{\time 3/4%} \ottava #1 <fs' b d fs>2\pp\( \ottava #0 <cs fs cs'>8 <b b'!> <fs b d fs>2 <cs fs cs'>8 <b b'>\)
              <g d' fs>2 <g bf! d>4 <<{\voiceOne <b cs>2.} {s8 s16 s\< s4 s8 s8\!}>>
              % Page 3
              <<{\voiceOne cs'8. cs16 fs4 e8 fs} \new Voice{\voiceTwo b,2._\markup{\italic expressif}}>> \oneVoice \time 4/4 <bf gf'>2 <af df af'> <ef af( ef'> <d! af') d!>2 %{\time 3/4%}
              <gf' bf ef gf>2\pp <f bf f'>8\( <ef ef'> <af, cf d! af'>4. <g! g'!>8 <f f'>[ <a c>]\) <bf, g' bf>2 \phrasingSlurUp <ef g>4\(
              <fs bf>4\) <g bf>2 <b, e b'>2 <d f d'> <<{\voiceThree df8 df4-- df8-- cs8 cs4-- cs8--} \new Voice {\voiceOne <bf bf'>2 <a! a'!>}>>
              <<{\voiceOne fs'2} \new Voice{\voiceThree \shiftOnnn c!8 c4^- c8}>> \tempo "a Tempo" %{ \time 3/4 %} <bf d>2 <<{\voiceOne d'8->\( bf\)} \new Voice {\voiceTwo d,4}>> <<{\voiceOne <af ef'>4. a'!8 c <fs, ef'> } \new Voice{\voiceTwo s4. ef4.}>>\oneVoice
              % Page 4
              <bf g' d'>2 bf'8\( g\) <af, ef'>2 <g c>8\( <af ef'>\) <<{\voiceOne <bf d>2 d'8 bf} \new Voice {\voiceTwo s2 d,4}>>\oneVoice
              <af ef'>4. <<{\voiceOne a'!8 c <fs, ef'>} \new Voice{\voiceTwo ef4.}>>\oneVoice <bf d>4 <bf d> <bf' d>\fermata <c, af' ef'>2\arpeggio <c fs d'>2\arpeggio
              <bf e c'>2 <bf fs' bf>2 %{\time 3/4%} <d' bf' d>2 <d bf'>8\( <bf g'>\) <ef, af ef'>2 <ef c'>8\( <fs a>\)
              <bf, g' d'>2_\markup{ \italic "dim.__ "} bf'8\( g\) <ef, af ef'>2 <g c>8\( <af ef'>\) d2 d4^\pp d2.( d4) r4 r4
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
              \key g \minor
              \time 3/4
              % Page 1
              g8\( d' fs g bf g\) <c,, g'>8\( c' ef fs a c\) g,8\( d' fs g bf d\)
              <<{\voiceOne \crossStaff ef,2} \new Voice { \voiceTwo c,8\( g' af c ef c\)}>>\oneVoice g8\( d' fs g bf g\) <g, c,>8\( c ef fs a c\)
              g,8\([ d']\) \slurDown fs,8([ d'\(] <fs,) d'\) bf' d>4\fermata
              ef8\( bf' g' bf, d, df\) \time 4/4 <c af' ef'>2 <d a' fs'>2
              % Page 2
              <<{\voiceOne r8 c''^\< d\!^\> c\!( c2)} \new Voice {\voiceTwo <g, c g'>2 <d' fs>}>> \oneVoice \time 3/4 \voiceOne g,8\( d' fs g bf g\) c,,8\( af' c ef\) \voiceTwo \slurUp fs4(
              f4) gf2 \time 4/4 <c, af' c>2 <d a' c>
              <<{\voiceOne c'4 d8 ef( ef4) fs4} \new Voice {\voiceTwo <ef, g>2 <fs c'>2}>>\oneVoice \time 3/4 \slashedGrace b,,8 b'8\sustainOn\( fs' b cs\) d4 g,,8\( d' b' cs\) d4
              e,,8\( b' d e\) fs4 <e g>2.
              % Page 3
              <<{\voiceOne cs'8. cs16 fs4 e8 fs} \new Voice{\voiceTwo b,2.}>> \oneVoice %{\time 4/4%} <ef, bf' g'>2\arpeggio <df af' ff'>2\arpeggio <cf f!( cf'>2 <bf f') bf> %{\time 3/4%}
              ef,8\( bf' ef gf bf ef\) ef,,8 cf' f g! af d! ef,,8[\( bf' ef g\)] bf[ c]
              df d ef2 %{ \time 4/4 %} <gs,, e' gs>2\sustainOn <bf! f' bf!>2\sustainOn <gf df' gf>2\sustainOn\( <fs cs' fs>2\sustainOn\arpeggio\)
              <<{\voiceOne \autoBeamOff \crossStaff {fs'2 d2} \autoBeamOn} \new Voice {\voiceTwo <d, a' d>2 <g, d' g>8\arpeggio\( d'' fs g bf g\)}>>\oneVoice <c,, g'>8\( c' ef fs a! c\)
              % Page 4
              g,8\( d' fs g bf d\) <<{\voiceOne \crossStaff ef,2} \new Voice { \voiceTwo c,8\( g' af c ef c\)}>>\oneVoice g8\( d' fs g bf g\)
              <c,, g'>8\( c' ef fs a! c\) g,8\([ d']\) \slurDown fs,8([ d'\(] <fs,) d'\) bf' d>4\fermata <c af' ef'>2\arpeggio <d a' fs'>2\arpeggio
              <<{\voiceOne r8 c''^\< d\!^\> c\!( c2)} \new Voice {\voiceTwo <g, c g'>2 <d' fs>}>> \oneVoice g,8\( d' fs g bf d\) <c,, g'>8\( c' ef fs a! c\)
              g,8\( d' fs g bf d\) c,,8\( af' bf c ef c\) \autoBeamOff <<{ \voiceOne \crossStaff {<bf g'>2 <bf g'>4 <bf( g'\(>2. <bf) g'\)>4} } \new Voice {\voiceTwo <g, g'>2 <g g'>4  \phrasingSlurUp <g( g'\(>2. <g) g'\)>4)}>>\oneVoice r4 r4
            }
          }
        >>
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 19)
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
}
