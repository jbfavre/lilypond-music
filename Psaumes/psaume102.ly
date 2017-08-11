\version "2.18.2"
\language "english"
stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

psaumeGlobal = {
  \key f \major
  \time 2/4
}
psaumeSopranoMusic =  \relative c' {
  \partial 4
  f8 g a4 g8 a c4 bf8 a g2 \breathe
  a8 a g a f d f g a2 \fermata
  \bar "|."
  \cadenzaOn \stemOff
  a\breve c4 \bar "||"
  b\breve g4 a \bar "||"
  a\breve g1 a4 f \bar "||"
  c'\breve bf1 g4 a \bar "|."
  \cadenzaOff \stemOn
}
psaumeAltoMusic =  \relative c' {
  \partial 4
  c8 c d4 bf8 c8 d4 d8 c e2 \breathe
  e8 e cs e a f d e c2 \fermata
  \bar "|."
  c\breve e4 \bar "||"
  d\breve d4 f \bar "||"
  e\breve cs1 e4 d \bar "||"
  d\breve e1 e4 c \bar "|."
}
psaumeTenorMusic =  \relative c' {
  \partial 4
  a8 g f4 f8 e8 f4 g8 a8 g2 \breathe
  g8 g a g f a bf bf a2 \fermata
  \bar "|."
}
psaumeBasseMusic =  \relative c {
  \partial 4
  f8 e d4 d8 c bf4 d8 f c2 \breathe
  cs8 cs a cs d c bf c f2 \fermata
  \bar "|."
  f,\breve a4 \bar "||"
  g\breve b4 c \bar "||"
  cs\breve a1 cs4 d \bar "||"
  bf\breve c1 e4 f \bar "|."
}

psaumeMainLyrics = \lyricmode {
  Le Sei -- gneur est ten -- dresse et pi -- tié,
  lent à la co -- lère et plein d’a -- mour.
}
psaumeVerseLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #-1
}

\header {
  title = "Psaume 102"
  subtitle = "24e dimanche ordinaire (année A)"
  composer = "Musique: Jean Baptiste Favre"
  poet = "Texte: AELF"
  copyright = \markup \null
  tagline = \markup \null
}

\score {
  \new GrandStaff
  <<
    \new ChoirStaff
    <<
      \new Staff \with {instrumentName = "Soprano" }
      <<
        \psaumeGlobal \clef treble
        \new Voice = "psaumeSoprano" { \psaumeSopranoMusic }
        \new Lyrics \lyricsto "psaumeSoprano" { \psaumeMainLyrics }
        \new Lyrics \lyricsto "psaumeSoprano" { \psaumeVerseLyrics }
      >>
      \new Staff \with { instrumentName = "Alto" }
      <<
        \psaumeGlobal \clef treble
        \new Voice = "psaumeAlto" { \psaumeAltoMusic }
      >>
      \new Staff \with { instrumentName = "Ténor" }
      <<
        \psaumeGlobal \clef "treble_8"
        \new Voice = "psaumeTenor" { \psaumeTenorMusic }
      >>
      \new Staff \with { instrumentName = "Basse" }
      <<
        \psaumeGlobal \clef bass
        \new Voice = "psaumeBasse" { \psaumeBasseMusic }
        \new Lyrics \lyricsto "psaumeBasse" { \psaumeMainLyrics }
        \new Lyrics \lyricsto "psaumeBasse" { \psaumeVerseLyrics }
      >>
    >>
  >>
}
\markup {
  \fill-line {
    \column {
      \left-align {
        \line {
          Bénis le Seigneur, ô mon âme,
        }
        \line {
          bénis son nom très \concat { s \underline a int, } tout mon être!
        }
        \line {
          Bénis le \concat {Seign \underline e ur,} ô mon âme,
        }
        \line {
          n’oublie \concat { auc \underline u n} de ses bienfaits!
        }
        \vspace #2
        \line {
          Car il pardonne toutes tes offenses
        }
        \line {
          et te guérit de \concat{ t \underline o ute} maladie ;
        }
        \line {
          il réclame ta \concat { v \underline i e} à la tombe
        }
        \line {
          et te couronne \concat {d’am \underline o ur} et de tendresse.
        }
        \vspace #2
        \line {
          Il n’est pas pour toujours en procès,
        }
        \line {
          ne maintient pas sans \concat { f \underline i n} ses reproches ;
        }
        \line {
          il n’agit pas envers \concat { n \underline o us} selon nos fautes,
        }
        \line {
          ne nous rend pas \concat { sel \underline o n} nos offenses.
        }
        \vspace #2
        \line {
          Comme le ciel domine la terre,
        }
        \line {
          fort est son \concat { am \underline o ur} pour qui le craint ;
        }
        \line {
          aussi loin qu’est \concat { l’or \underline i ent} de l’occident,
        }
        \line {
          il met loin de \concat { n \underline o us} nos péchés.
        }
      }
    }
  }
}






\layout{ ragged-last = ##f }
\midi{}
