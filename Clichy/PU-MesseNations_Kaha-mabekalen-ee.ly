\version "2.24.3"
\language "english"

\header {
  title = "Kaha mabekalen éé"
  subtitle = "Prière universelle"
  subsubtitle = "Messe des nations, Clichy, 2024"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo 4=130
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  \partial 4
  e4 e4. c8 d4 d8 d8~d2 c4 a c8 d4.
  r4 a'4 \break a4. f8 g4 g8 g8~g4. d8 f4 f8 f8~f8 d8~d4
  r4 d'4 \break d4. c8 d4 d8 d8~d8 a4 g8~g4. f8 \break \time 2/4 a8 a4 g8 g4 d8 d8~d4
  e4 \break \time 4/4 e4. c8 d4 d8 d8~d2 c4 a c8 d4.~d2
}

verse = \lyricmode {
  % Ajouter ici des paroles.
  Ka -- ha ma -- bé -- ka -- lèn Ka -- ha é -- é
  Ka -- ha ma -- bé -- ka -- lèn  Ma -- bé -- ka -- lèn éé
  Ka -- ha ma -- bé -- ka -- lèn é -- é, na me -- swa ma -- ha -- nén' -- a
  Ka -- ha ma -- bé -- ka -- lèn Ka -- ha é -- é
}

\score {
  \new Staff \with {
    instrumentName = ""
    midiInstrument = "choir aahs"
  } { \sopranoVoice }
  \addlyrics { \verse }
  \layout { }
  \midi { }
}
