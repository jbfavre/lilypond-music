\new ChoirStaff = "Antienne4Voix" <<
    \new Staff <<
      \set Staff.instrumentName = "Soprano"
      \clef "treble"
      \new Voice = "Sop" { \global \sopranoAntiphonMusic}
      \new Lyrics \lyricsto "Sop" { \sopranoAntiphonLyrics }
    >>
    \new Staff <<
      \set Staff.instrumentName = "Alto"
      \clef "treble" 
      \new Voice = "Alto" { \global \altoAntiphonMusic }
      \new Lyrics \lyricsto "Alto" { \altoAntiphonLyrics }
    >>
    \new Staff <<
      \set Staff.instrumentName = "Basse"
      \clef "bass" 
      \new Voice = "Bass" { \global \bassAntiphonMusic }
      \new Lyrics \lyricsto "Bass" { \bassAntiphonLyrics }
    >>
  >>