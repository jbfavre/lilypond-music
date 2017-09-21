\version "2.18.2"

\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  max-systems-per-page = #4
}
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
\include "PetiteMesseSaintVincentDePaul/Anamnèse.ly"
\include "PetiteMesseSaintVincentDePaul/PrièreUniverselle.ly"

silence = #(define-music-function (parser location arg) (ly:music?)
             (map-some-music
               (lambda (m)
                  (and (music-is-of-type? m 'note-event)
                       (make-music 'SkipEvent m)))
               arg))

\book {
  \header {
    title = \markup {
      \center-column {
        "Petite messe"
        "de"
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
    date = \markup {
      \center-column {
        "Clichy-la-Garenne"
        "2017"
      }
    }
    copyright = "Reproduction interdite sans l'accord explicite de l'auteur"
  }
  \bookTitle "Petite messe Saint Vincent de Paul"
  \useRehearsalNumbers ##f

  % Cover page
  \blankPage
  \pageBreak

  \bookpart {
    \paper { bookTitleMarkup = \markup { \fill-line { \fontsize #8 \fromproperty #'header:piece } } }
    \header {
      piece = "Kyrie"
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
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = "Soprano" } <<
            \kyrieGlobal \clef treble
            \new Voice = "kyrieSoprano" { \kyrieSopranoMusic }
            \new Lyrics \lyricsto "kyrieSoprano" { \kyrieSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" } <<
            \kyrieGlobal \clef treble
            \new Voice = "kyrieAlto" { \kyrieAltoMusic }
            \new Lyrics \lyricsto "kyrieAlto" { \kyrieAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" } <<
            \kyrieGlobal \clef "treble_8"
            \new Voice = "kyrieTenor" { \kyrieTenorMusic }
            \new Lyrics \lyricsto "kyrieTenor" { \kyrieTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" } <<
            \kyrieGlobal \clef bass
            \new Voice = "kyrieBasse" { \kyrieBasseMusic }
            \new Lyrics \lyricsto "kyrieBasse" { \kyrieBasseLyrics }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff <<
            \kyrieGlobal \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \kyrieSopranoMusic >>
            << \kyrieAltoMusic >>
          >>
          \new Staff <<
            \kyrieGlobal \clef bass
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \kyrieTenorMusic >>
            << \kyrieBasseMusic >>
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
      piece = "Gloria"
    }
    \score {
      \layout{ ragged-last = ##f }
      \midi{}
      \new GrandStaff
      <<
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = "Intonation" }
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \gloriaGlobal \clef treble
            \new Voice = "gloriaIntonationVoice" { \gloriaIntonationMusic }
            \new Lyrics \lyricsto "gloriaIntonationVoice" { \gloriaIntonationLyrics }
          >>
          \new Staff \with { instrumentName = "Soprano" }
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \gloriaGlobal \clef treble
            \new Voice = "gloriaSoprano" {
              \set Staff.shortInstrumentName = \markup { \right-column { "S." } }
              \silence \gloriaIntonationMusic
              \tag #'visuel \gloriaSopranoMusic
            }
            \new Lyrics \lyricsto "gloriaSoprano" { \gloriaSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" }
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \gloriaGlobal \clef treble
            \new Voice = "gloriaAlto" {
              \set Staff.shortInstrumentName = \markup { \right-column { "A." } }
              \silence \gloriaIntonationMusic
              \tag #'visuel \gloriaAltoMusic
            }
            \new Lyrics \lyricsto "gloriaAlto" { \gloriaAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" }
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \gloriaGlobal \clef "treble_8"
            \new Voice = "gloriaTenor" {
              \set Staff.shortInstrumentName = \markup { \right-column { "T." } }
              \silence \gloriaIntonationMusic
              \tag #'visuel \gloriaTenorMusic
            }
            \new Lyrics \lyricsto "gloriaTenor" { \gloriaTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" }
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \gloriaGlobal \clef bass
            \new Voice = "gloriaBasse" {
              \set Staff.shortInstrumentName = \markup { \right-column { "B." } }
              \silence \gloriaIntonationMusic
              \tag #'visuel \gloriaBasseMusic
            }
            \new Lyrics \lyricsto "gloriaBasse" { \gloriaBasseLyrics }
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \gloriaGlobal \clef treble
            \set Staff.printPartCombineTexts = ##f
            \new Voice <<
              { \silence \gloriaIntonationMusic 
                \partcombine
                <<  \gloriaSopranoMusic >>
                <<  \gloriaAltoMusic >>
              }
            >>
          >>
          \new Staff <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \gloriaGlobal \clef bass
            \set Staff.printPartCombineTexts = ##f
            \new Voice <<
              { \silence \gloriaIntonationMusic 
                \partcombine
                <<  \gloriaTenorMusic >>
                <<  \gloriaBasseMusic >>
              }
            >>
          >>
        >>
      >>
    }
  }
  \bookpart {
    \paper { bookTitleMarkup = \markup { \fill-line { \fontsize #8 \fromproperty #'header:piece } } }
    \header {
      piece = "Prière universelle"
    }
    \score {
      \layout{ ragged-last = ##f }
      \midi{}
      \new GrandStaff
      <<
        \new ChoirStaff
        <<
          \new Staff \with {instrumentName = "Soprano" }
          <<
            \puGlobal \clef treble
            \new Voice = "puSoprano" { \puMainSopranoMusic }
            \new Lyrics \lyricsto "puSoprano" { \puMainSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" }
          <<
            \puGlobal \clef treble
            \new Voice = "puAlto" { \puMainAltoMusic }
            \new Lyrics \lyricsto "puSoprano" { \puMainSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" }
          <<
            \puGlobal \clef "treble_8"
            \new Voice = "puTenor" { \puMainTenorMusic }
            \new Lyrics \lyricsto "puSoprano" { \puMainSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" }
          <<
            \puGlobal \clef bass
            \new Voice = "puBasse" { \puMainBasseMusic }
            \new Lyrics \lyricsto "puSoprano" { \puMainSopranoLyrics }
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \puGlobal \puMainSopranoMusic >>
            << \puGlobal \puMainAltoMusic >>
          >>
          \new Staff <<
            \clef bass
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \puGlobal \puMainTenorMusic >>
            << \puGlobal \puMainBasseMusic >>
          >>
        >>
      >>
    }
  }
  \bookpart {
    \paper { bookTitleMarkup = \markup { \fill-line { \fontsize #8 \fromproperty #'header:piece } } }
    \header {
      piece = "Sanctus"
    }
    \score {
      \layout{ ragged-last = ##f }
      \midi{}
      \new GrandStaff
      <<
        \new ChoirStaff \with {
            \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
          }
        <<
          \new Staff \with {instrumentName = "Soprano"
            \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
          }
          <<
            \sanctusGlobal \clef treble
            \new Voice = "sanctusSoprano" { \sanctusMainSopranoMusic }
            \new Lyrics \lyricsto "sanctusSoprano" { \sanctusMainSopranoLyrics }
            \new Lyrics \lyricsto "sanctusSoprano" { \sanctusVerseOneSopranoLyrics }
            \new Lyrics \lyricsto "sanctusSoprano" { \sanctusVerseTwoSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto"
            \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
          }
          <<
            \sanctusGlobal \clef treble
            \new Voice = "sanctusAlto" { \sanctusMainAltoMusic }
            \new Lyrics \lyricsto "sanctusAlto" { \sanctusMainAltoLyrics }
            \new Lyrics \lyricsto "sanctusAlto" { \sanctusVerseOneAltoLyrics }
            \new Lyrics \lyricsto "sanctusAlto" { \sanctusVerseTwoAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor"
            \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
          }
          <<
            \sanctusGlobal \clef "treble_8"
            \new Voice = "sanctusTenor" { \sanctusTenorMusic }
            \new Lyrics \lyricsto "sanctusTenor" { \sanctusMainTenorLyrics }
            \new Lyrics \lyricsto "sanctusTenor" { \sanctusVerseOneTenorLyrics }
            \new Lyrics \lyricsto "sanctusTenor" { \sanctusVerseTwoTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse"
            \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
          }
          <<
            \sanctusGlobal \clef bass
            \new Voice = "sanctusBasse" { \sanctusMainBasseMusic }
            \new Lyrics \lyricsto "sanctusBasse" { \sanctusMainBasseLyrics }
            \new Lyrics \lyricsto "sanctusBasse" { \sanctusVerseOneBasseLyrics }
            \new Lyrics \lyricsto "sanctusBasse" { \sanctusVerseTwoBasseLyrics }
          >>
        >>
        \new PianoStaff  \with {
            \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
          }<<
          \new Staff  \with {
            \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
          }<<
            \sanctusGlobal \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \sanctusMainSopranoMusic >>
            << \sanctusMainAltoMusic >>
          >>
          \new Staff  \with {
            \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
          }<<
            \sanctusGlobal \clef bass
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \sanctusTenorMusic >>
            << \sanctusMainBasseMusic >>
          >>
        >>
      >>
    }
  }
  \bookpart {
    \paper { bookTitleMarkup = \markup { \fill-line { \fontsize #8 \fromproperty #'header:piece } } }
    \header {
      piece = "Anamnèse"
    }
    \score {
      \layout{ ragged-last = ##f }
      \midi{}
      \new GrandStaff
      <<
        \new ChoirStaff
        <<
          \new Staff \with {instrumentName = "Intonation" }
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \anamneseGlobal \clef treble
            \new Voice = "anamneseIntonation" {
              \anamneseIntonationMusic
            }
            \new Lyrics \lyricsto "anamneseIntonation" { \anamneseIntonationLyrics }
          >>
          \new Staff
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \anamneseGlobal \clef treble
            \new Voice = "anamneseSoprano" {
              \set Staff.shortInstrumentName = \markup { \right-column { "S." } }
              \silence \anamneseIntonationMusic
              \tag #'visuel \anamneseMainSopranoMusic
            }
            \new Lyrics \lyricsto "anamneseSoprano" { \anamneseMainSopranoLyrics }
          >>
          \new Staff
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \anamneseGlobal \clef treble
            \new Voice = "anamneseAlto" {
              \set Staff.shortInstrumentName = \markup { \right-column { "A." } }
              \silence \anamneseIntonationMusic
              \tag #'visuel \anamneseMainAltoMusic
            }
            \new Lyrics \lyricsto "anamneseSoprano" { \anamneseMainSopranoLyrics }
          >>
          \new Staff
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \anamneseGlobal \clef "treble_8"
            \new Voice = "anamneseTenor" {
              \set Staff.shortInstrumentName = \markup { \right-column { "T." } }
              \silence \anamneseIntonationMusic
              \tag #'visuel \anamneseMainTenorMusic
            }
            \new Lyrics \lyricsto "anamneseSoprano" { \anamneseMainSopranoLyrics }
          >>
          \new Staff
          <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \anamneseGlobal \clef bass
            \new Voice = "anamneseBasse" {
              \set Staff.shortInstrumentName = \markup { \right-column { "B." } }
              \silence \anamneseIntonationMusic
              \tag #'visuel \anamneseMainBasseMusic
            }
            \new Lyrics \lyricsto "anamneseSoprano" { \anamneseMainSopranoLyrics }
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \anamneseGlobal \clef treble
            \set Staff.printPartCombineTexts = ##f
            \new Voice <<
              { \silence \anamneseIntonationMusic 
                \partcombine
                <<  \anamneseMainSopranoMusic >>
                <<  \anamneseMainAltoMusic >>
              }
            >>
          >>
          \new Staff <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \anamneseGlobal \clef bass
            \set Staff.printPartCombineTexts = ##f
            \new Voice <<
              { \silence \anamneseIntonationMusic 
                \partcombine
                <<  \anamneseMainTenorMusic >>
                <<  \anamneseMainBasseMusic >>
              }
            >>
          >>
        >>
      >>
    }
  }
  \bookpart {
    \paper { bookTitleMarkup = \markup { \fill-line { \fontsize #8 \fromproperty #'header:piece } } }
    \header {
      piece = "Agnus"
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
        \new PianoStaff <<
          \new Staff <<
            \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \agnusGlobal \agnusSopranoMusic >>
            << \agnusGlobal \agnusAltoMusic >>
          >>
          \new Staff <<
            \clef bass
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \agnusGlobal \agnusTenorMusic >>
            << \agnusGlobal \agnusBasseMusic >>
          >>
        >>
      >>
    }
  }
}
\layout { ragged-last = ##f }
\midi { }