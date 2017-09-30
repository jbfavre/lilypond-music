\version "2.18.2"

partition = {
  <<
    \new ChoirStaff <<
      \new Staff = "Soprano" <<
        \set Staff.instrumentName = \sopranoVoiceTitle
        \new Voice = "Sop" {
          \dynamicUp \global \tDebut \marqueAntiphon \sopranoAntiphonMusic
        }
        \new Lyrics \lyricsto "Sop" { \sopranoAntiphonLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \altoVoiceTitle
        \new Voice = "Alto" { \global \tDebut \altoAntiphonMusic
        }
        \new Lyrics \lyricsto "Alto" { \altoAntiphonLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \tenorVoiceTitle
        \new Voice = "Ten" { \clef "G_8" \global \tDebut \tenorAntiphonMusic
        }
        \new Lyrics \lyricsto "Ten" { \tenorAntiphonLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \bassVoiceTitle
        \new Voice = "Bass" {
          \clef "bass" \global \tDebut \bassAntiphonMusic
        }
        \new Lyrics \lyricsto "Bass" { \bassAntiphonLyrics }
      >>
      \new ChoirStaff = "SopranoAlto" \with { \remove Time_signature_engraver }
      {
        \set Staff.shortInstrumentName = \markup { \right-column { "S." "A." } }
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        \startPsalmody
        <<
          \new Voice = "sopranoVerseVoice" {
            \voiceOne { \silence \sopranoAntiphonMusic }
            \markPsalmody
            \tag #'visuel \sopranoVerseMusic
            \tag #'audio <<\sopranoVerseMusic \\ \pisteTempoVerse>>
          }
          \new Voice = "altoVerseVoice" {
            \voiceTwo { \silence \sopranoAntiphonMusic }
            \tag #'visuel \altoVerseMusic
            \tag #'audio <<\altoVerseMusic \\ \pisteTempoVerse>>
          }
        >>
      }
      \groupedVersesLyrics
      \new Staff = "TenorBass" \with { \remove Time_signature_engraver }
      {
        \set Staff.shortInstrumentName = \markup { \right-column { "T." "B." } }
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        <<
          \new Voice = "tenorVerseVoice" {
            \voiceThree { \silence \sopranoAntiphonMusic }
            \tag #'visuel \tenorVerseMusic
            \tag #'audio <<\tenorVerseMusic \\ \pisteTempoVerse>>
          }
          \new Voice = "bassVerseVoice" {
            \voiceFour { \silence \sopranoAntiphonMusic }
            \tag #'visuel \bassVerseMusic
            \tag #'audio <<\bassVerseMusic \\ \pisteTempoVerse>>
          }
        >>
      }
    >>
    \new PianoStaff \with { \pianoProperties }
    <<
      \set PianoStaff.instrumentName = #"Orgue"
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \global \clef treble
        \partcombine
        << \keepWithTag #'visuel {\pianosopranoAntiphonMusic \pianosopranoVerseMusic} >>
        << \keepWithTag #'visuel {\pianoaltoAntiphonMusic \pianoaltoVerseMusic} >>
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \global \clef bass
        \partcombine
        << \keepWithTag #'visuel {\pianotenorAntiphonMusic \pianotenorVerseMusic} >>
        << \keepWithTag #'visuel {\pianobassAntiphonMusic \pianobassVerseMusic} >>
      >>
    >>
  >>
}

%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
\bookpart {
  #(set-global-staff-size staffSize)
  \score {
    \keepWithTag #'visuel \partition
    \layout {
        ragged-last = ##f
        % retrait pour les noms courts de voix
        short-indent = 0.8\cm
        \context { \Staff \RemoveEmptyStaves \override NoteHead #'style = #'altdefault }
    }
    \header {
      title = \title
      subtitle = \subtitle
      composer = \composer
      composerPrefix = \composerPrefix
      poet = \poet
      poetPrefix = \poetPrefix
    }
  }
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
        \set Voice.midiMinimumVolume = #0.8
        \set Voice.midiMaximumVolume = #1
      }
    >>
    \midi { \set midiMergeUnisons = ##t }
  }
  %%%%%%%%%%%%%%%% Voix séparées %%%%%%%%%%%%%%%%%
  \score { \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff <<
          \global \clef "treble"
          \new Voice = "Soprano"
          << \voiceOne { \tDebut \sopranoAntiphonMusic \startPsalmody << \sopranoVerseMusic \\ \pisteTempoVerse >> } >>
        >>
      >>
    >>
    \midi {}
  }
  \score { \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff <<
          \global \clef "treble"
          \new Voice = "Alti"
          << \voiceOne { \tDebut \altoAntiphonMusic \startPsalmody << \altoVerseMusic \\ \pisteTempoVerse >> } >>
        >>
      >>
    >>
    \midi {}
  }
  \score { \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff <<
          \global \clef "treble"
          \new Voice = "Ténor"
          << \voiceOne { \tDebut \tenorAntiphonMusic \startPsalmody << \tenorVerseMusic \\ \pisteTempoVerse >> } >>
        >>
      >>
    >>
    \midi {}
  }
  \score { \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff <<
          \global \clef "treble"
          \new Voice = "Basse"
          << \voiceOne { \tDebut \bassAntiphonMusic \startPsalmody << \bassVerseMusic \\ \pisteTempoVerse >> } >>
        >>
      >>
    >>
    \midi {}
  }
}