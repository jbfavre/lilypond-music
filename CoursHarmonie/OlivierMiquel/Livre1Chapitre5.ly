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
  max-systems-per-page = 14
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
      \partial 8 c8^"Léger et dansant"\mp  \bar ".|:"
      f8.-> af16-. c8-. bf4\< af8-.
      g16-> af f8 r4 r8 ef8\!
      af8.\mf-> c16-. ef8-. df4\< bf8-. \break
      c16 bf af8 r4 r8 af8\!
      f'8.->\f\> ef16 df8 ef4 c8\!
      df8.\mf->\> c16 bf8 c4 f,8\!
      bf8.\mp->\> af16 g8 af4 f8\! \break
      g16\p-> e e8 e2--
      f2.
      \mark \markup { \italic "fine" } \bar "||"
      af16^"legato"\mp g f g af8 (g16 f e f g c,
      af'16\< g f g) af8-. bf4\! bf8
      c8.->\f bf16 af8 bf4 c8
      af16-> g f8 r8 e^"plus doux"\mp (g bf
      af8.->) f16-. c8-. g'16 (af bf af g c,
      af'8.->) f16 c8\mf\< ef16 (f g af bf df
      c8.\!\f) bf16-. af8-.\> g4 bf8
      af8.\mf\! f16-.\< af-. bf-.\!\> g8-. e-.\! c\mp
      \tweak break-visibility #end-of-line-visible \mark \markup { \italic "D.C. al fine" } \bar "|." \break
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
                    d16-> (ef d c) bf8-> (a-. bf-.)
                    \set Timeing.beatStructure = 3,2
                    g16-> (bf d c bf g) c-> (bf a g)
                    \set Timeing.beatStructure = 2,3
                    d8-> (e-.) fs-> (bf-.) a-.
                    \set Timeing.beatStructure = 3,2
                    g4.~ g8 r8
                  }
  >>
}
\pageBreak
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 5.6"
    opus = "modèle"
  }
  \new Staff
  <<
    \clef treble \time 4/4 \key c \major
    \relative c'' { a4 c b e d b bf a f g e fs gs ds d d' cs a c b f! e g! e f e d f a d, g bf d, a' c a e' }
  >>
  \layout { \context { \Score \omit Score.BarLine \omit Score.TimeSignature \omit Score.Stem }}
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
    \clef treble \time 2/4 \key c \major
    \relative c'' {
      a4 a c b e2 d4 b bf2 a2 f4 g \break
      e fs gs2 (gs4) ds d!2 (d4) d' cs a c! b \break
      f!2 e4 g!e4 f8 e \tuplet 3/2 { d4 f a} \tuplet 3/2 {  d, g bf} \tuplet 3/2 { d, a' c} a e' \bar "||"  \break
      f4 d e bf a4. gs8 \tuplet 3/2 { a4 f g } ef4 d cs2 r8 e g bf \break
      a2 r8 g bf df e2 \tuplet 3/2 { d4 df bf } a4 bf8 af8 e!4 r4 e f \break
      af b! d2 r8 c b! a! f4 g8 f8 e4 f8 e8 \tuplet 3/2 { <d>4 (<d f>4 <d f a>4 } <d f a df>2) \bar "|."
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
    \clef treble \time 3/8 \key c \major
    \relative c'' {
      a8 c b e4. e8 d b r8 bf4 a4. r8 f8. g16 e4 fs8 \break
      gs8 ds r8 d4. d'8 cs a r8 c!8 b! f! e g e4 r8 f e d \break
      d8. f16 a8 a4. d,8 g bf bf4. r8 d, a' c c a e'4. \bar "||" \break
      d8. f16 c8 b4 d8 c b af af4 g8 f8. af16 b8 d4. f,8. af16 b8 \break
      c4. bf8 df af gf bf gf f!4 e!8 f16 g af bf af f g bf d! c b c a8 g fs f8 e8. df'16 c af f bf b g e8. ds16 e8 g4. gf8. f16 gf8 c4. b16 c d e e8 e,4. \break
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
             (else RIGHT) ;; otherwise     -> center-aligned
             )))
    \omit BarNumber
  }
ragged-last = ##f
}