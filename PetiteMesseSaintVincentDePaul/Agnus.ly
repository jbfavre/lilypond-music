\version "2.18.2"

\header {
  piece = "Agnus Dei"
  tagline = ##f
}
\score {
  \new GrandStaff <<
    \new Staff \with {
      instrumentName = \markup \column { "Soliste" }
    } <<
      \key f \minor
      \time 4/4
      \clef treble
      \new Voice = "soliste" {
        \relative c' {
          \tempo 4. = 80
          f4 (g) aes2 g4 (aes) bes2 aes4 bes c bes aes g f e \break
          g f g aes f2 f bes4 aes g f g2 g2 \break
          g2 (c4) bes bes (g) aes2 bes4 (aes g f) g1 \break
          g2 (c4) bes bes (g) aes2 bes4 (aes g e) f1
        }
      }
      \new Lyrics \lyricsto "soliste" {
        \lyricmode {
          A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
          Mi -- se -- re -- re no -- bis, mi -- se -- re -- re no -- bis
          Do -- na no -- bis pa -- cem
          Do -- na no -- bis pa -- cem
        }
      }
    >>
    \new ChoirStaff \with {
      instrumentName = \markup {\left-align "Chœur"}
    } <<
      \new Staff \with {
        instrumentName = \markup {\right-align "voix 1"}
      } {
        \key f \minor
        \time 4/4
        \clef treble
        \new Voice = "femmes" {
          \relative c' {
            c'4 des c2 bes4 f'4 e2 c4 ees ees g c, e e g
            }
        }
      }
      \new Lyrics \lyricsto "femmes" {
        \lyricmode {
        }
      }
      \new Staff \with {
        instrumentName = \markup {\right-align "voix 2"}
      } {
        \key f \minor
        \time 4/4
        \clef bass
        \new Voice = "hommes" {
          \relative c {
            aes'4 fes f2 ees4 des c2 f4 g aes e f des c c
            }
        }
      }
      \new Lyrics \lyricsto "hommes" {
        \lyricmode {
        }
      }
    >>
    \new PianoStaff <<
      \new Staff {
        \key f \minor
        \time 4/4
        \clef treble
        \new Voice {
          \relative c' {
            <c f>4  <des g> <c aes'>2 <bes g'>4 <f' aes> <e bes'>2 <c aes'>4 <g' bes> <aes c> <g bes> <aes c,> <e g> <e f> <c e> \break
            g' f g aes f2 f bes4 aes g f g2 g2 \break
            g2 (c4) bes bes (g) aes2 bes4 (aes g f) g1 \break
            g2 (c4) bes bes (g) aes2 bes4 (aes g e) f1
          }
        }
      }
      \new Staff {
        \key f \minor
        \time 4/4
        \clef bass
        \new Voice {
          \relative c {
            <f aes>4 <fes bes> <f aes>2 <ees g>4 <des aes'> <c g'>2 <f aes>4 <ees g> <ees aes> <c e> <aes f'> <des bes> <c g> <c g>
          }
        }
      }
    >>
  >>
  \layout {
    ragged-last = ##f
  }
  \midi { }
}