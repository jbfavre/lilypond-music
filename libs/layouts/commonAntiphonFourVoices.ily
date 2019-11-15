\new ChoirStaff = "Antienne4Voix" <<
    \new Staff <<
      \set Staff.instrumentName = "Soprano"
      \override Staff.VerticalAxisGroup.remove-first = ##t
      \clef "treble"
      \new Voice = "Sop" { \global \sopranoAntiphonMusic}
      \new Lyrics \lyricsto "Sop" { \sopranoAntiphonLyrics }
    >>
    \new Staff <<
      \set Staff.instrumentName = "Alto"
      \override Staff.VerticalAxisGroup.remove-first = ##t
      \clef "treble" 
      \new Voice = "Alto" { \global \altoAntiphonMusic }
      \new Lyrics \lyricsto "Alto" { \altoAntiphonLyrics }
    >>
    \new Staff <<
      \set Staff.instrumentName = "Ténor"
      \override Staff.VerticalAxisGroup.remove-first = ##t
      \clef "treble_8" 
      \new Voice = "Ten" { \global \tenorAntiphonMusic }
      \new Lyrics \lyricsto "Ten" { \tenorAntiphonLyrics }
    >>
    \new Staff <<
      \set Staff.instrumentName = "Basse"
      \override Staff.VerticalAxisGroup.remove-first = ##t
      \clef "bass" 
      \new Voice = "Bass" { \global \bassAntiphonMusic }
      \new Lyrics \lyricsto "Bass" { \bassAntiphonLyrics }
    >>
  >>