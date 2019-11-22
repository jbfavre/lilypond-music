\version "2.18.2"
\language "english"

\header {
  title = \markup
     \center-column {
       \combine \null \vspace #1
       "Tourbillon"
       " "
      }
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
  }
  \new PianoStaff <<
    \new Staff
    <<
      \clef treble \time 3/8 \key f \minor
      \relative c' {
        r4. r4.
        \new Voice = "soprano" { \voiceOne
          \repeat volta 2 {
            f8 g af c bf af g af bf af g e \break
            f8 g af af c df df [f8.] df16 df4 c8 \break
            df8 b c gf'8. f16 ef8 c a bf f'8. ef16 df8 \break
            bf8 g af
            }
          \alternative {
            { ef'8. df16 c8 c8 [b8.] c16 c4. }
            { c8 af f bf g e <c f>4. \fermata }
            }
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
              r8 <ef, g c> <g c>
              r8 <f af df> <af df f>
              r8 <f bf df> <bf df f>
              r8 <g bf ef> <bf ef g>
              r8 <ef, af c> <af c ef>
              r8 <e g c> <g bf e>
              r8 <a c ef> <a c f>
              r8 <f bf df> <bf df f>
              r8 <g bf ef> <bf ef g>
              r8 <ef, af c> <af c ef>
            }
            \alternative {
              { r8 <f af df> <af df f>
                r8 <b d f> <g d' f>
                <g c>16 df' c bf af g }
              { r8 <af c f> <f af c>
                <g c>4. a4. \fermata }
            }
          }
        }
        \new FiguredBass {
          \figuremode {
            <5>8 <5> <6>
            <5>8 <5> <6>
            \repeat volta 2 {
              <5> <5> <6>
              <5> <6> <6 4>
              <6> <6 4> <4\+>
              <5> <6> <6 4>
              <5> <6> <6 4>
              <6> <6 4> <5>
              <6> <6 4> <4\+>
              <5> <6 4> <5>
              <5> <6> <6 4>
              <5> <6> <6>
              <5> <6 4> <5>
              <6> <6 4> <4\+>
              <5> <6 4> <5>
              }
            \alternative {
              { <5>8 <6> <6 4> <5> <6> <5> <5>4. }
              { <5>8 <6> <5> <5> <5> <6 4> <5>4.  }
              }
          }
        }
        \new Voice = "bass" { \voiceTwo
          \relative f, {
            f4.\sustainOn f\sustainOn
            \repeat volta 2 {
              f4.\sustainOn df\sustainOn ef\sustainOn c\sustainOn df\sustainOn bf'\sustainOn ef,\sustainOn af\sustainOn
              c\sustainOn f,\sustainOn bf\sustainOn ef,\sustainOn af\sustainOn
              }
            \alternative {
              {  df,\sustainOn g\sustainOn c\sustainOn }
              { f,\sustainOn c'8 bf g f4. \fermata }
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
            { <I> <V> <I> }
          }
          }
        }
    >>
  >>
}
