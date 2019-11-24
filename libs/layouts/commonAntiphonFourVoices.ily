\new ChoirStaff = "Antophon4Voices" <<
    \override ChoirStaff.VerticalAxisGroup.remove-first = ##t
    \new Staff = "AntiphonSopranoStaff" <<
      \set Staff.instrumentName = "Soprano"
      \clef "treble"
       \new Voice = "antiphonRhythms" \antiphonRhythms
       \new Voice = "antiphonSoprano" { \global \sopranoAntiphonMusic}
       \new Lyrics \lyricsto "antiphonSoprano" { \sopranoAntiphonLyrics }
    >>
    \new Staff = "AntiphonAltoStaff" <<
      \set Staff.instrumentName = "Alto"
      \clef "treble"
       \new Voice = "antiphonRhythms" \antiphonRhythms
      \new Voice = "antiphonAlto" { \global \altoAntiphonMusic }
      \new Lyrics \lyricsto "antiphonAlto" { \altoAntiphonLyrics }
    >>
    \new Staff = "AntiphonTenorStaff" <<
      \set Staff.instrumentName = "Ténor"
      \clef "treble_8"
       \new Voice = "antiphonRhythms" \antiphonRhythms
      \new Voice = "antiphonTenor" { \global \tenorAntiphonMusic }
      \new Lyrics \lyricsto "antiphonTenor" { \tenorAntiphonLyrics }
    >>
    \new Staff  = "AntiphonBassStaff" <<
      \set Staff.instrumentName = "Basse"
      \clef "bass"
       \new Voice = "antiphonRhythms" \antiphonRhythms
      \new Voice = "AntiphonBass" { \global \bassAntiphonMusic }
      \new Lyrics \lyricsto "AntiphonBass" { \bassAntiphonLyrics }
    >>
    \context Staff = "AntiphonBassStaff" \new FiguredBass {  \bassFigureStaffAlignmentDown \antiphonFiguredHarmony }
    \context Staff = "AntiphonBassStaff" \new FiguredBass { \bassFigureExtendersOn \antiphonFiguredBass }
  >>