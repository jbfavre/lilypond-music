\version "2.18.2"

pisteTempoPsalmodie = \silence \sopranoVerseMusic
pisteTempoVerse = \silence \sopranoVerseMusic
\paper {
  scoreTitleMarkup = \scoreTitleMarkupSetting
  oddFooterMarkup = \oddFooterMarkupSetting
}
partition = {
  <<
    \new ChoirStaff <<
      \new ChoirStaff = "SopranoAlto"
      {
        \set ChoirStaff.connectArpeggios = ##t
        \override ChoirStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        <<
          \new Voice = "sopranoVerseVoice" {
            \sopranoVerseMusic
          }
          \new Lyrics \lyricsto "sopranoVerseVoice" \groupedVersesLyrics
        >>
      }
    >>
  >>
}

%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
#(set-global-staff-size staffCustomSize)
\bookpart {
  \score {
    \keepWithTag #'visuel \partition
    \layout {
        ragged-last = ##f
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
        \override Score.RehearsalMark.font-family = #'typewriter
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
}
