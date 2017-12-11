\version "2.18.2"

tagline = \markup {
      \teeny\sans \concat{"gravé avec LilyPond pour " \with-url #"https://www.psaumedudimanche.fr" {\underline{www.psaumedudimanche.fr}}}
}

copyright = "©"
poet = "AELF"

title = "Composition title"
subtitle = "Composition subtitle"
real_poet = "Poet name"
composer = "Composer name"
dedicace = ""
signature = ""
signatureDate = ""

% Global staff size.
% Other sizes will be relative.
% Good to customize to get a "one page only" psalm, when possible
staffCustomSize = 16

topToMarkupSpacing =
  #'((basic-distance . 6)
     (minimum-distance . 5)
     (padding . 5)
     (stretchability . 10))

topToSystemSpacing = 
  #'((basic-distance . 10)
     (minimum-distance . 5)
     (padding . 5)
     (stretchability . 10))

markupToSystemSpacing =
  #'((basic-distance . 20)
     (minimum-distance . 10)
     (padding . 5)
     (stretchability . 10))

systemToSystemSpacing = 
  #'((basic-distance . 20)
     (minimum-distance . 10)
     (padding . 5)
     (stretchability . 10))

scoreMarkupSpacing =
  #'((padding . 5)
   (basic-distance . 15)
   (minimum-distance . 5)
   (stretchability . 20))

#(set-default-paper-size "a4")

%{
  Default margins in millimeters (equal to 1\cm)
%}
leftMargin = 15
rightMargin = 15
topMargin = 10
bottomMargin = 10

%{
  Margin for two-sided printed scores
  Should be set to false for conductor's score, since it's usualy better
  to have conductor's score printed on one side only when possible
%}
twoSided = ##t
innerMargin = 15
outerMargin = 15

%{
  Fonts settings
%}
fontMusic = "emmentaler"            % default
fontBrace = "emmentaler"            % default
fontRoman = "Latin Modern Roman"
fontSans = "Latin Modern Sans"
fontTypewriter = "Monospace Regular"
fontFactor = 20 % unnecessary if the staff size is default