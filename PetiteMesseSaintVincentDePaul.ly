\version "2.18.2"

\include "libs/commonFunctions.ily"
\include "libs/settings.ily"
\include "libs/translations/fr.ily"
pianoProperties = {
    %options pour Lilypond 2.18.2 et suivantes
    \hide PhrasingSlur
    \hide Slur
    \hide Hairpin
    \omit DynamicText
    \omit TextScript
    \set fontSize = #-1
    \override StaffSymbol #'staff-space = #(magstep -1)
    \override Hairpin #'style = #'none
    \override InstrumentName #'font-name = #"Monospace Regular"
    \autoBeamOn
  }
tagline = ""
staffCustomSize = 15
\include "libs/layouts/book-titling.ily"
coverPage = {
    % Hide Staff, Key & Time signature symbols to get a blank page
    \once \override Staff.StaffSymbol #'stencil = ##f
    \once \override Staff.Clef #'transparent = ##t
    \once \override Staff.TimeSignature #'stencil = ##f
  }

\include "PetiteMesseSaintVincentDePaul/Kyrie.ly"
\include "PetiteMesseSaintVincentDePaul/Gloria.ly"
\include "PetiteMesseSaintVincentDePaul/Sanctus.ly"
\include "PetiteMesseSaintVincentDePaul/Agnus.ly"
\include "PetiteMesseSaintVincentDePaul/Anamnèse.ly"
\include "PetiteMesseSaintVincentDePaul/PrièreUniverselle.ly"
\include "libs/layouts/commonLayout.ily"
#(set-global-staff-size staffCustomSize)
\book {
  \header {
    title = \markup {
      \override #'(font-name . "Latin Modern Sans")
      \center-column { "Petite messe" "de" "Saint Vincent de Paul" }
    }
    subtitle = \markup {
      \override #'(font-name . "Latin Modern Sans")
      \center-column { "Pour soliste et chœur à 3 voix" "ou" "chœur à 4 voix" }
    }
    composer = "Jean Baptiste Favre"
    date = \markup {
      \typewriter "Clichy-la-Garenne, 2017"
    }
    copyright = \markup {
      \override #'(font-name . "Courier")
      "Reproduction interdite sans l'accord explicite de l'auteur"
    }
  }
  % Add BlankPage to mimic Cover page
  \coverPage
  \pageBreak

  \bookpart {
    \paper {
      bookTitleMarkup = \markup \columns {
        \fill-line {
            \column {
              \line {
                \right-column {
                  \fontsize #7 \sans \fromproperty #'header:piece
                  \fontsize #0 \typewriter \fromproperty #'header:subtitle
                }
              }
            }
            \column {
              \line {
                \left-column {
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
                  " "
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    }
    \header {
      piece = "Kyrie"
      subtitle = "Petite messe de Saint Vincent de Paul"
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \score {
      \layout {
        ragged-last = ##f
        short-indent = 0.8\cm
        \context {
            \Staff
            \RemoveEmptyStaves
            \override NoteHead #'style = #'altdefault
            \override InstrumentName #'font-name = #"Monospace Regular"
        }
        \context {
            \Score
            \omit BarNumber
        }
        \context {
            \Voice
            \consists "Horizontal_bracket_engraver"
        }
        \override LyricText #'font-name = #"Latin Modern Sans"
      }
      \new ChoirStaff \with { \override StaffGrouper.staff-staff-spacing = #'(
                                                      (basic-distance . 1)
                                                      (padding . 0))
                              \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #'(
                                                      (basic-distance . 1)
                                                      (padding . 0))
                            }
      <<
        \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." }
        <<
          \kyrieGlobal \clef treble
          \new Voice = "kyrieSoprano" { \kyrieSopranoMusic }
          \new Lyrics \lyricsto "kyrieSoprano" { \kyrieSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Alto" shortInstrumentName = "A." }
        <<
          \kyrieGlobal \clef treble
          \new Voice = "kyrieAlto" { \kyrieAltoMusic }
          \new Lyrics \lyricsto "kyrieAlto" { \kyrieAltoLyrics }
        >>
        \new Staff \with { instrumentName = "Ténor" shortInstrumentName = "T." }
        <<
          \kyrieGlobal \clef "treble_8"
          \new Voice = "kyrieTenor" { \kyrieTenorMusic }
          \new Lyrics \lyricsto "kyrieTenor" { \kyrieTenorLyrics }
        >>
        \new Staff \with { instrumentName = "Basse" shortInstrumentName = "B." }
        <<
          \kyrieGlobal \clef bass
          \new Voice = "kyrieBasse" { \kyrieBasseMusic }
          \new Lyrics \lyricsto "kyrieBasse" { \kyrieBasseLyrics }
        >>
        \new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
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
%{
  \bookpart {
    \paper {
      bookTitleMarkup = \markup \columns {
        \fill-line {
            \column {
              \line {
                \right-column {
                  \fontsize #7 \sans \fromproperty #'header:piece
                  \fontsize #0 \typewriter \fromproperty #'header:subtitle
                }
              }
            }
            \column {
              \line {
                \left-column {
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
                  " "
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    }
    \header {
      piece = "Gloria"
      subtitle = "Petite messe de Saint Vincent de Paul"
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \score {
      \layout {
        ragged-last = ##f
        short-indent = 0.8\cm
        \context {
            \Staff
            \RemoveEmptyStaves
            \override NoteHead #'style = #'altdefault
            \override InstrumentName #'font-name = #"Monospace Regular"
        }
        \context {
            \Score
            \omit BarNumber
        }
        \context {
            \Voice
            \consists "Horizontal_bracket_engraver"
        }
        \override LyricText #'font-name = #"Latin Modern Sans"
      }
      \new ChoirStaff \with { \override StaffGrouper.staff-staff-spacing = #'(
                                                      (basic-distance . 1)
                                                      (padding . 0))
                              \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #1
                            }
      <<
        \new Staff \with { instrumentName = "Intonation" }
        <<
          \override Staff.VerticalAxisGroup.remove-empty = ##t
          \gloriaGlobal \clef treble
          \new Voice = "gloriaIntonationVoice" { \gloriaIntonationMusic }
          \new Lyrics \lyricsto "gloriaIntonationVoice" { \gloriaIntonationLyrics }
        >>
        \new Staff <<
          \override Staff.VerticalAxisGroup.remove-empty = ##t
          \override Staff.VerticalAxisGroup.remove-first = ##t
          \set Staff.instrumentName = "Soprano"
          \gloriaGlobal \clef treble
          \new Voice = "gloriaSoprano" {
            \set Staff.shortInstrumentName = \markup { \right-column { "S." } }
            \silence \gloriaIntonationMusic
            \tag #'visuel \gloriaSopranoMusic
          }
          \new Lyrics \lyricsto "gloriaSoprano" { \gloriaSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Alto" } <<
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
        \new Staff \with { instrumentName = "Ténor" } <<
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
        \new Staff \with { instrumentName = "Basse" } <<
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
        \new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
        <<
          \new Staff <<
            \override Staff.VerticalAxisGroup.remove-empty = ##t
            \override Staff.VerticalAxisGroup.remove-first = ##t
            \gloriaGlobal \clef treble
            \set Staff.printPartCombineTexts = ##f
            \new Voice <<
              { \silence \gloriaIntonationMusic 
                \partcombine
                <<  \gloriaTenorMusic >>
                <<  \gloriaBasseMusic >>
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
%}
  \bookpart {
    \paper {
      bookTitleMarkup = \markup \columns {
        \fill-line {
            \column {
              \line {
                \right-column {
                  \fontsize #7 \sans \fromproperty #'header:piece
                  \fontsize #0 \typewriter \fromproperty #'header:subtitle
                }
              }
            }
            \column {
              \line {
                \left-column {
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
                  " "
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    }
    \header {
      piece = "Prière universelle"
      subtitle = "Petite messe de Saint Vincent de Paul"
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \score {
      \layout {
        ragged-last = ##f
        short-indent = 0.8\cm
        \context {
            \Staff
            \RemoveEmptyStaves
            \override NoteHead #'style = #'altdefault
            \override InstrumentName #'font-name = #"Monospace Regular"
        }
        \context {
            \Score
            \omit BarNumber
        }
        \context {
            \Voice
            \consists "Horizontal_bracket_engraver"
        }
        \override LyricText #'font-name = #"Latin Modern Sans"
      }
      \new ChoirStaff \with { \override StaffGrouper.staff-staff-spacing = #'(
                                                      (basic-distance . 1)
                                                      (padding . 0))
                              \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #1
                            }
      <<
        \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." }
        <<
          \puGlobal \clef treble
          \new Voice = "puSoprano" { \puMainSopranoMusic }
          \new Lyrics \lyricsto "puSoprano" { \puMainSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Alto" shortInstrumentName = "A." }
        <<
          \puGlobal \clef treble
          \new Voice = "puAlto" { \puMainAltoMusic }
          \new Lyrics \lyricsto "puAlto" { \puMainSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Ténor" shortInstrumentName = "T." }
        <<
          \puGlobal \clef "treble_8"
          \new Voice = "puTenor" { \puMainTenorMusic }
          \new Lyrics \lyricsto "puTenor" { \puMainSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Basse" shortInstrumentName = "B." }
        <<
          \puGlobal \clef bass
          \new Voice = "puBasse" { \puMainBasseMusic }
          \new Lyrics \lyricsto "puBasse" { \puMainBasseLyrics }
        >>
        \new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
        <<
          \new Staff
          <<
            \puGlobal \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \puMainSopranoMusic >>
            << \puMainAltoMusic >>
          >>
          \new Staff
          <<
            \puGlobal \clef bass
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \puMainTenorMusic >>
            << \puMainBasseMusic >>
          >>
        >>
      >>
    }
  }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup \columns {
        \fill-line {
            \column {
              \line {
                \right-column {
                  \fontsize #7 \sans \fromproperty #'header:piece
                  \fontsize #0 \typewriter \fromproperty #'header:subtitle
                }
              }
            }
            \column {
              \line {
                \left-column {
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
                  " "
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    }
    \header {
      piece = "Sanctus"
      subtitle = "Petite messe de Saint Vincent de Paul"
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \score {
      \layout {
        ragged-last = ##f
        short-indent = 0.8\cm
        \context {
            \Staff
            \RemoveEmptyStaves
            \override NoteHead #'style = #'altdefault
            \override InstrumentName #'font-name = #"Monospace Regular"
        }
        \context {
            \Score
            \omit BarNumber
        }
        \context {
            \Voice
            \consists "Horizontal_bracket_engraver"
        }
        \override LyricText #'font-name = #"Latin Modern Sans"
      }
      \new ChoirStaff  \with {
        \override StaffGrouper.staff-staff-spacing = #'(
                                (basic-distance . 0)
                                (padding . 0))
        \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #1
      }
      <<
        \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." }
        <<
          \sanctusGlobal \clef treble
          \new Voice = "sanctusSoprano" { \sanctusMainSopranoMusic }
          \new Lyrics \lyricsto "sanctusSoprano" { \sanctusMainSopranoLyrics }
          \new Lyrics \lyricsto "sanctusSoprano" { \sanctusVerseOneSopranoLyrics }
          \new Lyrics \lyricsto "sanctusSoprano" { \sanctusVerseTwoSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Alto" shortInstrumentName = "A." }
        <<
          \sanctusGlobal \clef treble
          \new Voice = "sanctusAlto" { \sanctusMainAltoMusic }
          \new Lyrics \lyricsto "sanctusAlto" { \sanctusMainAltoLyrics }
          \new Lyrics \lyricsto "sanctusAlto" { \sanctusVerseOneAltoLyrics }
          \new Lyrics \lyricsto "sanctusAlto" { \sanctusVerseTwoAltoLyrics }
        >>
        \new Staff \with { instrumentName = "Ténor" shortInstrumentName = "T." }
        <<
          \sanctusGlobal \clef "treble_8"
          \new Voice = "sanctusTenor" { \sanctusTenorMusic }
          \new Lyrics \lyricsto "sanctusTenor" { \sanctusMainTenorLyrics }
          \new Lyrics \lyricsto "sanctusTenor" { \sanctusVerseOneTenorLyrics }
          \new Lyrics \lyricsto "sanctusTenor" { \sanctusVerseTwoTenorLyrics }
        >>
        \new Staff \with { instrumentName = "Basse" shortInstrumentName = "B." }
        <<
          \sanctusGlobal \clef bass
          \new Voice = "sanctusBasse" { \sanctusMainBasseMusic }
          \new Lyrics \lyricsto "sanctusBasse" { \sanctusMainBasseLyrics }
          \new Lyrics \lyricsto "sanctusBasse" { \sanctusVerseOneBasseLyrics }
          \new Lyrics \lyricsto "sanctusBasse" { \sanctusVerseTwoBasseLyrics }
        >>
        \new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
        <<
          \set PianoStaff.instrumentName = #"Orgue"
          \new Staff <<
            \sanctusGlobal \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \sanctusMainSopranoMusic >>
            << \sanctusMainAltoMusic >>
          >>
          \new Staff <<
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
    \paper {
      bookTitleMarkup = \markup \columns {
        \fill-line {
            \column {
              \line {
                \right-column {
                  \fontsize #7 \sans \fromproperty #'header:piece
                  \fontsize #0 \typewriter \fromproperty #'header:subtitle
                }
              }
            }
            \column {
              \line {
                \left-column {
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
                  " "
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    }
    \header {
      piece = "Anamnèse"
      subtitle = "Petite messe de Saint Vincent de Paul"
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \score {
      \layout {
        ragged-last = ##f
        short-indent = 0.8\cm
        \context {
            \Staff
            \RemoveEmptyStaves
            \override NoteHead #'style = #'altdefault
            \override InstrumentName #'font-name = #"Monospace Regular"
        }
        \context {
            \Score
            \omit BarNumber
        }
        \context {
            \Voice
            \consists "Horizontal_bracket_engraver"
        }
        \override LyricText #'font-name = #"Latin Modern Sans"
      }
      \midi{}
      \new GrandStaff
      <<
        \new ChoirStaff \with {
        \override StaffGrouper.staff-staff-spacing = #'(
                                (basic-distance . 0)
                                (padding . 0))
        \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #1
      }
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
        \new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
        <<
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
    \paper {
      bookTitleMarkup = \markup \columns {
        \fill-line {
            \column {
              \line {
                \right-column {
                  \fontsize #7 \sans \fromproperty #'header:piece
                  \fontsize #0 \typewriter \fromproperty #'header:subtitle
                }
              }
            }
            \column {
              \line {
                \left-column {
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
                  " "
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    }
    \header {
      piece = "Agnus"
      subtitle = "Petite messe de Saint Vincent de Paul"
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \score {
      \layout {
        ragged-last = ##f
        short-indent = 0.8\cm
        \context {
            \Staff
            \RemoveEmptyStaves
            \override NoteHead #'style = #'altdefault
            \override InstrumentName #'font-name = #"Monospace Regular"
        }
        \context {
            \Score
            \omit BarNumber
        }
        \context {
            \Voice
            \consists "Horizontal_bracket_engraver"
        }
        \override LyricText #'font-name = #"Latin Modern Sans"
      }
      \midi{}
      \new GrandStaff
      <<
        \new ChoirStaff \with {
        \override StaffGrouper.staff-staff-spacing = #'(
                                (basic-distance . 0)
                                (padding . 0))
        \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #1
      }
        <<
          \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." }
          <<
            \agnusGlobal \clef treble
            \new Voice = "agnusSoprano" { \agnusSopranoMusic }
            \new Lyrics \lyricsto "agnusSoprano" { \agnusSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" shortInstrumentName = "A." }
          <<
            \agnusGlobal \clef treble
            \new Voice = "agnusAlto" { \agnusAltoMusic }
            \new Lyrics \lyricsto "agnusAlto" { \agnusAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" shortInstrumentName = "T." }
          <<
            \agnusGlobal \clef "treble_8"
            \new Voice = "agnusTenor" { \agnusTenorMusic }
            \new Lyrics \lyricsto "agnusTenor" { \agnusTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" shortInstrumentName = "B." }
          <<
            \agnusGlobal \clef bass
            \new Voice = "agnusBasse" { \agnusBasseMusic }
            \new Lyrics \lyricsto "agnusBasse" { \agnusBasseLyrics }
          >>
        >>
        \new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
        <<
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