\version "2.18.2"
pisteTempoPsalmodie = \silence \sopranoVerseMusic
pianosopranoAntiphonMusic = \sopranoAntiphonMusic
pianosopranoVerseMusic = \sopranoVerseMusic
pianoaltoAntiphonMusic = \altoAntiphonMusic
pianoaltoVerseMusic = \altoVerseMusic
pianotenorAntiphonMusic = \tenorAntiphonMusic
pianotenorVerseMusic = \tenorVerseMusic
pianobassAntiphonMusic = \bassAntiphonMusic
pianobassVerseMusic = \bassVerseMusic
pisteTempoVerse = \silence \sopranoVerseMusic

partition = {
  <<
    \new ChoirStaff <<
      \new Staff = "Soprano" <<
        \set Staff.instrumentName = \sopranoVoiceTitle
        \new Voice = "Sop" { \dynamicUp \marqueAntiphon \clef "treble" \global \tempoAntiphon \sopranoAntiphonMusic }
        \new Lyrics \lyricsto "Sop" { \sopranoAntiphonLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \altoVoiceTitle
        \new Voice = "Alto" { \dynamicUp \clef "treble" \global \tempoAntiphon \altoAntiphonMusic }
        \new Lyrics \lyricsto "Alto" { \altoAntiphonLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \tenorVoiceTitle
        \new Voice = "Ten" { \dynamicUp \clef "treble_8" \global \tempoAntiphon \tenorAntiphonMusic }
        \new Lyrics \lyricsto "Ten" { \tenorAntiphonLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \bassVoiceTitle
        \new Voice = "Bass" { \dynamicUp \clef "bass" \global \tempoAntiphon \bassAntiphonMusic }
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
        << \keepWithTag #'visuel {\pianosopranoAntiphonMusic} >>
        << \keepWithTag #'visuel {\pianoaltoAntiphonMusic} >>
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \global \clef bass
        \partcombine
        << \keepWithTag #'visuel {\pianotenorAntiphonMusic} >>
        << \keepWithTag #'visuel {\pianobassAntiphonMusic} >>
      >>
    >>
  >>
}

%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
\bookpart {
  #(set-global-staff-size staffCustomSize)
  \score {
    \keepWithTag #'visuel \partition
    \layout {
        ragged-last = ##f
        % retrait pour les noms courts de voix
        short-indent = 0.8\cm
        \context {
            \Staff \RemoveEmptyStaves
            \override NoteHead #'style = #'altdefault
            \override InstrumentName #'font-name = #"Monospace Regular"
        }
        \override LyricText #'font-name = #"Latin Modern Sans"
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
}