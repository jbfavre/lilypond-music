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
}

setStaffElements = {
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #5
  \override Staff.MultiMeasureRest #'font-size = #-1.5
}
% End of layout directives

% Beginning specific piece directives
\header {
  title = "Petite messe"
  subtitle = "Pour soliste et chœur à 2 voix, ou chœur à 3 voix"
  composer = \markup { \vspace #2 "Jean Baptiste Favre" \vspace #1 }
  arranger = "juin 2017"
  tagline = ##f
}

global = {
  \key f \minor
  \time 2/4
}

soloMusic = \relative c' {
    \mark \default
    \repeat volta 2 { f8 (g) aes (bes) c4 c c8 (bes16 aes) bes4 c2\fermata } | \break
    \mark \default
    \repeat volta 2 { c4 (des) c4. bes8 aes (g) aes (bes) g2\fermata } | \break
    \mark \default
    \repeat volta 2 { f8 (g) aes (bes) c4 c c8 (bes16 aes) g4 aes2\fermata }
  }
soloLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

womenMusic = \relative c' {
    aes'4 g f2 f4 g8 f8 e2\fermata
    aes2 aes4. g8 f4. g8 f4 (e)\fermata
    c'8 (bes) aes8 (bes16 g16) aes8 (g) f (ees) des (ees) e (f) c2\fermata
  }
womenLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

menMusic = \relative c {
    f,2 (des') bes8 (c des4) c2\fermata
    f4. f8 ees4 ees des8 des4 des8 c2\fermata
    aes4. aes8 des4. c8 bes8 (c16 des16) c4 f,2\fermata
  }
menLyrics = \lyricmode {
    Ky -- ri -- e
    Chri -- ste, Chris -- te, e -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }

\book {
  \markup { \vspace #1 }
  \markup { "Chaque phrase est chantée une première fois par le chantre" }
  \markup { "éventuellement accompagné du chœur " \bold "à l'unisson" }
  \markup { "puis répétée à 3 voix, l'assemblée chantant avec le chantre" }
  \markup { \vspace #1 }
  \score {
    \header {
      piece = \markup { \fontsize #4 \bold "Kyrie III" }
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
    >>
    \layout { }
    \midi { \tempo 4 = 75 }
  }
}