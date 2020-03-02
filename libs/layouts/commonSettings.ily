\version "2.18.2"

% Global staff size.
% Other sizes will be relative.
% Good to customize to get a "one page only" psalm, when possible
staffCustomSize = 18

topToMarkupSpacing =
  #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))

markupToSystemSpacing =
  #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))

systemToSystemSpacing = 
  #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))

%{
  Default margins in millimeters (equal to 1\cm)
%}
leftMargin = 10
rightMargin = 10
topMargin = 5
bottomMargin = 5

%{
  Margin for two-sided printed scores
  Should be set to false for conductor's score, since it's usualy better
  to have conductor's score printed on one side only when possible
%}
twoSided = ##t
innerMargin = 10
outerMargin = 10

%{
  Fonts settings
%}
fontMusic = "emmentaler"            % default
fontBrace = "emmentaler"            % default
fontRoman = "Latin Modern Roman"
fontSans = "Latin Modern Sans"
fontTypewriter = "Monospace Regular"
fontFactor = 20 % unnecessary if the staff size is default

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

  %left-margin = \leftMargin
  %right-margin = \rightMargin
  %top-margin = \topMargin
  %bottom-margin = \bottomMargin

  %top-markup-spacing = \topToMarkupSpacing
  %markup-system-spacing = \markupToSystemSpacing
  %system-system-spacing = \systemToSystemSpacing

  %two-sided = \twoSided
  %inner-margin = \innerMargin
  %outer-margin = \outerMargin

  scoreTitleMarkup = \scoreTitleMarkupSetting
  oddFooterMarkup = \oddFooterMarkupSetting

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
