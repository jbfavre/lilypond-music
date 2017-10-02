\book {
  \bookOutputSuffix "AllVoices"
  %%%%%%%%%%%%%%%% Voix groupées %%%%%%%%%%%%%%%%%
  \score {
    <<
      \keepWithTag #'audio \unfoldRepeats \partition
      \context Staff = "Soprano" {
        \set Score.midiMinimumVolume = #0.5
        \set Score.midiMaximumVolume = #0.7
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #1
      }
      \context Voice = "Soprano" {
        \set Score.midiMinimumVolume = #0.5
        \set Score.midiMaximumVolume = #0.7
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #1
      }
    >>
    \midi { \set midiMergeUnisons = ##t }
  }
}
\book {
  \bookOutputSuffix "Soprano"
  %%%%%%%%%%%%%%%% Voix séparées %%%%%%%%%%%%%%%%%
  \score { \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff <<
          \global \clef "treble"
          \new Voice = "Soprano"
          << \voiceOne { \tempoAntiphon \sopranoAntiphonMusic \startPsalmody << \sopranoVerseMusic \\ \pisteTempoVerse >> } >>
        >>
      >>
    >>
    \midi {}
  }
}
\book {
  \bookOutputSuffix "Alto"
  \score { \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff <<
          \global \clef "treble"
          \new Voice = "Alti"
          << \voiceOne { \tempoAntiphon \altoAntiphonMusic \startPsalmody << \altoVerseMusic \\ \pisteTempoVerse >> } >>
        >>
      >>
    >>
    \midi {}
  }
}
\book {
  \bookOutputSuffix "Tenor"
  \score { \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff <<
          \global \clef "treble"
          \new Voice = "Ténor"
          << \voiceOne { \tempoAntiphon \tenorAntiphonMusic \startPsalmody << \tenorVerseMusic \\ \pisteTempoVerse >> } >>
        >>
      >>
    >>
    \midi {}
  }
}
\book {
  \bookOutputSuffix "Bass"
  \score { \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff <<
          \global \clef "treble"
          \new Voice = "Basse"
          << \voiceOne { \tempoAntiphon \bassAntiphonMusic \startPsalmody << \bassVerseMusic \\ \pisteTempoVerse >> } >>
        >>
      >>
    >>
    \midi {}
  }
}