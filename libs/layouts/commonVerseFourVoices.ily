\new ChoirStaff = "Psalmody" <<
    \new Staff = "SopranoAlto" <<
      \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
      \override Staff.VerticalAxisGroup.remove-first = ##t
      \global
      \clef treble
      \cadenzaOn
      \partcombine
      <<
        \voiceOne { \sopranoVerseMusic }
      >>
      <<
        \voiceTwo { \altoVerseMusic }
      >>
    >>
    \new Staff = "TenorBass" <<
      \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
      \override Staff.VerticalAxisGroup.remove-first = ##t
      \global
      \clef bass
      \cadenzaOn
      \partcombine
      <<
        \voiceThree { \tenorVerseMusic }
      >>
      <<
        \voiceFour { \bassVerseMusic }
      >>
    >>
  >>