\version "2.18.2"

% Beginning layout directives
\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-all-headers = true
  max-systems-per-page = 4
}

setStaffElements = {
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #5
  \override Staff.MultiMeasureRest #'font-size = #-1.5
}
% End of layout directives

% Beginning specific piece directives
\header {
  title = "Petite messe de Saint Vincent de Paul"
  subtitle = "Pour soliste et chœur à 2 voix, ou chœur à 3 voix"
  composer = \markup { \vspace #2 "Jean Baptiste Favre" \vspace #1 }
  arranger = "juillet 2017"
  tagline = ##f
}

\book {
  \markup { \vspace #1 }
  \include "PetiteMesseSaintVincentDePaul/Kyrie.ly"
}