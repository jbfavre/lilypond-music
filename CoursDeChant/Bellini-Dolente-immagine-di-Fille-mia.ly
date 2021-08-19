\version "2.22.0"
\language "english"

\paper {
  top-margin = 2 \cm
  bottom-margin = 2 \cm
  left-margin = 2 \cm
  right-margin = 2 \cm
  #(include-special-characters)
}
\header {
  title = "Dolente immagine di Fille mia"
  composer = "Bellini"
}
\score {
  <<
    \time 3/4
    \new ChoirStaff
    <<
      \new Voice = "canto" {
        \autoBeamOff
        \key g \major
        \relative c' {
          \partial 4. s4. s2.*3 \break
          r4 r8 b8\p e g b8. c16 b8 a g fs
          e8.[( fs16)] e8 e ds e
          fs8. g16 fs8 fs a g \break
          fs8.[( g16)] fs8 fs fs fs
          fs8. b16 fs8 fs fs fs
          fs8. b16 fs8\fermata b, e g \break
          b8.[( c16)] b8 a16[( b)] d8->  c
          b8. c16 b8 a16[( b)] d8->  c
          b4. a8 g fs \pageBreak
          g8. a16 b16 r16 e,8 g8. fs16
          e4 r8 b'8 b b
          b8. a16 a8 a g fs
          e4 r8 b' b b
          b8. a16 a8 b16[( a)] a[( g)] g[( fs)]
          e4 r4 r
          R2.
          r4 r8 g8 g g \break
          g8. a16 g8 a g f
          e8.[( f16)] e8 e e e
          e8. gs16 gs8 gs a c \break
          b8.[( c16)] b8 b b b
          b8. a16 a r g8 fs e8
          fs8.[( ds16)] b8\fermata b8 e g \pageBreak
          b8. c16 b8 a16[( b)] d8  c
          b8.[( c16)] b8 a16[( b)] d8  c
          b8.[( c16)] b8 a g fs
          << { g8. a16}{ s8 s\turn } >> b16 r16 e,8 g8. fs16 \break
          e4 r8\fermata e8 e g
          b8. c16 b8 a16[( b)] d8  c
          b8.[( c16)] b8 a16[( b)] d8  c
          b8.[( c16)] b8 a g fs \break
          << { g8. a16}{ s8 s\turn } >> b16 r16 e,8 g8. fs16
          e8 r r b'8 b b b8. a16 a8 a g fs
          e8 r r b'8 b b \break
          b8. a16 a8 b16[( a)] a[( g)] g[( fs)]
          e4 r4 r
          R2.
          R2.
          R2.\fermata
        }
      }
      \new Lyrics \lyricsto "canto" {
        Do -- len -- te_im -- ma -- gi -- ne Di Fil -- le mi -- a, Per -- chè sí squal -- li -- da mi siedi acc --
        can -- to&nbsp;? Che più de -- si -- de -- ri&nbsp;? Che più de -- si -- de -- ri&nbsp;? Di -- rot -- to
        pian -- to Io sul tuo ce -- ne -- re ver -- sai di -- nor, Io sul tuo
        ce -- ne -- re ver -- sai fi -- nor, Io sul tuo ce -- ne -- re ver -- sai fi -- nor, Io sul tuo
        ce --  ne -- re ver -- sai fi -- nor,
        Te mi che~im -- me -- mo -- re de' sa -- cri giu -- ri Io posa ac -- cen -- der -- mi ad al -- tra
        fa -- ce, Io pos -- sa~ac -- cen -- der -- mi ad al -- tra fa -- ce&nbsp;? Om -- bra di
        Fil -- li -- de, ri -- posa in pa -- ce, ri posa in pa -- ce; É~i -- nest in -- gui -- bi -- le l'an -- ti -- co&nbsp;ar --
        dor; Om -- bra di Fil -- li -- de, ri -- posa in pa -- ce, ri -- posa in pa -- ce; É~i -- nest in --
        gui -- bi -- le l'an -- tico ar -- dor, É~i -- nest in -- gui -- bi -- le l'an -- tico ar -- dor, É~i -- nest in --
        gui -- bi -- le l'an --  ti -- co&nbsp;ar -- dor.
      }
    >>
    \new PianoStaff
    <<
      \new Staff = "up" {
        %\autoBeamOff
        \clef treble
        \key g \major
        \relative c' {
          \partial 4. b8\p (e g)
          b8.( c16 \autoBeamOff b8) \autoBeamOn <g b>( <b fs> <b f>)
          <b e,>4( \autoBeamOff <a e>8) \autoBeamOn <a e>( <e g> <ds fs>)
          e8 r8 <e b g> r8 <e b g> r8
          <e b g>4 r4 r4
          \autoBeamOff  <e g>8[\pp( b) <e g>8( b)] <ds a'>[( b)]
          \autoBeamOn <e g>8( b) <e g>8( b) <e g>8( b)
          \autoBeamOff <ds a'>[( b) <ds a'>( b)] <e g>8[( b)]
          \autoBeamOff <ds fs>8[( b)] <ds fs> r8 <fs e as,>4(
          <fs ds b>4.) r8 <fs e as,>4(
          <fs ds b>4) r8\fermata r8 r4
          <e g>8[( b) <e g>8( b)] <c fs>8[( a)]
          <b g'>8[( d) <b g'>8( d)] <c fs>8[( a)]
          <b g'>8[( d) <b g'>8( d)] <c fs>8[( a)]
          <g e'>8[( b) <g e'>8( b)] <a ds>8[( b)]
          <g e'>8 r16 c'16( b8->)  <g b>[( <b fs> <b f>)]
          <b e,>4( <a e>8) <a e>[( <e g> <ds fs>)]
          e8 r16 c'16( b8->)  <g b>[( <b fs> <b f>)]
          <b e,>4( <a e>8) <a e>[( <e g> <ds fs>]
          e8.) c'16( b8->)  <g b>[( <b fs> <b f>)]
          <f b b>4( <e g c>8) <f a d>8[ <e g c> <d f b>]
          <e g c>8 <e g>8[ c( <e g>) c( <e g>)]
          <f d>8[( g,) <f' d>8( g,) <f' d>8( g,)]
          <c e>8[( g) <c e>8( g) <c e>8( g)]
          \override Beam.auto-knee-gap = #7
          <gs d'>8[^( \change Staff = "down" e) \change Staff = "up" <gs d'>8^( \change Staff = "down" e)] \change Staff = "up" <a c>8[^( \change Staff = "down" e)] \change Staff = "up"
          <gs b>8[^( \change Staff = "down" e) \change Staff = "up" <gs b>8^( \change Staff = "down" e) \change Staff = "up" <gs b>8^( \change Staff = "down" e)] \change Staff = "up"
          r8 <a e'>8 r8 <a e'>8 r8 <as e'>8
          <b ds>8 r8 r8\fermata r8 r4
          <e g>8[( b) <e g>8( b)] <c fs>8[( a)]
          <b g'>8[( d) <b g'>8( d)] <c fs>8[( a)]
          <b g'>8[( d) <b g'>8( d)] <c fs>8[( a)]
          <g e'>8[( b) <g e'>8( b)] <a ds>8[( b)]
          <g e'>4 r8\fermata r8 r4
          <e' g>8[( b) <e g>8( b)] <c fs>8[( a)]
          <b g'>8[( d) <b g'>8( d)] <c fs>8[( a)]
          <b g'>8[( d) <b g'>8( d)] <c fs>8[( a)]
          <g e'>8[( b) <g e'>8( b)] <a ds>8[( b)]
          <g e'>8 r16 c'16( b8->)  <g b>[( <b fs> <b f>)]
          <b e,>4( <a e>8) <a e>[( <e g> <ds fs>)]
          e8 r16 c'16( b8->)  <g b>[( <b fs> <b f>)]
          <b e,>4( <a e>8) <a e>[( <e g> <ds fs>]
          e8) <g g'>2 <fs fs'>8
          <e e'>8 g2( fs8 e8) r8 <e b g>8 r8 <e b g>8 r8  <e b g>2 r4 \fermata
        }
      }
      \new Staff = "down" {
        %\autoBeamOff
        \clef bass
        \key g \major
        \relative c' {
          \partial 4. r4 r8
          r4 r8 e8 (ds d)
          cs4-> (c8) c8( b <a b,>
          <e g>) r8 b r8 g r8 e4 r r
          e'8 r r4 b8 r8 e r8 r4 r
          b8 r r4 e8 r8
          b8 r8 r4 c4(b4.) r8 c4( b) r8\fermata r8 r4
          e8 r8 r4 d4( g8) r8 r4 d4( g,2) a4(
          b2) b,4(
          e8) r8 r8 e''8( ds d)
          cs4->( c8) c8( b <a b,>
          <e g>8) r8 r e'8( ds d)
          cs4->( c8) c8( b <a b,>
          <e g>8) r8 r  e'8( ds d)
          d4->( c8) f, g g,
          c8 r8 r4 c8 r8
          b8 r8 r4 b8 r8
          c8 r8 r4 c8 r8
          b8 r8 r4 a8 r8
          e8 r8 r4 e8 r8
          c'8 r8 c r c r
          b8 r r\fermata r8 r4
          e8 r8 r4 d4(
          g8) r8 r4 d4(
          g,2) a4(
          b2) b,4(
          e4) r8 \fermata r8 r4
          e'8 r8 r4 d4(
          g8) r8 r4 d4(
          g8) r8 r4 a,4(
          b2) b,4( e8) r8 r e''8( ds d)
          cs4->( c8) c8( b <a b,>
          <e g>8) r8 r8 e'8( ds d)
          cs4->( c8)
          <<
             \new Voice { c8( b <a b,> \voiceOne g8) <g b>8 <g b>8 <g b>8 r8 <a ds,>8 r8 <g b> <g b> <g b> r8 <a ds,>8 }
             \new Voice { \voiceTwo s4. e2( b4) e2( b4) }
          >>
          <e g>8 r8 b r g r e2 r4\fermata \bar "|."
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