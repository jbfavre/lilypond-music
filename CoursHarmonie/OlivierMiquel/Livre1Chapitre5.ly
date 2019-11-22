\version "2.18.2"
\language "english"

\header {
  title = \markup
     \center-column {
       \combine \null \vspace #1
       "L'écriture musicale"
       "Les bases fondamentales"
       " "
      }
  subtitle = "Livre 1, chapitre 5"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 10
}
%#(set-global-staff-size 16)
%#(set-default-paper-size "a4landscape")

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 5.8"
  }
  \new Staff
  <<
    \clef treble \time 5/8 \key g \minor
    \relative c'' { g8-> (a)-. bf-. fs-> g-.
                    \set Timeing.beatStructure = 2,3
                    ef-> c d-> (c) bf
                    \set Timeing.beatStructure = 3,2
                    c16-> (d ef f g a) fs->( g a bf)
                    \set Timeing.beatStructure = 2,3
                    c8-> bf a->( fs g)
                    \set Timeing.beatStructure = 3,2
                    g-> (a-.) bf-. c-> (a)
                    \set Timeing.beatStructure = 2,3
                    e'16-> (f e d) c8-> (bf a)
                    \set Timeing.beatStructure = 3,2
                    g16-> (bf d c bf a) c-> (bf a g)
                    \set Timeing.beatStructure = 2,3
                    d8-> (ef-.) f-> (bf-.) a-.
                    \set Timeing.beatStructure = 3,2
                    g4.~ g8 r8
                  }
  >>
}

\layout { \context { \Score \omit BarNumber } ragged-last = ##f }