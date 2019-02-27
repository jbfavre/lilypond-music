\version "2.18.2"

scoreTitleMarkupSetting = \markup \columns {
  \fill-line {
      \column {
        \line {
          \right-column {
            \vspace #1.1
            \fontsize #7 \sans \fromproperty #'header:title
            \fontsize #1 \typewriter \fromproperty #'header:subtitle
          }
        }
      }
      \column {
        \line {
          \fontsize #-2 \left-column {
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

  left-margin = \leftMargin
  right-margin = \rightMargin
  top-margin = \topMargin
  bottom-margin = \bottomMargin

  top-markup-spacing = \topToMarkupSpacing
  top-system-spacing = \topToSystemSpacing
  markup-system-spacing = \markupToSystemSpacing
  system-system-spacing = \systemToSystemSpacing
  score-markup-spacing = \scoreMarkupSpacing

  two-sided = \twoSided
  inner-margin = \innerMargin
  outer-margin = \outerMargin


  #(define fonts
    (set-global-fonts
     #:music fontMusic
     #:brace fontBrace
     #:roman fontRoman
     #:sans fontSans
     #:typewriter fontTypewriter
     #:factor (/ staff-height pt fontFactor)
    ))

  % special characters support http://lilypond.org/doc/v2.18/Documentation/notation/special-characters#ascii-aliases
  #(include-special-characters)

}