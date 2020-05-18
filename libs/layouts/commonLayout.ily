\version "2.18.2"

scoreTitleMarkupSetting = \markup \columns {
  \fill-line {
      \column {
        \line {
          \left-column {
            \vspace #1.1
            \fontsize #7 \sans \fromproperty #'header:title
            \fontsize #1 \typewriter \fromproperty #'header:subtitle
          }
        }
      }
      \column {
        \line {
          \fontsize #-2
          \left-column {
            \line { \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
            \line { \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
            " "
            \typewriter \italic \fromproperty #'header:dedication
          }
        }
      }
    }
}
oddFooterMarkupSetting = \markup {
    \fill-line {
      \center-column {
        \sans
        \line {
          %% Copyright header field only on first page in each bookpart.
          %\on-the-fly #part-first-page \column {\fromproperty #'header:copyright }
          %\on-the-fly #part-first-page \column { \on-the-fly #last-page "−" }
          %% Tagline header field only on last page in the book.
          %\on-the-fly #last-page  \column {\fromproperty #'header:tagline }
        }
      }
    }
  }

\paper {
  scoreTitleMarkup = \scoreTitleMarkupSetting
  oddFooterMarkup = \oddFooterMarkupSetting
  % special characters support http://lilypond.org/doc/v2.18/Documentation/notation/special-characters#ascii-aliases
  #(include-special-characters)

}

%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
#(set-global-staff-size staffCustomSize)
\bookpart {
  \score {
    \partition
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
  \verseLyrics
}