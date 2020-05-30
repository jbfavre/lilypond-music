\version "2.18.2"
\language "english"
\include "../libs/layouts/book-titling.ily"
%#(set-global-staff-size 14)
\header {
  title = "Pentecôte 2020"
  subtitle="Clichy la Garenne"
  composer = ""
  arranger = ""
  tagline = ##f
}
\paper {
  #(include-special-characters)
}
\book {
  \bookpart {
    \header {
      title = "Vigile de Pentecôte"
    }
    \score {
      \new ChoirStaff
      <<
        \new Staff
        <<
          \key e \minor
          \time 3/8
          \clef treble
          \new Voice = "soprano" {
            \relative c'' {
              b8 d cs b4 (a8) b4. a8 a b g g g fs e d e4. \bar "||" \break
              \cadenzaOn
              g\breve b1 fs4 \bar "|" g\breve a1 b4
              \cadenzaOff
              \bar "||"
            }
          }
          \new Lyrics \lyricsto "soprano" {
            \lyricmode {
              Heu -- reux le peu -- ple que le Sei -- gneur s’est choi -- si pour do -- maine.
            }
          }
        >>
      >>
      \header {
        piece = "Psaume 32"
      }
      \layout { ragged-last = ##f }
    }
    \score {
      \new ChoirStaff
      <<
        \new Staff
        <<
          \key a \major
          \time 3/8
          \clef treble
          \new Voice = "soprano" {
            \relative c'' {
              \cadenzaOn
              a\breve fs4 gs a b \bar "||" \break
              \cadenzaOff
              \partial 8 e,8 b'4. a8 d cs b4 a8 fs gs a b4. \bar "||" \break
            }
          }
          \new Lyrics \lyricsto "soprano" {
            \lyricmode {
              _ _ _ _ _
              À toi, lou -- ange et gloire é -- ter -- nel -- le -- ment&nbsp;!

            }
          }
        >>
      >>
      \header {
        piece = "Cantique de Daniel 3"
      }
      \layout { ragged-last = ##f }
    }
    \score {
      \new ChoirStaff
      <<
        \new Staff
        <<
          \key g \minor

          \clef treble
          \new Voice = "soprano" {
            \relative c'' {
              \time 2/4
              \partial 4 g8 g8 c4 bf8 g f ef c ef
              \time 3/4
              d2 ef8 f \break g4 c b8 c
              \time 2/4
              d2 \bar "||"
              \cadenzaOn
              c\breve bf1 g4 \bar "|" g\breve bf1 c4  \bar "||"
              \cadenzaOff
            }
          }
          \new Lyrics \lyricsto "soprano" {
            \lyricmode {
              Ren -- dez grâ -- ce au Sei -- gneur&nbsp;: il est bon&nbsp;! É -- ter -- nel est son a -- mour&nbsp;!
            }
          }
        >>
      >>
      \header {
        piece = "Psaume 106"
      }
      \layout { ragged-last = ##f }
    }
    \score {
      \new ChoirStaff
      <<
        \new Staff
        <<
          \key g \major
          \time 3/4
          \clef treble
          \new Voice = "soprano" {
            \relative c' {
              e4 b' b b2 g4 a2 c4 b2.
              b4 b d \break c2 b4 a2 a4 g2.
              b4 a g a2 fs4 \break g2 g4 fs2.
              fs4 g a b2 g4 a fs2 e2. \break
              \time 2/4
              b'4 g8 a b4 r8 b8 g a b a d cs b (a) b4. g8 \break
              c8 c b a g4. e8 g4 a b2
            }
          }
          \new Lyrics \lyricsto "soprano" {
            \lyricmode {
              Al -- le -- lu -- ia,
              al -- le -- lu -- ia&nbsp;!
              Al -- le -- lu -- ia,
              al -- le -- lu -- ia&nbsp;!
              Al -- le -- lu -- ia,
              al -- le -- lu -- ia&nbsp;!
              Al -- le -- lu -- ia,
              al -- le -- lu -- ia&nbsp;!
              Viens, Es -- prit Saint&nbsp;!
              Em -- plis le cœur de tes fi -- dè les&nbsp;!
              Al -- lume en eux le feu de ton a -- mours&nbsp;!
            }
          }
        >>
      >>
      \header {
        piece = "Acclamation de l'Évangile"
      }
      \layout { ragged-last = ##f }
    }
  }
  \bookpart {
    \header {
      title = "Dimanche de pentecôte"
    }
    \score {
      \new ChoirStaff
      <<
        \new Staff
        <<
          \key g \major
          \time 3/4
          \clef treble
          \new Voice = "soprano" {
            \relative c' {
              e4 b' b b2 g4 a2 c4 b2. \break
              b4 b d c2 b4 a2 a4 g2. \break
              b4 a g a2 fs4 g2 g4 fs2. \break
              fs4 g a b2 g4 a fs2 e2. \break
              \time 4/4
              b'2 g4 a b1 r4 b4 g a b a d cs b2 b2 \break
              g4 c c b a g2. e4 g2. a b
            }
          }
          \new Lyrics \lyricsto "soprano" {
            \lyricmode {
              Al -- le -- lu -- ia,
              al -- le -- lu -- ia&nbsp;!
              Al -- le -- lu -- ia,
              al -- le -- lu -- ia&nbsp;!
              Al -- le -- lu -- ia,
              al -- le -- lu -- ia&nbsp;!
              Al -- le -- lu -- ia,
              al -- le -- lu -- ia&nbsp;!
              Viens, Es -- prit Saint&nbsp;!
              Em -- plis le cœur de tes fi -- dè les&nbsp;!
              Al -- lu -- m'en eux le feu de ton a -- mours&nbsp;!
            }
          }
        >>
      >>
      \header {
        piece = "Acclamation de l'Évangile"
      }
      \layout { ragged-last = ##f }
    }
  }
}
