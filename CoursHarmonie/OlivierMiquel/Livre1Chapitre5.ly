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
    piece = "exercice 5.5"
  }
  \new Staff
  <<
    \clef treble \time 3/4 \key f \minor
    \relative c' {
      \partial 8 c8 \bar ".|"
      f8. af16 c8 bf4 af8
      g16 af f8 r4 r8 ef8
      af8. c16 ef8 df4 bf8
      c16 bf af8 r4 r8 af8
      f'8. ef16 df8 ef4 c8
      df8. c16 bf8 c4 f,8
      bf8. af16 g8 af4 f8
      g16 e e8 e2
      f2.
      \tweak break-visibility #end-of-line-visible \mark \markup { \italic "fine" } \bar "||"
      af16 g f g af8 g16 f e f g c,
      af'16 g f g af8 bf4 bf8
      c8. bf16 af8 bf4 c8
      af16 g f8 r8 e g bf
      af8. f16 c8 g'16 af bf af g c,
      af'8. f16 c8 ef16 f g af bf df
      c8. bf16 af8 g4 bf8
      af8. f16 af bf g8 e c \bar".|"
      \tweak break-visibility #end-of-line-visible \mark \markup { \italic "D.C. al fine" } \bar "|." \break
                  }
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 5.6"
    opus = "version lente"
  }
  \new Staff
  <<
    \clef treble \time 5/8 \key g \minor
    \relative c'' { g4.~ g8 r8
                  }
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 5.7"
    opus = "version rapide"
  }
  \new Staff
  <<
    \clef treble \time 5/8 \key g \minor
    \relative c'' { g4.~ g8 r8
                  }
  >>
}
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
                    ef-> c-. d-> (c-.) bf-.
                    \set Timeing.beatStructure = 3,2
                    c16-> (d ef f g a) fs->( g a bf)
                    \set Timeing.beatStructure = 2,3
                    c8-> bf-. a->( fs-. g-.)
                    \set Timeing.beatStructure = 3,2
                    g-> (a-.) bf-. c-> (a-.)
                    \set Timeing.beatStructure = 2,3
                    e'16-> (f e d) c8-> (bf-. a-.)
                    \set Timeing.beatStructure = 3,2
                    g16-> (bf d c bf a) c-> (bf a g)
                    \set Timeing.beatStructure = 2,3
                    d8-> (ef-.) f-> (bf-.) a-.
                    \set Timeing.beatStructure = 3,2
                    g4.~ g8 r8
                  }
  >>
}
\layout {
  \context {
    \Score
    \override RehearsalMark.self-alignment-X =
      #(lambda (grob)
         (let* ((break-dir (ly:item-break-dir grob)))
           (case break-dir
             ((-1) RIGHT)  ;; end-of-line   -> right aligned
             ((1) LEFT)    ;; begin-of-line -> left-aligned
             (else CENTER) ;; otherwise     -> center-aligned
             )))
    \omit BarNumber
  }
ragged-last = ##f
}