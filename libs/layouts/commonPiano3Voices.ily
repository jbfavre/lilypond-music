pianoScore = \new PianoStaff \with { \pianoProperties }
<<
  \set PianoStaff.instrumentName = #"Orgue"
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \global \clef treble
    \partcombine
    << \keepWithTag #'visuel {\pianoSopranoMusic} >>
    << \keepWithTag #'visuel {\pianoAltoMusic} >>
  >>
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \global \clef bass
    << \keepWithTag #'visuel {\pianoBassMusic} >>
  >>
>>