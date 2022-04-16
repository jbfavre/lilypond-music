\version "2.18.2"
\language "english"

title = "Versets Alléluia (Alléluia Angevin)"
subtitle = "Vigile Pascale"
poet = "AELF"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, avril 2022"

global = {
  \key c \major
  \time 4/4
}

sopranoVerseMusic = \relative c' {
    \cadenzaOn
    e\breve a1 g4 \bar "|"
    a\breve a1 g4 \bar "|"
    g\breve c1 b4 \bar "||"
    a\breve a1 g4 \bar "|."
}

altoVerseMusic = \relative c' {
  c\breve e1 e4
  e\breve d1 d4
  e\breve e1 e4
  c\breve d1 d4
}

tenorVerseMusic = \relative c' {
  g\breve c1 b4
  c\breve c1 b4
  c\breve g1 g4
  c\breve c1 b4
}

basseVerseMusic = \relative c {
  c\breve a1 e'4
  a,\breve d1 g,4
  c\breve c1 e4
  f\breve f1 g4
}

\paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  indent = 1\cm
  % Plan for recto-verso printing with inner margin
  two-sided = ##t
  inner-margin =  2\cm
  outer-margin = 1.5\cm
  #(include-special-characters)
  }
FirstScoreHeader = \header {
    title = \title
    subtitle = \subtitle
    composer = \composer
    poet = \poet
  }
AllScoreLayout = \layout {
      ragged-last = ##f
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }

\score {
  {
    \new ChoirStaff
    <<
      \new Staff \with { shortInstrumentName = \markup { \column { "S." "A." } } }
      <<
        \clef "treble"
        \new Voice { \voiceOne \sopranoVerseMusic }
        \new Voice { \voiceTwo \altoVerseMusic }
      >>
      \new Staff \with { shortInstrumentName = \markup { \column { "T." "B." } } }
      <<
        \clef "bass"
        \new Voice { \voiceOne \tenorVerseMusic }
        \new Voice { \voiceTwo \basseVerseMusic }
      >>
    >>
  }
  \AllScoreLayout
  \FirstScoreHeader
}
\markuplist {
  \override #'(font-family . sans)
  \column {
    \fill-line {
      \column {
        \concat { \typewriter "1. " "Proclamez que le Seigneur est bon," }
        \concat { \bold { \typewriter "   " "Éternel est son amour&nbsp;!" } }
        \concat { \typewriter "   " "Que le dise la maison d’Israël" }
        \concat { \bold { \typewriter "   " "Éternel est son amour&nbsp;!" } }
      }
      \column {
        \concat { \typewriter "2. " "Le Seigneur est ma force et mon chant," }
        \concat { \bold { \typewriter "   " "le Seigneur est mon salut." } }
        \concat { \typewriter "   " "Je ne mourrai pas, non, je vivrai," }
        \concat { \bold { \typewriter "   " "je dirai l’œuvre de Dieu." } }
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "3. " "La pierre rejetée des bâtisseurs" }
        \concat { \bold { \typewriter "   " "est devenue Pierre d’Angle&nbsp;!" } }
        \concat { \typewriter "   " "Proclamez les œuvres du Seigneur&nbsp;:" }
        \concat { \bold { \typewriter "   " "La merveille devant nos yeux&nbsp;!" } }
      }
    }
  }
}
