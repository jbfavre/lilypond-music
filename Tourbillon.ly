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
        f8 g af c bf af g af bf af g e \break
        f8 g af bf c df ef [f8.] df16 df4 c8 \break
        c8 b c gf'8. f16 ef8 bf a bf f'8. ef16 df8 \break
        af8 g af ef'8. df16 c8 c8 [b8.] c16 c4.
      }
    >>
    \new Staff
    <<
      \clef bass \key f \minor
        \new Voice = "harmony" { \voiceOne
          \relative f {
            r8 <f af c>[ <af c f>]
            r8 <f af c>[ <af c f>]
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
            r8 <f af df> <af df f>
            r8 <b d f> <g d' f>
            <g c ef>16 d' c bf af g
          }
        }
        \new Voice = "bass" { \voiceTwo
          \relative f, {
            f4.\sustainOn f\sustainOn
            f4.\sustainOn df\sustainOn ef\sustainOn c\sustainOn df\sustainOn bf'\sustainOn ef,\sustainOn af\sustainOn
            c\sustainOn f,\sustainOn bf\sustainOn ef,\sustainOn af\sustainOn df,\sustainOn g\sustainOn c\sustainOn
          }
        }
    >>
  >>
}
