\new ChoirStaff = "versePsalmody" <<
    \new Staff = "verseSopranoAlto" \with { printPartCombineTexts = ##f } <<
      \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \global
      \clef treble
      \partcombine
      \new Voice = "verseSoprano" << \voiceOne { \sopranoVerseMusic } >>
      \new Voice = "verseAlto" << \voiceTwo { \altoVerseMusic } >>
      \new Lyrics \lyricsto "verseSoprano" { \reponsSopAltLyrics }
    >>
    \new Staff = "verseTenorBass" \with { printPartCombineTexts = ##f } <<
      \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \global
      \clef bass
      \new Voice = "verseTenor" << \voiceOne { \tenorVerseMusic } >>
      \new Voice = "verseBass" << \voiceTwo { \bassVerseMusic } >>
      \new Lyrics { \reponsTenBassLyrics }
    >>
    %\context Staff = "verseTenorBass" \new FiguredBass { \bassFigureStaffAlignmentUp \verseFiguredHarmony }
    %\context Staff = "verseTenorBass" \new FiguredBass { \bassFigureExtendersOn \verseFiguredBass }
  >>