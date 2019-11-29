\version "2.18.2"
\language "english"

\header {
  title = \markup
     \center-column {
       \combine \null \vspace #1
       "No name (yet)"
       " "
      }
  composer = "Jean Baptiste Favre"
  subtitle = ""
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 10
}
%#(set-global-staff-size 16)
%#(set-default-paper-size "a4landscape")

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = ##f
    composer = ##f
  }
  \new PianoStaff <<
    \new Staff
    <<
      \clef treble \time 3/8 \key f \minor
      \relative c' {
        r4.^"Calme et majestueux" r4.
        \new Voice = "soprano" { \voiceOne
          \repeat volta 2 {
            f8\mp g af c bf af g af bf af g e \break
            f8\mf g af af c df f [ef8.] df16 \acciaccatura ef16 df4 c8 \break
            df8\<\mf^"Élargir, avec plus d'emphase" b c gf'8.\f\!\> f16 ef8\! c\mf\< a bf f'8.\!\f\> ef16 df8\! \break
            bf8\mp\< g af
            }
          \alternative {
            { ef'8.\mf\!\> df16 c8 c8\!\p [b8.] c16 <c e,>4 r8 }
            { \override TextSpanner.bound-details.left.text = "rit."
              c8\mf\>\startTextSpan af f bf\p\> g e <c e g>4.\pp\stopTextSpan <c f>4. \fermata }
            } \break
          \key f \major
          \partial 8 c8^"Primesautier, rapide" f4. g a bf a8 bf16 a gs a \break
          c4 a8 fs4. g4 c,8  e4. f \break
          g4. a g8 a16 g fs g bf4 g8 e4. f4 f8 \break
          d'4. d4 d8 c4. (c4) f,8 df'4.^"Larmoyant, moins vite" \break
          df4 df8 c4. (c) \fermata r4.^"Malicieux" r4. r8 g8-. e-. \break
          c4-- r8 r4. r4. f8 e8 df8 df4.^"Pesant, moins vite" (df4.) \break
          c4 r8 r4. r4 c8^"Pesant, moins vite" f4. g4. af4. \break
          bf4. af8 bf16 af g af c4 af8 fs4. g4 c,8 \break
          e4. f g af g8 af16 g fs g \break
          bf4 g8 e4. f4 f8 df'4. df4 df8 \break
          c4. (c4) f,8 d'4.^"Primesautier, rapide" d4 d8 c4. (c4) f,8 \break
          f'4. f8 e d c4 a8 f4 bf8 a4. g \break
          f'4. (f4) d8 f4. f8 e d c4 a8 f4 bf8 \break
          a4 r8 g4 r8 f4 r8 d4 r8 f'4. \fermata \bar "||"
        }
      }
    >>
    \new Staff
    <<
      \clef bass \key f \minor
        \new Voice = "harmony" { \voiceOne
          \relative f {
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
                <g c>4. bf8 g8 bf8 af4. \fermata }
              }
            \key f \major
            \partial 8 s8 \repeat unfold 22 { s4. }
            r8 <g, g,>8-. <e e,>-. <c c,>4.-- \fermata
            c4.\startTrillSpan c16\stopTrillSpan d e f g a bf4 r8
            c4.\startTrillSpan e16\stopTrillSpan f g a bf c df4.
            (df4.) r4. r4. r8 g, e <c c,>4.
            (c4) r8 \repeat unfold 41 { s4. }
          }
        }
        \new FiguredBass {
          \figuremode {
            <5>4.
            <5>4.
            \repeat volta 2 {
              <5>4.
              <5>
              <6>
              <7 _\+>
              <5>
              <6>
              <6>
              <5>
              <5>
              <5>
              <5>
              <6>
              <5>
              }
            \alternative {
              { <5>4. <5> <5> }
              { <6 4>4. <7 _\+> <5> <5> }
              }
          }
        }
        \new Voice = "bass" { \voiceTwo
          \relative f, {
            f4.\sustainOn f\sustainOn
            \repeat volta 2 {
              f4.\sustainOn df\sustainOn ef\sustainOn c\sustainOn df\sustainOn bf'\sustainOn ef,\sustainOn af\sustainOn
              c->\sustainOn f,->\sustainOn bf->\sustainOn ef,->\sustainOn af\sustainOn
              }
            \alternative {
              {  df,\sustainOn g\sustainOn c4\sustainOn r8 }
              { c4.\sustainOn c f, (f)\fermata }
              }
          }
        }
        \new FiguredBass { \figuremode {
          <I>4. <I>
          \repeat volta 2 {
            <I> <VI> <V> <V> <VI> <IV> <V> <III> <V> <I> <IV> <V> <III>
          }
          \alternative {
            { <VI> <II> <V> }
            { <I> <V> <I> <I> }
          }
          }
        }
    >>
  >>
}
