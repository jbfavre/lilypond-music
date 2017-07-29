\version "2.18.2"

\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 2.5\cm
  right-margin = 2.5\cm
  top-margin = 3\cm
  bottom-margin = 3\cm
  top-passding = 3\cm
  bottom-padding = 3\cm
  max-systems-per-page = #4
}
% Needed for unmeasured "gregorian like" pieces

\include "book-titling.ily"


blankPage = {
    \pageBreak
    \stopStaff
    \cadenzaOn
    \once \override Score.BarNumber #'break-visibility = #all-invisible
    \once \override Staff.StaffSymbol #'stencil = ##f
    \once \override Staff.Clef #'transparent = ##t
    \bar ""
    \once \override Staff.BarLine #'stencil = ##f
    \once \override Staff.TimeSignature #'stencil = ##f
    \once \override Staff.KeySignature #'stencil = ##f
    \cadenzaOff
    \startStaff
    \pageBreak
  }

\include "PetiteMesseSaintVincentDePaul/Kyrie.ly"
\include "PetiteMesseSaintVincentDePaul/Gloria.ly"
\include "PetiteMesseSaintVincentDePaul/Sanctus.ly"
\include "PetiteMesseSaintVincentDePaul/Agnus.ly"

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
        "Pour soliste et chœur"
        ou
        "chœur seul"
      }
    }
    composer = "Jean Baptiste Favre"
    date = "2017"
    copyright = "Reproduction interdite sans l'accord explicite de l'auteur"
  }
  \bookTitle "Petite messe Saint Vincent de Paul"
  \useRehearsalNumbers ##f


  \pageBreak
  \blankPage
  \blankPage
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

    \markup { \vspace #2 }
    \markup { "Chaque phrase est chantée une première fois par le soliste," }
    \markup { "    éventuellement accompagné du chœur " \bold "à l'unisson." }
    \markup { "Elle est ensuite reprise en polyphonie, l'assemblée chantant la voix de soliste" }

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
        %\new PianoStaff <<
        %  \new Staff <<
        %    \clef treble
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \kyrieGlobal \kyrieSopranoMusic >>
        %    << \kyrieGlobal \kyrieAltoMusic >>
        %  >>
        %  \new Staff <<
        %    \clef bass
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \kyrieGlobal \kyrieTenorMusic >>
        %    << \kyrieGlobal \kyrieBasseMusic >>
        %  >>
        %>>
      >>
    }
  }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup {
        \fill-line { \fontsize #10 \fromproperty #'header:piece }
      }
    }
    \header {
      piece = "Gloria"
      tagline = ##f
    }

    \score {
      \layout{ ragged-last = ##f }
      \midi{}
      \new GrandStaff
      <<
        \new Staff \with { instrumentName = "Soliste" }
        <<
          \gloriaGlobal \clef treble
          \new Voice = "gloriaSolistVoice" { \gloriaSolistMusic }
          \new Lyrics \lyricsto "gloriaSolistVoice" { \gloriaSolistLyrics }
        >>
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = "Soprano" }
          <<
            \gloriaGlobal \clef treble
            \new Voice = "gloriaSoprano" { \gloriaSopranoMusic }
            \new Lyrics \lyricsto "gloriaSoprano" { \gloriaSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" }
          <<
            \gloriaGlobal \clef treble
            \new Voice = "gloriaAlto" { \gloriaAltoMusic }
            \new Lyrics \lyricsto "gloriaAlto" { \gloriaAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" }
          <<
            \gloriaGlobal \clef "treble_8"
            \new Voice = "gloriaTenor" { \gloriaTenorMusic }
            \new Lyrics \lyricsto "gloriaTenor" { \gloriaTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" }
          <<
            \gloriaGlobal \clef bass
            \new Voice = "gloriaBasse" { \gloriaBasseMusic }
            \new Lyrics \lyricsto "gloriaBasse" { \gloriaBasseLyrics }
          >>
        >>
        %\new PianoStaff <<
        %  \new Staff <<
        %    \clef treble
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \kyrieGlobal \kyrieSopranoMusic >>
        %    << \kyrieGlobal \kyrieAltoMusic >>
        %  >>
        %  \new Staff <<
        %    \clef bass
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \kyrieGlobal \kyrieTenorMusic >>
        %    << \kyrieGlobal \kyrieBasseMusic >>
        %  >>
        %>>
      >>
    }
  }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup {
        \fill-line { \fontsize #10 \fromproperty #'header:piece }
      }
    }
    \header {
      piece = "Sanctus"
      tagline = ##f
    }

    %\markup { \vspace #2 }
    %\markup { "Chaque phrase est chantée une première fois par le chantre" }
    %\markup { "éventuellement accompagné du chœur " \bold "à l'unisson" }
    %\markup { "puis répétée à 3 voix, l'assemblée chantant avec le chantre" }

    \score {
      \layout{
        ragged-last = ##f
      }
      \midi{}
      \new GrandStaff
      <<
        %\new Staff \with { instrumentName = "Soliste" }
        %<<
        %  \sanctusGlobal \clef treble
        %  \new Voice = "sanctusSolistMusic" { \sanctusMainSolistMusic }
        %  \new Lyrics \lyricsto "sanctusSolistMusic" { \sanctusMainSolistLyrics }
        %  \new Lyrics \lyricsto "sanctusSolistMusic" { \sanctusVerseOneSolistLyrics }
        %  \new Lyrics \lyricsto "sanctusSolistMusic" { \sanctusVerseTwoSolistLyrics }
        %>>
        \new ChoirStaff
        <<
          \new Staff \with {instrumentName = "Soprano" }
          <<
            \sanctusGlobal \clef treble
            \new Voice = "sanctusSoprano" { \sanctusMainSopranoMusic }
            \new Lyrics \lyricsto "sanctusSoprano" { \sanctusMainSopranoLyrics }
            \new Lyrics \lyricsto "sanctusSoprano" { \sanctusVerseOneSopranoLyrics }
            \new Lyrics \lyricsto "sanctusSoprano" { \sanctusVerseTwoSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" }
          <<
            \sanctusGlobal \clef treble
            \new Voice = "sanctusAlto" { \sanctusMainAltoMusic }
            \new Lyrics \lyricsto "sanctusAlto" { \sanctusMainAltoLyrics }
            \new Lyrics \lyricsto "sanctusAlto" { \sanctusVerseOneAltoLyrics }
            \new Lyrics \lyricsto "sanctusAlto" { \sanctusVerseTwoAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" }
          <<
            \sanctusGlobal \clef "treble_8"
            \new Voice = "sanctusTenor" { \sanctusTenorMusic }
            \new Lyrics \lyricsto "sanctusTenor" { \sanctusMainTenorLyrics }
            \new Lyrics \lyricsto "sanctusTenor" { \sanctusVerseOneTenorLyrics }
            \new Lyrics \lyricsto "sanctusTenor" { \sanctusVerseTwoTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" }
          <<
            \sanctusGlobal \clef bass
            \new Voice = "sanctusBasse" { \sanctusMainBasseMusic }
            \new Lyrics \lyricsto "sanctusBasse" { \sanctusMainBasseLyrics }
            \new Lyrics \lyricsto "sanctusBasse" { \sanctusVerseOneBasseLyrics }
            \new Lyrics \lyricsto "sanctusBasse" { \sanctusVerseTwoBasseLyrics }
          >>
        >>
      >>
    }
  }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup {
        \fill-line { \fontsize #10 \fromproperty #'header:piece }
      }
    }
    \header {
      piece = "Agnus"
      tagline = ##f
    }

    \markup { \vspace #2 }
    \markup { "Le soliste peut chanter seul la lettre " \bold { "A" } "," }
    \markup { "   éventuellement avec le chœur " \bold { "à l'unisson" } "." }
    \markup { "Dans ce cas, l'assemblée ne chante que les lettres "\bold { "B" } "&" \bold { "C" } "," }
    \markup { "   avec le chœur en polyphonie" }

    \score {
      \layout{ ragged-last = ##f }
      \midi{}
      \new GrandStaff
      <<
        \new Staff \with { instrumentName = "Soliste" }
        <<
          \agnusGlobal \clef treble
          \new Voice = "agnusSolistVoice" { \agnusSolistMusic }
          \new Lyrics \lyricsto "agnusSolistVoice" { \agnusSolistLyrics }
        >>
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = "Soprano" }
          <<
            \agnusGlobal \clef treble
            \new Voice = "agnusSoprano" { \agnusSopranoMusic }
            \new Lyrics \lyricsto "agnusSoprano" { \agnusSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" }
          <<
            \agnusGlobal \clef treble
            \new Voice = "agnusAlto" { \agnusAltoMusic }
            \new Lyrics \lyricsto "agnusAlto" { \agnusAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" }
          <<
            \agnusGlobal \clef "treble_8"
            \new Voice = "agnusTenor" { \agnusTenorMusic }
            \new Lyrics \lyricsto "agnusTenor" { \agnusTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" }
          <<
            \agnusGlobal \clef bass
            \new Voice = "agnusBasse" { \agnusBasseMusic }
            \new Lyrics \lyricsto "agnusBasse" { \agnusBasseLyrics }
          >>
        >>
        %\new PianoStaff <<
        %  \new Staff <<
        %    \clef treble
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \agnusGlobal \agnusSopranoMusic >>
        %    << \agnusGlobal \agnusAltoMusic >>
        %  >>
        %  \new Staff <<
        %    \clef bass
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \agnusGlobal \agnusTenorMusic >>
        %    << \agnusGlobal \agnusBasseMusic >>
        %  >>
        %>>
      >>
    }
  }
}
\layout { }
\midi { }