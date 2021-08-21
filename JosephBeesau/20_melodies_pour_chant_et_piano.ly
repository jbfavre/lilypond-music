\version "2.22.0"
\language "english"
\include "../libs/smallcaps.ily"
\include "../libs/layouts/book-titling.ily"
bookpartPaper = \paper {
  top-margin = 2 \cm
  bottom-margin = 2 \cm
  %left-margin = 2 \cm
  %right-margin = 2 \cm
  two-sided = ##t
  inner-margin = 2\cm
  binding-offset = 0.5\cm
  outer-margin = 1.5\cm

  #(include-special-characters)
}
cancelBookHeader = \header {
  title = ##f
  subtitle = ##f
  composer = ##f
}
cancelTagLine = \header {
  tagline = ##f
}

\book {
  \paper {
    top-margin = 2 \cm
    bottom-margin = 2 \cm
    left-margin = 2 \cm
    right-margin = 2 \cm
    bookTitleMarkup = \markup \column {
      \fill-line { \fontsize #5 \fromproperty #'header:composer }
      \when-property #'header:date \fill-line { \combine \vspace #1.2 \fontsize #1 \sans \fromproperty #'header:date }
      \combine \null \vspace #14
      \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
      \combine \null \vspace #4
      \fill-line { \fontsize #10 \fromproperty #'header:title }
      \combine \null \vspace #1
      \fill-line { \when-property #'header:subtitle \fontsize #3 \sans \fromproperty #'header:subtitle }
      \combine \null \vspace #3
      \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
      \combine \null \vspace #1
      \fill-line{
        \general-align #Y #0 {
          \epsfile #Y #55 #"JosephBeesau.eps"
        }
      }
    }
  }
  \header {
    title = "20 mélodies"
    subtitle = "pour chant et piano"
    composer = \markup {
      \center-column {
        \concat { \bold { "Joseph B" \smallCaps éesau }}
        \concat { \italic { 1871 - 1940 }}
      }
    }
  }
  \pageBreak
  \bookpart {
    \cancelBookHeader
    \include "20_melodies_pour_chant_et_piano-01_Nocturne.ly"
    \cancelTagLine
    \bookpartPaper
  }

  \bookpart {
    \cancelBookHeader
    \include "20_melodies_pour_chant_et_piano-10_Et_s_il_revenait_un_jour.ly"
    \cancelTagLine
    \bookpartPaper
  }

}
