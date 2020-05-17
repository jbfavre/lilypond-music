\new ChoirStaff = "Antophon4Voices" <<
    \new Staff = "AntiphonCounterpointStaff" <<
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \set Staff.instrumentName = "Ctre Chant"
      \clef "treble"
      \new Voice = "antiphonRhythms" { \antiphonRhythms }
      \new Voice = "antiphonCounterpoint" { \global \counterpointAntiphonMusic}
      \new Lyrics \lyricsto "antiphonCounterpoint" { \counterpointAntiphonLyrics }
    >>
    \new Staff = "AntiphonSopranoStaff" <<
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \set Staff.instrumentName = "Soprano"
      \clef "treble"
      \new Voice = "antiphonRhythms" { \antiphonRhythms }
      \new Voice = "antiphonSoprano" { \global \sopranoAntiphonMusic}
      \new Lyrics \lyricsto "antiphonSoprano" { \sopranoAntiphonLyrics }
    >>
    \new Staff = "AntiphonAltoStaff" <<
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \set Staff.instrumentName = "Alto"
      \clef "treble"
      \new Voice = "antiphonRhythms" \antiphonRhythms
      \new Voice = "antiphonAlto" { \global \altoAntiphonMusic }
      \new Lyrics \lyricsto "antiphonAlto" { \altoAntiphonLyrics }
    >>
    \new Staff = "AntiphonTenorStaff" <<
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \set Staff.instrumentName = "Ténor"
      \clef "treble_8"
      \new Voice = "antiphonRhythms" \antiphonRhythms
      \new Voice = "antiphonTenor" { \global \tenorAntiphonMusic }
      \new Lyrics \lyricsto "antiphonTenor" { \tenorAntiphonLyrics }
    >>
    \new Staff  = "AntiphonBassStaff" <<
      \once \override Staff.VerticalAxisGroup.remove-first = ##t
      \set Staff.instrumentName = "Basse"
      \clef "bass"
      \new Voice = "antiphonRhythms" \antiphonRhythms
      \new Voice = "AntiphonBass" { \global \bassAntiphonMusic }
      \new Lyrics \lyricsto "AntiphonBass" { \bassAntiphonLyrics }
    >>
    %\context Staff = "AntiphonBassStaff" \new FiguredBass {  \bassFigureStaffAlignmentDown \antiphonFiguredHarmony }
    %\context Staff = "AntiphonBassStaff" \new FiguredBass { \bassFigureExtendersOn \antiphonFiguredBass }
  >>