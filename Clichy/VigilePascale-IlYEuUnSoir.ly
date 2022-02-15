\version "2.22.1"
\language "english"

\header {
  tagline = "Vigile Pascale - Lecture du livre de la Génèse"
}

\paper {
  #(set-paper-size "a4")
  #(include-special-characters)
  print-all-headers = ##t
}

global = {
  \key f \major
  \time 4/4
}

right = \relative c' {
  \global
  \repeat volta 2 {d8 d f e <d f>4 d8 d <d g>4 a'8 g <d f>4. d8}
  \alternative {
    {<g bf>4 bf8 bf a8 <g a>4 a16 a <e a>1}
    {<g bf>4 bf8 bf <g a>8 g <e f> e d1}
  }
}

left = \relative c {
  \global
  <d f>4. c8 <bf bf'>4. a8 <g bf'>4. g8 <d' a'>4. d8 <g, d''>2. <bf d'>4 <a cs'>1
  <g d''>2. <a cs'>4 <d d'>1
}
verseOne = \lyricmode {
  Il y eu un soir, il y eu un ma -- tin,
  Et Dieu vit que ce -- la é -- tait bon
  Dieu vit que ce -- la é -- tait bon
}
\score {
  \new ChoirStaff <<
    \new Staff = "right"{ \clef treble \right }
    \addlyrics {\verseOne}
    \new Staff = "left" { \clef bass \left }
  >>
  \layout { ragged-last = ##f }
  \header {
    title = "Il y eu un soir, il y eu un matin"
  }
}
