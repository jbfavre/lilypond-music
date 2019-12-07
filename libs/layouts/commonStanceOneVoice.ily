\new ChoirStaff = "stanceOneVoice" <<
    \new Staff <<
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \set Staff.instrumentName = \markup { \column { "Soliste" " ou" "Schola" } }
      \clef "treble"
      \global 
      \new Voice = "stanceRhythms" \stanceRhythms
      \new Voice = "stanceMusic" { \stanceMusic }
      \new Lyrics \lyricsto "stanceMusic" { \stanceLyrics }
    >>
  >>