\version "2.18.2"
\language "english"

\header {
  title = \markup
     \center-column {
       \combine \null \vspace #1
       "Un zèbre en bord de mer"
       "Op. 1"
      }
  composer = "Jean Baptiste Favre"
  subtitle = ""
  tagline = ""
  date = "Clichy-la-Garenne, février 2020"
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 15
}
%#(set-global-staff-size 16)
%#(set-default-paper-size "a4landscape")
\score {
  \header {
    title = ##f
    composer = ##f
    subtitle = ##f
    tagline = ##f
    piece = ##f
  }
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "up"
    <<
      \clef treble \time 3/8
      \new Voice = "marks" {
        \set Score.markFormatter = #format-mark-box-alphabet
        \mark \default
          s4.^"Calme et majestueux" s4.
          \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
          \mark \markup { \musicglyph #"scripts.segno" }
          \repeat volta 2 {
            s8\mp s4 \repeat unfold 3 { s4. }
            s8\mf s4 \repeat unfold 3 { s4. }
            \mark \markup { \musicglyph #"scripts.coda" }
            s8\mf\<^"Élargir, avec plus d'emphase" s4
            s8.\f\!\> s16 s8\!
            s8\mf\< s4 s8.\!\f\> s16 s8\!
            s8\mp\< s4
          }
          \alternative {
            { s8\mf\!\> s4 s8\!\p s4 s4. }
            { \override TextSpanner.bound-details.left.text = "rit."
              s8\mf\>\startTextSpan s4 s8\p\> s4 s4.\pp\stopTextSpan s4. \fermata }
          }
      }
      \new Voice = "soprano" { \voiceOne
        \relative c' {
          \key f \minor
          r4. r4.
          \repeat volta 2 {
            f8 g af c bf af g af bf af g e \break
            f8 g af af c df f [ef8.] df16 \acciaccatura ef16 df4 c8
            df8 b c gf'8. f16 ef8 \break
            c a bf f'8. ef16 df8
            bf8 g af
            }
          \alternative {
            { ef'8. df16 c8 c8 [b8.] c16 <c e,>4 r8 \break }
            { c8 af f bf g e <c e g>4. <c a'>4. }
            }
        }
        \bar "||"
        \pageBreak
        \mark \default
        \relative c' {
          \key f \major r4
          c8 f8. g16 a c bf8 g bf a f a g4 c,8 d4 e8 f a c a b4 \break c4
          c,8 f8. g16 a c bf8 g bf a f a g4 c,8 d4 e8 f a g f4 e8 \break f4
          f8 bf8. a16 g8 a f a c8. bf16 a8 g4. r4 c,8 f8. g16 a c bf8 g bf c a cs d4. \break
          r4 f,8 f'8. e16 d8 c4 f,8 f'8. ef16 df8 c4. r4 f,8 f'8. e16 d8 c a c d e c f8 f,8 r8
          \bar "||"
        }
        \pageBreak
        \relative c'' {
          \mark \default
          \key d \minor r4 a8
          \repeat volta 2 {
            d, f bf a4 e8 f4. d4.
            e8 f g bf e d <g, bf c>8 g c bf gs a8 \break
            }
          \alternative {
            { a8 b cs f e d c g c bf gs a a e a g e f f e d e4 r16 a \break }
            { bf8 f bf a8. fs16 g8 a e a g8. e16 f8 g a g g a g a bf a bf df bf <df, g bf df> bf' g <e g bf c>4. \fermata \mark \markup { \musicglyph #"scripts.segno" } }
            }
          \bar "||"
          \cadenzaOn
            \stopStaff
              \repeat unfold 1 {
                s4.
                \bar ""
              }
           \startStaff
          \cadenzaOff
          \once \override Staff.KeySignature.break-visibility = #end-of-line-invisible
          \once \override Staff.Clef.break-visibility = #end-of-line-invisible
          \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
        }
        \break
        \relative c'' {
          \key f \minor \mark \markup { \musicglyph #"scripts.coda" }
          <af df>8 af df <g, c> a bf <g c> g c <f, bf> g af <f bf> c' bf <c, f bf> g'  af <e g bf> af g <c, e g>4. <c f>4. \fermata
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative f {
          %\mark "A"
          \repeat unfold 22 { s4. }
          %\mark "B"
          \repeat unfold 36 { s4. }
          %\mark "C"
          \repeat volta 2 {
            s4. a4. cs4. d4. bf4.bf4. e4. s4. <c f>4.
            }
          \alternative {
            { <cs e>4. <g' bf d> e <c f> <cs e> d d <a cs>4 r8 }
            { <d f>4. e e d d d d f s4. s4. }
            }
        }
      }
    >>
    \new Staff = "down"
    <<
      \clef bass \key f \minor
      \new Voice = "harmony" { \voiceOne
        \relative f {
          %\mark "A"
          r8 <f af c>[ <af c f>]
          r8 <f af c>[ <af c f>]
          \repeat volta 2 {
            r8 <f af c>[ <af c f>]
            r8 <f af df> <af df f>
            r8 <g bf ef> <bf ef g>
            r8 <g bf c> <g bf c>
            r8 <f af df> <af df f>
            r8 <f bf df> <bf df f>
            r8 <g bf ef> <bf ef g>
            r8 <ef, af c> <af c ef>
            r8 <e g c> <g bf c>
            r8 <a c ef> <a c f>
            r8 <f bf df> <bf df f>
            r8 <g bf ef> <bf ef g>
            r8 <ef, af c> <af c ef>
            }
          \alternative {
            { r8 <f af df> <af df f>
              r8 <b d f> <g d' f>
              <g c>16 (df' c) bf-. af-. g-. }
            { r8 <f af c> <af c f>
              <g c>4. bf8 g8 bf8 a4. \fermata }
            }
          %\mark "B"
          %\mark "C"
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative f, {
          %\mark "A"
          f4.\sustainOn f\sustainOn
          \repeat volta 2 {
            f4.\sustainOn df\sustainOn ef\sustainOn c\sustainOn df\sustainOn bf'\sustainOn ef,\sustainOn af\sustainOn
            c->\sustainOn f,->\sustainOn bf->\sustainOn ef,->\sustainOn af\sustainOn
            }
          \alternative {
            {  df,\sustainOn g\sustainOn c4\sustainOn r8 }
            { c4.\sustainOn c f, (f)\fermata }
            }
          %\mark "B"
          \key f \major
          r4. f'4. d f e4 c8 b4 bf8 a c f d g g, c4.
          f4. d f c b4 bf8 a bf g c4. f,4.
          \repeat unfold 19 { s4. }
          %\mark "C"
          \key d \minor
            \repeat volta 2 {
              r4. <d' f>4. <cs e a> <c! f a>
              <bf f'>4 a8
              <g e'>4. <c g'> <e c'> <f a>
              }
            \alternative {
              { <a, e' a> <bf g'> <c e g c> <f a> <cs e a> <d a'> <e gs b> a,16 e' a cs e r16 }
              { <d, bf'>4. <e bf'> <cs a'> <d a'> <b g'> <bf g'> <a f'> <df bf'> <bf g'> c8 g' c }
              }
            \bar "||"
            \cadenzaOn
              \stopStaff
                \repeat unfold 1 {
                  s4.
                  \bar ""
                }
             \startStaff
            \cadenzaOff
            \once \override Staff.KeySignature.break-visibility = #end-of-line-invisible
            \once \override Staff.Clef.break-visibility = #end-of-line-invisible
            \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
            \key f \minor
            <f, df'>4. <g df'> <ef bf' c> <f af c> <df bf'> <f af> <c c'> << { \voiceOne bf'8 g bf af4. \fermata } \\ { \voiceTwo f,4. (f4.) } >>
          }
        }
      \new FiguredBass {
        \figuremode {
          %\mark "A"
          <5>4. <5>4.
          \repeat volta 2 {
            <5>4. <5> <6> <7 _\+>
            <5> <6> <6> <5> <5> <5>
            <5> <6> <5>
            }
          \alternative {
            { <5>4. <5> <5> }
            { <6 4>4. <7 _\+> <5> <5> }
            }
          %\mark "B"
          \repeat unfold 36 { <_> }
          %\mark "C"
          <_>
          \repeat volta 2 {
            <5> <6> <4> <6> <6> <5> <6> <5>
            }
          \alternative {
            { <5> <6> <5> <5> <6> <5> <5> <5> }
            { <6> <5> <6> <5> <6> <6> <6 4> <6> <6> <5> }
            }
          <_>
          <6> <5> <6> <5> <5> <5> <5>
        }
      }
      \new FiguredBass {
        \figuremode {
          %\mark "A"
          <I>4. <I>
          \repeat volta 2 {
            <I> <VI> <V> <V>
            <VI> <IV> <V> <III> <V> <I>
            <IV> <V> <III>
            }
          \alternative {
            { <VI> <II> <V> }
            { <I> <V> <I> <I> }
            }
          %\mark "B"
          \repeat unfold 36 { <_> }
          %\mark "C"
          <_>
          \repeat volta 2 {
            <I> <V> <I> <VI> <II> <VII> <VII> <III>
            }
          \alternative {
            { <V> <IV> <VII> <III> <V> <I> <II> <V> }
            { <VI> <II> <V> <I> <IV> <IV> <I> <VI> <IV> <VII> }
            }
          <_>
          <VI> <II> <V> <I> <IV> <V> <I>
        }
      }
     >>
  >>
}
% Partie soprane
%{            \key f \major
          \partial 8 c8^"Primesautier, rapide" f4. g a bf a8 bf16 a gs a \break
          c4 a8 fs4. g4 a8 bf4. c d e \break
          d (d8) c bf c4. (c4) f,8 bf4. c d \break
          e f4. (f4) d8 b4. c4 f,8 bf4. a \break
          g8 bf d c a f a4. (a4) g8 f4. r4 c8  e4. \break
          f g4. a g8 a16 g fs g bf4 g8 e4. f4 f8 \break
          a4. bf c d c (c8) bf a a4. (g4) f8 \break
          d'4. d4 d8 c4. r4 f,8 df'4.^"Larmoyant, moins vite" df4 df8 c4. (c) \fermata \break
          s4.^"Malicieux, alerte" s4. r8 <g g'>8-. <e e'>-. \break
          <c c'>4-- r8 s4. s4. <f f'>8 <e e'>8 <df df'>8 <df df'>4.^"Pesant, moins vite" (<df df'>4.) \break
          <c c'>4 r8 r4. r4 c8^"Pesant, plus lent" f4. g4. af4. \break
          bf4. af8 bf16 af g af c4 af8 fs4. g4 c,8 \break
          e4. f g af g8 af16 g fs g \break
          bf4 g8 e4. f4 f8 df'4.^"Larmoyant" df4 df8 \break
          c4-. r8 r4 f,8 d'4.^"Plus joyeux" d4 d8 c4. r4 f,8 \break
          f'4.^"Éclatant" (f8) e d c4 a8 f4 bf8 a4. g \break
          f'4. r4 d8 f4. f8 e d c4 a8 f4 <bf bf'>8 \break
          <a a'>4->\sfz r8 <g g'>4->\sfz r8 <f a c f>4->\sfz \fermata r8 r4. <bf d f bf>4->\sfz r8 <f a c f>4.\sff \fermata \bar "||"
%}
% partie basse
%{            \key f \major
            \partial 8 s8 \repeat unfold 54 { s4. }
            r8 <g, g,>8-. <e e,>-. <c c,>4.-- \fermata
            c4.\startTrillSpan d16\stopTrillSpan e f g a bf c4 r8
            c4.\startTrillSpan e16\stopTrillSpan f g a bf c df4.
            r4. r4. r4. r8 g, e <c c,>4.
            (c4) r8 \repeat unfold 42 { s4. }
%}
