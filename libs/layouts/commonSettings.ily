\version "2.18.2"

% Global staff size.
% Other sizes will be relative.
% Good to customize to get a "one page only" psalm, when possible
staffCustomSize = 18

topToMarkupSpacing =
  #'((basic-distance . 5)
     (minimum-distance . 5)
     (padding . 5)
     (stretchability . 5))

markupToSystemSpacing =
  #'((basic-distance . 5)
     (minimum-distance . 5)
     (padding . 5)
     (stretchability . 5))

systemToSystemSpacing = 
  #'((basic-distance . 5)
     (minimum-distance . 5)
     (padding . 5)
     (stretchability . 5))

#(set-default-paper-size "a4")

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