\version "2.18.2"
\language "english"

tagName = #'no-figuredbass
perPageSystemNumber = 5
%tagName = ""
%perPageSystemNumber = 4

\header {
  title = "Un zèbre en bord de mer"
  composer = "Jean Baptiste Favre"
  poet = ""
  opus = "op. 1"
  dedication = \markup { \italic "Clichy-la-Garenne, février 2020" }
  subtitle = ""
  tagline = ""
}

\paper {
  #(include-special-characters)
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Latin Modern Roman"
     #:sans "Latin Modern Sans"
     #:typewriter "Monospace Regular"
     #:factor (/ staff-height pt 20)
    ))
  max-systems-per-page = 5
  systems-per-page = \perPageSystemNumber
}
%#(set-global-staff-size 16)
%#(set-default-paper-size "a4landscape")
\score {
  \removeWithTag \tagName \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "up"
    <<
      \clef treble \time 3/8
      \new Voice = "sopranoMarks" {
        \set Score.markFormatter = #format-mark-box-alphabet
        \mark \default
          s4.^"Calme et majestueux" s4.
          \repeat unfold 2 {
            s8\mp s4 \repeat unfold 3 { s4. } \break
            s8\mf s4 \repeat unfold 3 { s4. } s8\mf\<^"Élargir, avec plus d'emphase" s4 s8.\f\!\> s16 s8\! \break
            s8\mf\< s4 s8.\!\f\> s16 s8\! s8\mp\< s4
          }
          \alternative {
            { s8\mf\!\> s4 s8\!\p s4 s4. \break }
            { \override TextSpanner.bound-details.left.text = "rit."
              s8\mf\>\startTextSpan s4 s8\p\> s4 s4.\pp \break s4.\stopTextSpan }
          }
        %\mark "B"
        \bar "||"
        \mark \default
        s8\mf^"Léger, enjoué" s4 \repeat unfold 3 { s4. } s8\< s4 \break
        s4 s8 s8 s8 s8\f\! s4 s8\mf \repeat unfold 3 { s4. } \break
        s4. s8\< s4 s8 s8\! s8\! s8\> s8 s8\! s4 s8\mf s8\startTextSpan s4 \break
        s4. s4. s4.\stopTextSpan s4
            \override TextSpanner.bound-details.left.text = "acc." s8\startTextSpan s4. s8\< s8 s8 \break
        s4 s8\! s8\f\stopTextSpan s4 s4. s4. \override TextSpanner.bound-details.left.text = "rit." s8\startTextSpan s8 s8 s4\stopTextSpan s8 \break
            \override TextSpanner.bound-details.left.text = "acc." s8\startTextSpan^"Plus rapide, espiègle" s4 s4. s4. s8 s8\stopTextSpan s8
        %\mark "C"
        \bar "||"
        \mark \default
        s8\mf^"Méditatif, langoureux" s4 s4. \break
        s4. s4. s8\< s4 s4. s8\f\!\> s4 s4 s8\! \break
        s8\mf\< s4 s8\f\!\> s4 s8\!\mf s4 s4. s4. \override TextSpanner.bound-details.left.text = "rit." s8\startTextSpan s4 \break
        s4. s8\mp\stopTextSpan s4 s8\mf s4 s4. s4. s4. \break
        s8\< s4 s4. s8\f\!\> s4 s4 s8\! s8\f\> s4 s8\mf s4 \break
        s8\f\> s4 s8\mf s4 s8\p\< s4 s8\<\mp s4 s8\!\<\mf s4 s8\!\f s4 \break
        s8\f\>\startTextSpan s4 s8\!\mf s8 s8\stopTextSpan
        %\mark "D"
        \bar "||"
        \mark \default
        s8\mp^"Serein et apaisé" s4 \repeat unfold 3 { s4. } \break
        s8\mf s4 s4. \repeat unfold 2 { s4. } s8\mf\> s4 s8\mp s4 \break
        s8\mf\> s4 s8\mp s4 s8\mf\> s4 s8\!\mp\> s4 s8\!\p\>\startTextSpan s4 s8\!\pp s4 s4 s8\stopTextSpan
        \bar "|."
      }
      \new Voice = "soprano" { \voiceOne
        %\mark "A"
        \relative c' {
          \key f \minor r4. r4.
          \repeat unfold 2 {
            f8 g af c bf af g af bf af g e
            f8 g af af c df f [ef8.] df16 \acciaccatura ef16 df4 c8 df8 b c gf'8. f16 ef8
            c a bf f'8. ef16 df8 bf8 g af
            }
          \alternative {
            { ef'8. df16 c8 c8 [b8.] c16 <c e,>4 r8 }
            { c8 af f bf g e <c e g>4. <c a'>4 \fermata c8 }
            }
        }
        %\mark "B"
        \relative c' {
          \key f \major
          f8. g16 a c bf8 g bf a f a g4 c,8 <g d'>4 <g e'>8 <a c f> a' <f c'> <d f a> <d g b>4 <e g c>4
          c8 f8. g16 a c bf8 g bf a f a g4 c,8 <g d'>4 <g e'>8 <c f> <d f a> <bf d g> <c f>4 e8 <a, c f>4
          f'8 bf8. a16 g8 a f a c8. bf16 a8 g4. r4 c,8 f8. g16 a c bf8 g bf c a cs d4 \fermata f,8
          f'8. e16 d8 c a f8 f'8. ef16 df8 <e, g bf c>4 \fermata f8 f'8. e16 d8 c a c < f, bf d>_. <g bf e>_. g'_. <a, c f>8_. r8 \fermata a8
        }
        %\mark "C"
        \relative c'' {
          \key d \minor
          \repeat unfold 2 {
            d, f bf a4 e8 f4. d4.
            e8 f g bf e d <g, bf c>8 g c bf gs a8
            }
          \alternative {
            { a8 b cs f e d c g c bf gs a <e a> e a <d, g> e f f e d e4 r16 a }
            { bf8 f bf a8. fs16 g8 a e a g8. e16 f8 g a g g a g a bf a bf df bf
              <df, g bf df> bf' g <e g bf c>4. \fermata }
            }
        }
        %/mark "Coda"
        \relative c'' {
          \key f \minor
          f,8 g af c bf af g af bf af g e f8 g af af c df f [ef8.] df16 \acciaccatura ef16 df4 c8
          <af df>8 af df <g, c> a bf <g c> g c <f, bf> g af <f bf> c' bf <c, f bf> g'  af <e g bf> af g <c, e g>4. <c f>4. \fermata
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative f {
          %\mark "A"
          \repeat unfold 35 { s4. }
          %\mark "B"
          \repeat unfold 33 { s4. }
          %\mark "C"
          \repeat unfold 2 {
            a4. e'4. d4. bf4.bf4. e4. s4. <c f>4.
            }
          \alternative {
            { <cs e>4. <g' bf d> e <c f> s4. s4. d <a cs>4 s8 }
            { <d f>4. e e d d d d f s4. s4. }
            }
        }
        %/mark "Coda"
        \repeat unfold 17 { s4. }
      }
    >>
    \new Staff = "down"
    <<
      \clef bass \key f \minor
      \new Voice = "harmony" { \voiceOne
        \relative f {
          %\mark "A"
          r8 <f af c>[ <af c f>] r8 <f af c>[ <af c f>]
          \repeat unfold 2 {
            r8 <f af c>[ <af c f>] r8 <f af df> <af df f> r8 <g bf ef> <bf ef g> r8 <g bf c> <g bf c>
            r8 <f af df> <af df f> r8 <f bf df> <bf df f> r8 <g bf ef> <bf ef g> r8 <ef, af c> <af c ef>
            r8 <e g c> <g bf c> r8 <a c ef> <a c f> r8 <f bf df> <bf df f> r8 <g bf ef> <bf ef g> r8 <ef, af c> <af c ef>
            }
          \alternative {
            { r8 <f af df> <af df f> r8 <b d f> <g d' f> <g c>16 (df' c) bf-. af-. g-. }
            { r8 <f af c> <af c f> <g c>4. bf8 g8 bf8 a4. \fermata }
            }
          %\mark "B"
          s8 <a c>8 <a c> s8 <g bf> <g bf> s8 <a c>8 <a c> <bf c>4. s4. s4. s4. r8 bf4 (bf8) <a c>8 <a c>
          s8 <g bf> <g bf> s8 <a c>8 <a c> <bf c>4. s4. s4. g8 bf4 s4. s4. s4. s4. s4. s4. s8 <a c>8 <a c>
          s8 <bf d> <bf d> s4. s4. s8 <d f> <d f> s4. s8 <df f> <df f> s4. s4. s4. s4. s4.
          %\mark "C"
          \repeat unfold 34 { s4. }
          %/mark "D"
          r8 <f, af c>[ <af c f>] r8 <f af df> <af df f> r8 <g bf ef> <bf ef g> r8 <g bf c> <g bf c>
          r8 <f af df> <af df f> r8 <f bf df> <bf df f> r8 <g bf ef> <bf ef g> r8 <ef, af c> <af c ef>
        }
      }
      \new Voice = "bass" { \voiceTwo
        %\mark "A"
        \relative f, {
          f4. f
          \repeat unfold 2 {
            f4. df ef c df bf' ef, af c-> f,-> bf-> ef,-> af
            }
          \alternative {
            {  df, g c4 r8 }
            { c4. c f, (f)\fermata }
            }
        }
        %\mark "B"
        \relative f, {
          \key f \major
          f'4. d f e4 r8 b4 bf8 a f a d g g, c4. f4. d f e4 r8 b4 bf8 a bf g c4. f,4. <c' g' d'>4. <c f c'>4. <c g' bf>4.
          <c c'>4. (<c c'>4) r8 f4. g a8 c a <bf, f' bf>4 \fermata r8 bf'4. f8 a c bf4. c4 r8 bf8 <d f> <d f> a <c f> <c f> bf^. c^. c,^. f8^. f,^. \fermata r8
        }
        %\mark "C"
        \relative f, {
          \key d \minor
          \repeat unfold 2 { <d' f>4. <cs e a> <c! f a> <bf f'>4 a8 <g e'>4. <c g'> <e c'> <f a> }
          \alternative {
            { <a, e' a> <bf g'> <c e g c> <f a> <cs e a> <d a'> <e gs b> a,16 e' a cs e r16 }
            { <d, bf'>4. <e bf'> <cs a'> <d a'> <b g'> <bf g'> <a f'> <df bf'> <bf g'> c8 g' c \fermata}
          }
        }
        %/mark "D"
        \relative f, {
          \key f \minor
          f4. df ef c df bf' ef, af <f' df'>4. <g df'> <e bf' c> <f af c> <df bf'> <f af> <c c'> << { \voiceOne bf'8 g bf af4. \fermata } \\ { \voiceTwo f,4. (f4.) \fermata } >>
        }
      }
      \new Voice = "bassMarks" { \voiceThree
        \repeat unfold 34 { s4.\sustainOn } s4.
        s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
        s4. s4. s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4.\sustainOn s4. s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4. s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4.\sustainOn s4. s4.\sustainOn s4. s4.\sustainOn
        s4. s4. s4. s4. s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4. s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4. s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
        s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn s4.\sustainOn
      }
      \tag #'no-figuredbass \new FiguredBass \with { fontSize = #10 } {
        \figuremode {
          %\mark "A"
          <5>4. <5>4.
          \repeat unfold 2 {
            <5>4. <5> <6> <7 _\+> <5> <5> <6> <5> <5> <5> <5> <6> <5>
            }
          \alternative {
            { <5>4. <5> <5> }
            { <6 4>4. <7 _\+> <5> <5> }
            }
          %\mark "B"
          <5> <5> <5> <6> <6>4 <6 4>8 <6>4. <5>8 <5>4 <5>4. <5> <5> <5> <6> <6>4 <6>8 <6> <5> <5> <5>4. <5> <_> <_> <_> <5> <_> <5> <5> <6> <5> <5> <5> <5> <5> <5> <6> <5>8 <5> <_>  <5>4.
          %\mark "C"
          \repeat unfold 2 {
            <5> <6> <_> <6> <6> <5> <6> <5>
            }
          \alternative {
            { <5> <6> <5> <5> <6> <5> <5 _+> <5 _+> }
            { <6> <5> <6> <5> <6> <6> <6 4> <6> <6 _-> <5> }
            }
          <5>4. <5> <6> <7 _\+> <5> <5> <6> <5> <6> <5> <6> <5> <6> <5> <5> <5> <5>
        }
      }
      \tag #'no-figuredbass \new FiguredBass {
        \figuremode {
          %\mark "A"
          <I>4. <I>
          \repeat unfold 2 { <I> <VI> <V> <V> <VI> <IV> <V> <III> <V> <I> <IV> <V> <III> }
          \alternative {
            { <VI> <II> <V> }
            { <I> <V> <I> <I> }
            }
          %\mark "B"
          \repeat unfold 33 { <_> }
          %\mark "C"
          \repeat unfold 2 {
            <I> <V> <I> <VI> <II> <VII> <VII> <III>
            }
          \alternative {
            { <V> <IV> <VII> <III> <V> <I> <II> <V> }
            { <VI> <II> <V> <I> <IV> <IV> <I> <VI> <IV> <VII> }
            }
          <I> <VI> <V> <V> <VI> <IV> <V> <III>
          <VI> <II> <V> <I> <IV> <I> <V> <I> <I>
        }
      }
     >>
  >>
}