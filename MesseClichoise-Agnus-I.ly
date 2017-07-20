\version "2.18.2"
\include "gregorian.ly"

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
  arranger = "juin 2017"
  tagline = ##f
}

global = {
  \key f \minor
  \time 4/4
}

soloMusic = \relative c' {
  \tempo 4. = 80
  f4 (g) aes2 g4 (aes) bes2 aes4 bes c bes aes g f e \break
  g f g aes f2 f bes4 aes g f g2 g2 \break
  g2 (c4) bes bes (g) aes2 bes4 (aes g f) g1 \break
  g2 (c4) bes bes (g) aes2 bes4 (aes g e) f1
}
soloLyrics = \lyricmode {
  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  Mi -- se -- re -- re no -- bis, mi -- se -- re -- re no -- bis
  Do -- na no -- bis pa -- cem
  Do -- na no -- bis pa -- cem
}

womenMusic = \relative c' {
  c'4 des c2 bes4 f'4 e2 c4 ees ees g c, e e g
  }
womenLyrics = \lyricmode {
  }

menMusic = \relative c {
  aes'4 fes f2 ees4 des c2 f4 g aes e f des c c
  }
menLyrics = \lyricmode {
  }

pianoone = \relative c' {
  <c f>4  <des g> <c aes'>2 <bes ees>4 <f' aes> <e bes'>2 <c aes'>4 <g' bes> <aes c> <g bes> <aes c,> <e g> <e f> <c e> \break
  g' f g aes f2 f bes4 aes g f g2 g2 \break
  g2 (c4) bes bes (g) aes2 bes4 (aes g f) g1 \break
  g2 (c4) bes bes (g) aes2 bes4 (aes g e) f1
}
pianotwo = \relative c {
  <f aes>4 <fes bes> <f aes>2 <ees g>4 <des aes'> <c g'>2 <f aes>4 <ees g> <ees aes> <c e> <aes f'> <des bes> <c g> <c g>
}

\book {
  \markup { \vspace #1 }
  \score {
    \header {
      piece = \markup { \fontsize #4 \bold "Agnus" }
    }
    \new GrandStaff <<
      \new Staff \with {
        instrumentName = \markup \column { "Soliste" }
      } <<
        \setStaffElements
        \global \clef treble
        \new Voice = "soliste" {
          \soloMusic
        }
        \new Lyrics \lyricsto "soliste" {
          \soloLyrics
        }
      >>
      \new ChoirStaff \with {
        instrumentName = \markup {\left-align "Chœur"}
      } <<
        \new Staff \with {
          instrumentName = \markup {\right-align "voix 1"}
        } {
          \setStaffElements
          \global \clef treble
          \new Voice = "femmes" {
            \womenMusic
          }
        }
        \new Lyrics \lyricsto "femmes" {
          \womenLyrics
        }
        \new Staff \with {
          instrumentName = \markup {\right-align "voix 2"}
        } {
          \setStaffElements
          \global \clef bass
          \new Voice = "hommes" {
            \menMusic
          }
        }
        \new Lyrics \lyricsto "hommes" {
          \menLyrics
        }
      >>
      \new PianoStaff <<
        \new Staff {
          \setStaffElements
          \global \clef treble
          \new Voice { \pianoone }
        }
        \new Staff {
          \setStaffElements
          \global \clef bass
          \new Voice { \pianotwo }
        }
      >>
    >>
    \layout {
      ragged-last = ##f
      %\context {
      %  \Staff
      %    \omit TimeSignature
      %}
      \context {
        \Score
          defaultBarType = "" 
      }
    }
    \midi { }
  }
}