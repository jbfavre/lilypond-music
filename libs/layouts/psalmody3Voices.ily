\version "2.18.2"

pisteTempoPsalmodie = \silence \sopranoVerseMusic
pisteTempoVerse = \silence \sopranoVerseMusic

partition = {
  <<
    \new ChoirStaff <<
      \new Staff = "Soprano" <<
        \set Staff.instrumentName = \sopranoVoiceTitle
        \new Voice = "Sop" { \markAntiphon \clef "treble" \global \tempoAntiphon \sopranoAntiphonMusic }
        \new Lyrics \lyricsto "Sop" { \sopranoAntiphonLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \altoVoiceTitle
        \new Voice = "Alto" { \clef "treble" \global \tempoAntiphon \altoAntiphonMusic }
        \new Lyrics \lyricsto "Alto" { \altoAntiphonLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \bassVoiceTitle
        \new Voice = "Bass" { \clef "bass" \global \tempoAntiphon \bassAntiphonMusic }
        \new Lyrics \lyricsto "Bass" { \bassAntiphonLyrics }
      >>
      \new ChoirStaff = "SopranoAlto"
      {
        \set ChoirStaff.connectArpeggios = ##t
        \override ChoirStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
        \set Staff.shortInstrumentName = \markup { \right-column { "S." "A. ou T." } }
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        <<
          \new Voice = "sopranoVerseVoice" {
            \voiceOne { \silence \sopranoAntiphonMusic }
            \markPsalmody
            \tag #'visuel \sopranoVerseMusic
            \tag #'audio <<\sopranoVerseMusic \\ \pisteTempoVerse>>
          }
          \new Lyrics \lyricsto "sopranoVerseVoice" { \sopranoVerseRepons \sopranoVerseRepons }
          \new Voice = "altoVerseVoice" {
            \voiceTwo { \silence \sopranoAntiphonMusic }
            \tag #'visuel \altoVerseMusic
            \tag #'audio <<\altoVerseMusic \\ \pisteTempoVerse>>
          }
        >>
      }
      \groupedVersesLyrics
      \new Staff = "TenorBass"
      {
        \set ChoirStaff.connectArpeggios = ##t
        \override ChoirStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
        \set Staff.shortInstrumentName = \markup { \right-column { "B." } }
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        <<
          \new Voice = "bassVerseVoice" {
            \voiceFour { \silence \sopranoAntiphonMusic }
            \tag #'visuel \bassVerseMusic
            \tag #'audio <<\bassVerseMusic \\ \pisteTempoVerse>>
          }
        >>
      }
    >>
    \pianoScore
    \new FiguredBass { \figuredBass \verseFiguredBass }
    \new FiguredBass { \harmony \verseHarmony }
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
            \Staff
            \RemoveEmptyStaves
            \override NoteHead #'style = #'altdefault
            \override InstrumentName #'font-name = #"Monospace Regular"
        }
        \context {
            \Score
            \omit BarNumber
        }
        \context {
            \Voice
            \consists "Horizontal_bracket_engraver"
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
      dedication = \dedicace
    }
  }
  \verseLyrics
}
