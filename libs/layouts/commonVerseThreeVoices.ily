\new ChoirStaff = "Psalmody" <<
    \new Staff = "SopranoAlto" \with { printPartCombineTexts = ##f } <<
      \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
      \override Staff.VerticalAxisGroup.remove-first = ##t
      \global
      \clef treble
      \partcombine
      <<
        \voiceOne { \sopranoVerseMusic }
      >>
      <<
        \voiceTwo { \altoVerseMusic }
      >>
    >>
    \new Staff = "TenorBass" \with { printPartCombineTexts = ##f } <<
      \set Staff.shortInstrumentName = \markup { \right-column { "B" } }
      \override Staff.VerticalAxisGroup.remove-first = ##t
      \global
      \clef bass
      <<
        \voiceFour { \bassVerseMusic }
      >>
    >>
  >>