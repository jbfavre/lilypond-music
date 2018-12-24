\version "2.18.2"

pisteTempoPsalmodie = \silence \sopranoVerseMusic
pisteTempoVerse = \silence \sopranoVerseMusic

partition = {
  <<
    \new ChoirStaff <<
      \new Staff = "Soprano" <<
        \set Staff.instrumentName = \sopranoVoiceTitle
        \set Staff.shortInstrumentName = \markup { \right-column { \sopranoVoiceTitle } }
        \new Voice = "Sop" { \override Stem.direction = #UP   \marqueAntiphon \clef "treble" \global \tempoAntiphon \sopranoAntiphonMusic }
        \new Voice = "Alt" { \override Stem.direction = #DOWN                                \global \tempoAntiphon \altoAntiphonMusic }
        \new Lyrics \lyricsto "Sop" { \sopranoAntiphonLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = \bassVoiceTitle
        \set Staff.shortInstrumentName = \markup { \right-column { \bassVoiceTitle } }
        \new Voice = "Ten" { \override Stem.direction = #UP                \global \tempoAntiphon \tenorAntiphonMusic }
        \new Voice = "Bas" { \override Stem.direction = #DOWN \clef "bass" \global \tempoAntiphon \bassAntiphonMusic }
        \new Lyrics \lyricsto "Bas" { \bassAntiphonLyrics }
      >>
      \new ChoirStaff = "SopranoAlto" \with { \remove Time_signature_engraver }
      {
        \set ChoirStaff.connectArpeggios = ##t
        \override ChoirStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
        \set Staff.shortInstrumentName = \markup { \right-column { \sopranoVoiceTitle } }
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
          \new Voice = "altoVerseVoice" {
            \voiceOne { \silence \sopranoAntiphonMusic }
            \override Stem.direction = #DOWN
            \markPsalmody
            \tag #'visuel \altoVerseMusic
            \tag #'audio <<\altoVerseMusic \\ \pisteTempoVerse>>
          }
          \new Lyrics \lyricsto "sopranoVerseVoice" { \sopranoVerseRepons \sopranoVerseRepons }
        >>
      }
      \new Staff = "TenorBass" \with { \remove Time_signature_engraver }
      {
        \set ChoirStaff.connectArpeggios = ##t
        \override ChoirStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
        \set Staff.shortInstrumentName = \markup { \right-column { \bassVoiceTitle } }
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef "bass"
        <<
          \new Voice = "tenorVerseVoice" {
            \voiceFour { \silence \sopranoAntiphonMusic }
            \override Stem.direction = #UP
            \tag #'visuel \tenorVerseMusic
            \tag #'audio <<\tenorVerseMusic \\ \pisteTempoVerse>>
          }
          \new Voice = "bassVerseVoice" {
            \voiceFour { \silence \sopranoAntiphonMusic }
            \override Stem.direction = #DOWN
            \tag #'visuel \bassVerseMusic
            \tag #'audio <<\bassVerseMusic \\ \pisteTempoVerse>>
          }
        >>
      }
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