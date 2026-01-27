\version "2.24.4"
\language "english"

\header {
  dedication = "à Céleste-Marie, partie trop tôt"
  title = "Bénis sois-tu"
  composer = "Jean Baptiste Favre"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key d \minor
  \time 3/8
  \tempo 4.=60
}

soprano = \relative c' {
  \global
  % En avant la musique.
  d8 f g a4 bf8 a4. g8 f e d4. \break
  d8 f g a4 b8 c4 c8 d4 d8 c4 c8 b4. \break
  b8 b c a4 a8 bf!4 bf8 bf8 (a) g8 f4. \break
  g8 g a f4 f8 g4 g8 f e4 d4.
}

alto = \relative c' {
  \global
  % En avant la musique.
  d8 d e f4 e8 f4. d8 cs cs d4.
  d8 d e f4 gs8 a4 a8 a4 a8 a4 a8 gs4.
  gs8 gs gs f4 f8 e4 e8 e4 e8 d4.
  d8 d d d4 d8 d4 d8 d8 a4 a4.
}

tenor = \relative c' {
  \global
  % En avant la musique.
  d8 d d d4 d8 d4. bf8 a g f4.
  d'8 a c c4 e8 e4 e8 d4 f8 fs4 fs8 e4.
  e8 e e c4 d8 d4 d8 cs4 cs!8 bf4.
  bf8 bf bf a4 a8 g4 g8 g a8 (g) f4.
}

bass = \relative c {
  \global
  % En avant la musique.
  d8 d d d4 g,8 d'4. g,8 a a d4.
  d8 d c8 f4 e8 a4 g8 f4 d8 ds4 ds8 e4.
  e8 e e f4 f8 g4 g8 a4 a8 bf4.
  g,8 g g d'4 c8 b4 b8 b cs4 d4.
}

verse = \lyricmode {
  % Ajouter ici des paroles.
  Bé -- nis sois- -- tu, Sei -- gneur, pour cet -- te vie.
  Bé -- nis sois- -- tu, Sei -- gneur, pour Cé -- les -- te- Ma -- rie.
  Bé -- nis sois- -- tu, toi qui nous as por -- tés.
  Bé -- nis sois- -- tu, qui viens  nous con -- so -- ler.
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol.staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \soprano \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "piccolo"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verse
      \new Staff \with {
        midiInstrument = "piccolo"
        instrumentName = \markup \center-column { "Ténor" "Basse" }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
%    \pianoReduction
  >>
  \layout { }
  \midi { }
}
