\version "2.22.0"
\language "english"

startUnremovableSection = \set Staff.keepAliveInterfaces =
    #'(rhythmic-grob-interface
    rest-interface
    lyric-interface
    percent-repeat-item-interface
    percent-repeat-interface
    stanza-number-interface)

endUnremovableSection = \unset Staff.keepAliveInterfaces

\paper {
  top-margin = 2 \cm
  bottom-margin = 2 \cm
  left-margin = 2 \cm
  right-margin = 2 \cm
  #(include-special-characters)
}
\header {
  title = "Ch'io mai vi possa…"
  composer = "Extrait de Siroe, Opéra de G.F. Haendel (1683-1759)"
}
\score {
  <<
    \time 3/8
    \new ChoirStaff
    <<
      \new Voice = "canto" {
        \key c \minor
        \relative c'' {
          s4.*6 \break s4.*6 \break s4.*6 \break \autoBeamOff \startUnremovableSection
          << { s16 \segno s16 } { g8 } >> c16[ b] c[ d] ef8 d r8 c8 bf af af g r g8 c16[ b] c[ d] ef8 d r8 \break
          c8 bf af af g r g8 c16[ b] c[ g] af8 g4 ef8 f16[ ef] d[ c] g'4. \pageBreak
          R4. g4. r4. d4.\fermata g8 bf bf bf16[ g] af8 r8 \break
          f8 af af af[ g] r8 c16[ bf] af[ g] f[ ef] d[ ef] f8 r8 R4. R4. \break
          R4. bf8 f r bf c d ef d16[ c] bf[ af] g[ af] f4 ef4. \break
          R4. R4. R4. R4. g8 af16[ g] f[ ef] bf'8 f r8 \pageBreak
          g8 c16[ b] c[ d] b[ a] g8 r8 c,16[ d] ef[ f] g[ a] bf8 g4 g8 c16[ b] c[ d] b[ a] g8 r8 \break
          ef'16[ d] c[ bf] af[ g] g8 f r d'16[ c] b[ a] g[ f] f8[ ef] r8 af8 g16[ f] ef[ d] g8 f16[ ef d c] \break
          af'16[ g] f[ ef] d[ c] b4 r8 R4. af'4 r8 R4. g4 r8 \break
          c16[ ef] d[ c] b[ a] g8 f16[ef] d[ c] d8 c'8[ b] c16[ d ef c d b] c[ g af f g d] ef[ g f ef d c] \pageBreak
          g'4. R4. af4. R4. g4 r8 g8 c8. d16 \break
          b[ a] g8\fermata r8 ef'8 d16[ c] b[ a] g8 c f, \mark "Adagio" ef d4 c4. \break
          R4.*6 \break
          R4.*5 R4.\fermata
          \bar "||" \pageBreak
          ef8 af16[ g] f16[ ef] bf'8 g r c16[ bf] af16[ g] f16[ ef] ef8 d r f8 g16[ f] g16[ ef] \break
          f8 bf r f8 g16[ f] g16[ ef] f8 bf r  a8 c16[ bf] a[ g] fs8 g4 \break
          a8 bf16[ a] bf[ c] a4. g8 a16[ bf] c[ d] ef8 c4 f,8 g16[ a] bf[ c] \break
          d8 bf r bf8 c16[ bf] c[ bf] a8 bf16[ a bf a] g8 a16[ g] a16[ g]fs8 g r \pageBreak
          d16[e] fs[ g] a[ bf] c16[ bf c a] bf8 a16[ g] f8. g16 g16([ a bf g a fs] g16[ d' ef c d b] \break
          c16[ a bf! g a bf] fs4.) d'8 c16[ bf] a[ g] ef'8 d r \mark "Adagio" c32[ bf a16] bf8[ a16] g g4. \break
          R4.*6 \break
          R4.*6
          \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
          \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
          \mark \markup {\small { \italic { "Dal Segno" \musicglyph #"scripts.segno" }}}
          \bar "||"
        }
      }
      \new Lyrics \lyricsto "canto" {
        Ch'io mai vi pos -- sa la -- sciar d'a -- ma -- re. non lo cre -- de -- te,
        pu -- pil -- le ca -- re, né men per gio -- co v'in -- gan -- ne -- rò,
        no, no, nè men per gio -- co
        v'in -- gan -- ne -- ro, pu -- pil -- le ca -- re
        ca -- re&nbsp;! nè men per gio -- co v'in -- gan -- ne -- rò.
        Ch'io mai vi pos -- sa
        la -- sciar d'a -- ma -- re non lo cre -- de -- te, pu -- pil -- le ca -- re
        nè men per gio -- co v'in -- gan -- ne -- rò, __ nè men per gio -- co __
        v'in -- gan -- ne -- rò, no, no,
        nè men per gio -- co v'in -- gan -- ne -- rò __ _ _
        _ no, no, pu -- pil -- le ca -- re, ne men per gio -- co vin -- gan -- ne -- rò.
        Voi fo -- ste,e sie -- te le mie fa vil -- le, e voi sa --
        re -- te, ca -- re pu -- pil -- le, il mio bel fo -- co
        fin ch'io vi -- vro&nbsp;; voi fos -- te'&nbsp;e sie -- te le mie fa --
        vil -- le, e voi sa -- re -- te, __ ca -- re pu -- pil -- le,
        il mio bel fo -- co fin -- ch'io vi -- vrò, __
        il mio bel fo -- co  fin -- ch'io vi -- vrò.
      }
    >>
    \new PianoStaff
    <<
      \new Staff = "up" {
        %\autoBeamOff
        \clef treble
        \key c \minor
        \relative c'' {
          \mark "Allegro" g8^"(Violons)"-"(Basses)" c16 b c d ef8 d r8 c8 bf af af\trill g r g8 c16 b c g f af g f ef d
          ef d f ef d c b d g8 r8 ef16 g ef'8 r8 af,16 c af'8 r8 d,,16 f d'8 r8 g,16 bf g'8 r
          c,16 g f ef' d c b g d' f, ef d ef g c ef d c f b, c d g, ef' d c ef, c' d, b' c8 c, r
          %\segno
          <c ef g>4 r8 <ef g c>8[ <d g b>] r <ef c'>8[ <d f bf> <d f>] << \new Voice {\voiceTwo ef4} \new Voice {\voiceOne af8[ g8]} >> r8 g8 c16 b c d ef8 d8 r
          c8 bf af af g r <ef g> <g c> g <f af> <d g> <b f'> << \new Voice {\voiceTwo c8 d c} \new Voice { \voiceOne ef8 f4} >> b,16 d g f ef d
          ef16[ g c ef d c] b[ d f, af g f] ef[ g f ef d c] b4.\fermata
          <<
            \new Voice { \voiceOne bf'4.( bf8) s8 s8 }
            \new Voice { \voiceTwo g8[ ef16 f g8(] <ef g)>8[ <af ef'>16 c af'8] }
          >>
          <<
            \new Voice { \voiceOne af,4.( af8) s8 s8 }
            \new Voice { \voiceTwo f8[ d16 ef f8(] <d f)>8[ <g bf>16 g ef'8] }
          >>
          <<
            \new Voice { \voiceOne c8[ af16 bf c8] }
            \new Voice { \voiceTwo ef,4. }
          >>
          <d f>8. af'16[\pp g f] g[ bf ef g f ef] d[ f bf, af g f]
          g16[ bf af g f ef] d4 r8 <ef bf' ef>8[ <af c> <f af>] <ef g>4
          <<
            \new Voice { \voiceOne f8 g f4 }
            \new Voice { \voiceTwo bf,8( bf) c[ d] }
          >>
          ef16[ d ef f g af]
          bf[ ef, c' af f d'] ef[ c f bf, g' ef] c[ f f,8 d'] ef16[\p c bf af g f] ef4 r8 <d f>4 r8
          <<
            \new Voice { \voiceOne g8[ f af] d,[ g16 f ef d] c[ d ef f g a] bf8 g4 g8[ c16 b c d] b[ a g8] r }
            \new Voice { \voiceTwo c,4. b8 s4 s4. s4. s4. s4. }
          >>
          <<
            \new Voice { \voiceOne c16[ g' ef'8] r8 c16[ bf af g f ef] d16[ f d'8] r8 c,16[ g' ef'8] r8 af,8[ g16 f ef d] g8[ f16 ef d c]}
            \new Voice { \voiceTwo s16 g'16( g4 g8)[ f16 ef d8] s16 f16( f4 f8)[ ef16 d c bf] c8 d4( d8) g,4 }
          >>
          af'16[ g f ef d c] b[ d g8] r8  ef16[ g ef'8] r8 f,16[ c' af'8] r8 d,,16[ f d'8] r8 bf,16[ ef g8] r8
          <<
            \new Voice { \voiceOne g8[ af b] d[ g,] c( c4) b8 c16[ d ef c d b] c16[ g af f g d] ef16[ g f ef d c]}
            \new Voice { \voiceTwo ef8[ d f]( f8)[ ef] f8[ af] f[ g] s4. s4. s4.}
          >>
          b,16[ d g8] r8 ef16[ g ef'8] r8 f,16[ c' af'8] r8 d,,16[ f d'8] r8 bf,16[ ef g f ef d] c16[ b c8] <c af'>8
          <b d g>4 r8\fermata
          <<
            \new Voice { \voiceOne g'8[ af b] d8[ g, c]( c8)( b4)\mordent c4.}
            \new Voice { \voiceTwo ef,8[ d f]( f[) ef f] g4 f8 ef4.}
          >>
          g8[\f c16 b c d] ef8[ d] r c8[ bf af] af8[ g] r ef16[ g ef'8] r8 f,16[ c' af'8] r8
          d,,16[ f d'8] r8 g,16[ bf g'8] r8 c,16[ g f ef' d c] b16[ g d' f, ef c] d16[ c' \change Staff="down" g,8 \change Staff="up" b'8] c8\fermata[ c,] r8
          g'8[ af16 g f ef] bf'8[ g] r c16[ bf af g f ef] ef8[ d] r <d f>8[ <ef g>16 <d f> <ef g> <c ef>]
          <<
            \new Voice { \voiceOne f8 bf}
            \new Voice { \voiceTwo d,4 }
          >> r8
          <d f>8[ <ef g>16 <d f> <ef g> <c ef>] <d f>8[ <f bf>] r8 a8[ c16 bf a g] fs8 g4
          a8[ bf16 a bf c] a4. g8[ a16 bf c d] ef8 c4 f,8[ g16 a bf c]
          d8[ bf] r bf8[ c16 bf c16 bf] a8[ bf16 a bf a] g8[ a16 g a16 g] fs8 g r
          d16[ e fs g a bf] c16[ bf c a bf8] a16[ g fs8. g16] g16([ a bf g a fs] g16[ d' ef c d b]
          c16[ a bf! g a bf] fs4.) d'8[ c16 bf a g] ef'8 d r
          <<
            \new Voice { \voiceOne c8[ bf a] }
            \new Voice { \voiceTwo g4( g16) fs }
          >>
          <g d bf>4.
          g8[\f c16 b c d] ef8[ d] r c8[ bf af] af8[ g] r ef16[ g ef'8] r f,16[ c' af'8] r8
          d,,16[ f d'8] r8 g,16[ bf g'8] r8 c,16[ g f ef' d c] b16[ g d' f, ef c] \voiceOne d16[ c' \change Staff="down" g,8 \change Staff="up" b'8] c8[ c,] r8
        }
      }
      \new Staff = "down" {
        %\autoBeamOff
        \clef bass
        \key c \minor
        \relative c {
          R4.-"Violons et basse continue" c8 f16 ef f g af f g ef f bf, ef8 g16 f ef d ef8 c r d b r
          c bf! af g8 r16 f'16 ef d c8 r16 bf'16 af g f8 r16 ef d c bf8 r16 af' g f ef8 r16 d c bf
          af8 af' f g g, r g' g, r g' b, c f g g, c,4 r8
          %\segno
          c'4 r8 c8 g' r8 af bf bf, ef g16 f ef d c4 r8 c8 f16 ef f g
          af f bf8 bf, ef ef, r8 c'8 ef c f b, g c bf af g4 r8
          R4. g4 r8 R4. g4.\fermata ef'8[ g16 f ef d] c8 c' r8
          d,8[ f16 ef d c] bf8[ ef g,] af[ c af] bf4 r8 R4. R4.
          R4. bf4 r8 g'8[ af bf] c,4 d8[ ef] af,[ bf] ef,4 r8
          g'8[ af bf,] c[ d ef] af[ bf bf,] ef,4 r8 ef'8[ d c] bf4 r8
          ef8[ af f] g8[ g, f'] ef[ c] r bf[ ef] r c[ af' f] g8[ r16 f ef d]
          c4 ef8 af,4 r8 f'8[ g b,] c8[ r16 bf af g] f8[ bf] r8 ef,8[ ef'] r8
          f8[ g af] g8[ r16 f ef d] c8[ r16 bf af g] f8[ r16 ef' d c] bf8[ r16 af g f] ef8[ r16 f' ef d]
          c8[ f d] b[ c] af[ f] d[ g] c,4 r8 R4. R4.
          g''8[ r16 f ef d] c8[ r16 bf af g] f8[ r16 ef' d c] bf8[ r16 af g f] ef4 r8 ef'8[ af f]
          g4 r8\fermata c,8[ f d] b8[ c af] g4. c8[ ef, g]
          c,4 r8 c'8[ f16 ef f g] af16[ f g ef f bf,] ef8[ g16 f ef d] c8[ r16 bf af g] f8[ r16 ef'16 d c]
          bf8[ r16 af g f] ef8[ r16 ef'16 f g] af8[ af, f'] g8[ b, c] \voiceTwo f8[ g g,] \voiceOne c4.\fermata
          \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
          \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
          \once \override Score.RehearsalMark.direction = #DOWN
          \mark \markup { \small \italic "(Fin)"}
          ef8[ bf c] g8[ ef'] r af,8[ c af] bf8[ bf,] r  bf'8[ bf,] r
          bf'8[ bf,] r bf'8[ bf,] r bf'8[ d bf] c8[ ef c] d8[ c16 bf a g] fs'8[ g c,] d8[ fs d] bf8[ g] r c8[ ef c] a[ f] r8
          bf8[ d bf] g8[ ef' g,] f8[ d' f,] ef8[ c' ef,] d[ bf' g]
          fs'8[ d] r a8[ fs' g] c,8[ d d,] g4 r8 r8 g'8[ f] ef8[ c g] d'4 c8 bf8[ g' bf,] c8[ d] r ef8[ d d,] g4.
          R4. c8[ f16 ef f g] af16[ f g ef f bf,] ef8[ g16 f ef d] c8[ r16 bf af g] f8[ r16 ef'16 d c]
          bf8[ r16 af g f] ef8[ r16 ef'16 f g] af8[ af, f'] g8[ b, c] \voiceTwo f8[ g g,] \voiceOne c4 r8
        }
      }
    >>
  >>
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}