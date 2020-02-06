\new PianoStaff \with { \pianoProperties } <<
  \set PianoStaff.instrumentName = #"Orgue"
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \once \override Staff.VerticalAxisGroup.remove-first = ##t
    \global \clef treble
    \new Voice = "soprani" { \voiceOne \pianoSopranoMusic }
    \new Voice = "alti" { \voiceTwo \pianoAltoMusic }s
  >>
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \once \override Staff.VerticalAxisGroup.remove-first = ##t
    \global \clef bass
    \new Voice = "tenors" { \voiceThree \pianoTenorMusic }
    \new Voice = "bass" { \voiceFour \pianoBassMusic }
  >>
>>