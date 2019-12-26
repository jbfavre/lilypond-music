\new ChoirStaff = "versePsalmody" <<
    \new Staff = "verseSopranoAlto" \with { printPartCombineTexts = ##f } <<
      \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \global
      \clef treble
      \partcombine
      << \voiceOne { \sopranoVerseMusic } >>
      << \voiceTwo { \altoVerseMusic } >>
    >>
    \new Staff = "verseTenorBass" \with { printPartCombineTexts = ##f } <<
      \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \global
      \clef bass
      \partcombine
      << \voiceThree { \tenorVerseMusic } >>
      << \voiceFour { \bassVerseMusic } >>
    >>
    %\context Staff = "verseTenorBass" \new FiguredBass { \bassFigureStaffAlignmentUp \verseFiguredHarmony }
    %\context Staff = "verseTenorBass" \new FiguredBass { \bassFigureExtendersOn \verseFiguredBass }
  >>