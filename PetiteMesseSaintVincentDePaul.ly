\version "2.18.2"

\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 2.5\cm
  right-margin = 2.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  max-systems-per-page = #4
}
\layout {
  ragged-last = ##f
}
\midi { }
% Needed for unmeasured "gregorian like" pieces
\include "gregorian.ly"
"|" = \bar "||"
"`" = \divisioMinima

\include "book-titling.ily"

\include "PetiteMesseSaintVincentDePaul/Kyrie.ly"

\book {
  \header {
    title = \markup {
      \center-column {
        "Petite messe"
        "Saint Vincent de Paul"
      }
    }
    subtitle = \markup {
      \center-column {
        "Pour soliste et chœur à 2 voix"
        ou
        "chœur à 3 voix"
      }
    }
    composer = "Jean Baptiste Favre"
    date = "2017"
    copyright = "Reproduction interdite sans l'accord explicite de l'auteur"
  }
  \bookTitle "Petite messe Saint Vincent de Paul"
  \useRehearsalNumbers ##f


  \pageBreak
  \bookpart {
    \paper {
      bookTitleMarkup = \markup {
        \fill-line { \fontsize #10 \fromproperty #'header:piece }
      }
    }
    \header {
      piece = "Kyrie"
      tagline = ##f
    }
    \bookOutputSuffix "Kyrie"

    \markup { \vspace #2 }
    \markup { "Chaque phrase est chantée une première fois par le chantre" }
    \markup { "éventuellement accompagné du chœur " \bold "à l'unisson" }
    \markup { "puis répétée à 3 voix, l'assemblée chantant avec le chantre" }

    \score {
      \layout{ ragged-last = ##f }
      \midi{}
      \new GrandStaff
      <<
        \new Staff \with { instrumentName = "Soliste" }
        <<
          \kyrieGlobal \clef treble
          \new Voice = "kyrieSolistVoice" { \kyrieSolistMusic }
          \new Lyrics \lyricsto "kyrieSolistVoice" { \kyrieSolistLyrics }
        >>
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = "Soprano" }
          <<
            \kyrieGlobal \clef treble
            \new Voice = "kyrieSoprano" { \kyrieSopranoMusic }
            \new Lyrics \lyricsto "kyrieSoprano" { \kyrieSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" }
          <<
            \kyrieGlobal \clef treble
            \new Voice = "kyrieAlto" { \kyrieAltoMusic }
            \new Lyrics \lyricsto "kyrieAlto" { \kyrieAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" }
          <<
            \kyrieGlobal \clef "treble_8"
            \new Voice = "kyrieTenor" { \kyrieTenorMusic }
            \new Lyrics \lyricsto "kyrieTenor" { \kyrieTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" }
          <<
            \kyrieGlobal \clef bass
            \new Voice = "kyrieBasse" { \kyrieBasseMusic }
            \new Lyrics \lyricsto "kyrieBasse" { \kyrieBasseLyrics }
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \kyrieGlobal \kyrieSopranoMusic >>
            << \kyrieGlobal \kyrieAltoMusic >>
          >>
          \new Staff <<
            \clef bass
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \kyrieGlobal \kyrieTenorMusic >>
            << \kyrieGlobal \kyrieBasseMusic >>
          >>
        >>
      >>
    }
  }
  %\bookpart {
  %  \paper {
  %    bookTitleMarkup = \markup { \fill-line { \fontsize #10 \fromproperty #'header:piece } }
  %  }
  %  \include "PetiteMesseSaintVincentDePaul/Gloria.ly"
  %}
  %\bookpart {
  %  \paper {
  %    bookTitleMarkup = \markup { \fill-line { \fontsize #10 \fromproperty #'header:piece } }
  %  }
  %  \include "PetiteMesseSaintVincentDePaul/Sanctus.ly"
  %}
  %\bookpart {
  %  \paper {
  %    bookTitleMarkup = \markup { \fill-line { \fontsize #10 \fromproperty #'header:piece } }
  %  }
  %  \include "PetiteMesseSaintVincentDePaul/Agnus.ly"
  %}

}
\layout{}
\midi{}