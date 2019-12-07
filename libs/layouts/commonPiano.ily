\new PianoStaff \with { \pianoProperties } <<
  \set PianoStaff.instrumentName = #"Orgue"
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \once \override Staff.VerticalAxisGroup.remove-first = ##t
    \global \clef treble
    \partcombine
    << \pianoSopranoMusic >>
    << \pianoAltoMusic >>
  >>
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \once \override Staff.VerticalAxisGroup.remove-first = ##t
    \global \clef bass
    \partcombine
    << \pianoTenorMusic >>
    << \pianoBassMusic >>
  >>
>>