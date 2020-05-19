\version "2.18.2"
\language "english"

%\include "../libs/commonFunctions.ily"
%\include "../libs/settings.ily"
%\include "../libs/translations/fr.ily"
%\include "../libs/layouts/book-titling.ily"
%\include "../PetiteMesseSaintVincentDePaul/pianoSettings.ily"

agnusGlobal = {
  \key f \minor
  \time 4/4
  \tempo 4 = 90
}
agnusSolistCommonMusic = {
    \mark \default
    f4 (g) af2 g4 (af) bf2 af4 bf c bf af g f e \break
  }
agnusSolistMusic = \relative c' {
    \bar ".|:"
    \repeat volta 2 { \agnusSolistCommonMusic }
    % mesure 5: 0'10
    \alternative { { g f g af f2 f bf4 af g f g2 g2 } } \bar ":|." \break
    \agnusSolistCommonMusic
    % mesure 9: 0'24
    \repeat volta 2 { g2 (c4) bf bf (g) af2  }
    \alternative {
      { bf4 (af g f4) | g1 }
      { bf4 (af g e4) | f1 }
    }
    \bar "|."
  }
agnusSolistCommonLyrics = \lyricmode {
    A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  }
agnusSolistLyrics = \lyricmode {
    \agnusSolistCommonLyrics
    Mi -- se -- re -- re no -- bis, mi -- se -- re -- re no -- bis
    \agnusSolistCommonLyrics
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusSopranoMusic = \agnusSolistMusic
agnusSopranoLyrics = \agnusSolistLyrics

agnusAltoCommonMusic = { c2. f4 g4 (f2) ef4 ef g af g af bf g g }
agnusAltoMusic = \relative c' {
    \repeat volta 2 { \agnusAltoCommonMusic }
    \alternative {
      { bf af g af af2 bf f (d) e1 }
    }
    \agnusAltoCommonMusic
    \repeat volta 2 { bf2 (g4) g f4 (g4) af2 }
    \alternative {
      { g4 (f g b) c1 }
      { g4 (af g2) af1 }
    }
  }
agnusAltoCommonLyrics = \lyricmode {
    A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  }
agnusAltoLyrics = \lyricmode {
    \agnusAltoCommonLyrics
    Mi -- se -- re -- re no -- bis, no -- bis
    \agnusAltoCommonLyrics
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusTenorCommonMusic = { af4 (bf) c2 ef2. df4 c ef c c c df c e }
agnusTenorMusic = \relative c' {
    \repeat volta 2 { \agnusTenorCommonMusic }
    \alternative { { e4 f df c af2 bf  bf2 (b2) c1 } }
    \agnusTenorCommonMusic
    \repeat volta 2 { e2 (c4) e df2 f }
    \alternative {
      { bf,4 (c d f) e1 }
      { bf4 (df c bf) c1 }
    }
  }
agnusTenorCommonLyrics = \lyricmode { A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di, }
agnusTenorLyrics = \lyricmode {
    \agnusTenorCommonLyrics
    Mi -- se -- re -- re no -- bis, no -- bis
    \agnusTenorCommonLyrics
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusBasseCommonMusic = { f2. f4 ef2. ef4 af, ef' af e f df c c }
agnusBasseMusic = \relative c {
    \repeat volta 2 { \agnusBasseCommonMusic }
    \alternative { { c2. c4 df2 df d2 (f2) e1 } }
    \agnusBasseCommonMusic
    \repeat volta 2 { c4 (d e) c df2 c }
    \alternative {
      { bf2 (b2) c1 }
      { bf2 (c2) f,1 }
    }
  }
agnusBasseCommonLyrics = \lyricmode { A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di, }
agnusBasseLyrics = \lyricmode {
    \agnusBasseCommonLyrics
    Mi -- se -- re -- re no -- bis,
    \agnusBasseCommonLyrics
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusScore = \score {
      <<
        \new ChoirStaff
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
        %\new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
        %<<
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
        \override LyricText #'font-family = #'sans
        \override Score.RehearsalMark.font-family = #'typewriter
      }
    }
