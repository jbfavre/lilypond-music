\new PianoStaff \with { \pianoProperties } <<
  \set PianoStaff.instrumentName = #"Orgue"
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \global \clef treble
    \partcombine
    << \pianoSopranoMusic >>
    << \pianoAltoMusic >>
  >>
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \global \clef bass
    \partcombine
    << \pianoTenorMusic >>
    << \pianoBassMusic >>
  >>
>>