\version "2.18.2"

partition = {
  <<
    \new ChoirStaff <<
      \new Staff = "Soprano" <<
        \set Staff.instrumentName = \sopranoVoiceTitle
        \new Voice = "Sop" { \clef "treble" \global \sopranoRefrainMusic }
        \new Lyrics \lyricsto "Sop" { \sopranoRefrainLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \altoVoiceTitle
        \new Voice = "Alto" { \clef "treble" \global \altoRefrainMusic }
        \new Lyrics \lyricsto "Alto" { \altoRefrainLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \tenorVoiceTitle
        \new Voice = "Ten" { \clef "treble_8" \global \tenorRefrainMusic }
        \new Lyrics \lyricsto "Ten" { \tenorRefrainLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \bassVoiceTitle
        \new Voice = "Bass" { \clef "bass" \global \bassRefrainMusic }
        \new Lyrics \lyricsto "Bass" { \bassRefrainLyrics }
        \new FiguredBass { \figuredBass }
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
        %indent = 1.5\cm
        %short-indent = 0.5\cm
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
      poet = \real_poet
      poetPrefix = \poetPrefix
      dedication = \dedicace
    }
  }
  \markup {
    \columns {
      \column { " " }
      \column {
        \columns {
          \column { " " }
          \right-column {
            \sans \signature
            \sans \signatureDate
          }
        }
      }
    }
  }
}