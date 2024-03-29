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

right = <<
  \relative c' {
    \global \voiceOne
    d4 f8 e f4 d4 g a8 g f4. d8
     bf'2 a8 g f e d1
  }
  \relative c' {
    \global \voiceTwo
    d1~d2~d4. d8
    g2 g8 g e e d1
  }
  >>
left = <<
  \relative c {
  \global \voiceOne
  f2 bf2 bf2 a4. d8
  d2. cs4 d1
  }
  \relative c {
  \global \voiceTwo
  d4. c8 bf4. a8 g2 d'4. d8
  g,2. a4 d1
  }
  >>

rightOne = \relative c' {
  \global
  d8 d f e f4 d8 d g4 a8 g f4. d8
  bf'4 bf8 bf a8 g f e d1
}
rightTwo = \relative c' {
  \global
  d8 d d d d4 d8 d d 4 d8 d d4. d8
  g4 g8 g g8 g e e d1
}

leftOne = \relative c {
  \global
  f8 f f f bf4 bf8 bf bf4 bf8 bf a4. d8
  d4 d8 d d d cs cs d1
}
leftTwo = \relative c {
  \global
  d8 d d c bf4 bf8 a g4 g8 g d'4. d8
  g,4 g8 g g g a a d1
}

verseOne = \lyricmode {
  Il y eût un soir, il y eût un ma -- tin,
  Et Dieu vit que ce -- la é -- tait bon
  Dieu vit que ce -- la é -- tait bon
}
\score {
  <<
    \new ChoirStaff <<
      \new Staff = "right"{ \clef treble \rightOne }
      \addlyrics {\verseOne}
      \new Staff = "right"{ \clef treble \rightTwo }
      \addlyrics {\verseOne}
      \new Staff = "left" { \clef bass \leftOne }
      \addlyrics {\verseOne}
      \new Staff = "left" { \clef bass \leftTwo }
      \addlyrics {\verseOne}
    >>
    \new PianoStaff <<
      \new Staff = "right"{ \clef treble \right }
      \new Staff = "left"{ \clef bass \left }
    >>
  >>
  \layout { ragged-last = ##f }
  \header {
    title = "Il y eût un soir, il y eût un matin"
  }
}
