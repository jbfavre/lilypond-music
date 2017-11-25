\version "2.18.2"

partition = {
  <<
    \new ChoirStaff <<
      \new Staff = "Soprano" <<
        \set Staff.instrumentName = \sopranoVoiceTitle
        \new Voice = "Sop" { \clef "treble" \global \sopranoMusic }
        \new Lyrics \lyricsto "Sop" { \sopranoLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \altoVoiceTitle
        \new Voice = "Alto" { \clef "treble" \global \altoMusic }
        \new Lyrics \lyricsto "Alto" { \altoLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \tenorVoiceTitle
        \new Voice = "Ten" { \clef "treble_8" \global \tenorMusic }
        \new Lyrics \lyricsto "Ten" { \tenorLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \bassVoiceTitle
        \new Voice = "Bass" { \clef "bass" \global \bassMusic }
        \new Lyrics \lyricsto "Bass" { \bassLyrics }
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