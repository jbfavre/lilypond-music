\new ChoirStaff = "StanceOneVoice" <<
    \new Staff \with {
      instrumentName = \markup { \column { "Soliste" " ou" "Schola" } }
      remove-first = ##t
    } <<
      \clef "treble"
      \global 
      \new Voice = "Rhythms" \stanceRhythms
      \new Voice = "Stance" { \stanceMusic }
      \new Lyrics \lyricsto "Stance" { \stanceLyrics }
    >>
  >>