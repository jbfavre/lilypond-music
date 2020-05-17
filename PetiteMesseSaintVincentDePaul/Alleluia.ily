\version "2.18.2"
\language "english"

%\include "../libs/commonFunctions.ily"
%\include "../libs/settings.ily"
%\include "../libs/translations/fr.ily"
%\include "../libs/layouts/book-titling.ily"
%\include "../PetiteMesseSaintVincentDePaul/pianoSettings.ily"

alleluiaGlobal = {
  \key a \major
  \time 3/4
  \tempo 2. = 50
}

alleluiaSolistMusic = \relative c'' {
    \mark \default
    a4. cs8 a4 b2. cs4. b8 a4 b2. d4 cs a gs2. \break
    \mark \default
    a4. cs8 a4 b2. cs4. b8 a4 b2 b4 a gs2 a2.\fermata \bar "|."
  }
alleluiaSolistLyrics = \lyricmode {
    Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;!
    Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;!
  }

alleluiaSopranoMusic = \alleluiaSolistMusic
alleluiaSopranoLyrics = \alleluiaSolistLyrics

alleluiaAltoMusic = \relative c' {
    e4. e8 e4 gs2. fs4. fs8 fs4 fs2. fs4 fs fs e2.
    e4. e8 e4 gs2. fs4. fs8 fs4 fs2 fs4 fs d2 e2.
  }
alleluiaAltoLyrics = \alleluiaSolistLyrics

alleluiaTenorMusic = \relative c' {
    cs4. cs8 cs4 b2. a4. a8 cs4 b2. b4 a b b2.
    cs4. cs8 cs4 b2. a4. a8 cs4 b2 b4 d b2 cs2.
  }
alleluiaTenorLyrics = \alleluiaSolistLyrics

alleluiaBasseMusic = \relative f {
    a4. a8 a4 e2. fs4. fs8 e4 d2. b4 cs d e2.
    a4. a8 a4 e2. fs4. fs8 e4 d2 d4 b e2 a,2.
  }
alleluiaBasseLyrics = \alleluiaSolistLyrics

alleluiaScore = \score {
      <<
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = \sopranoVoiceTitle shortInstrumentName = \sopranoVoiceShortTitle }
          <<
            \alleluiaGlobal \clef treble
            \new Voice = "alleluiaSoprano" { \alleluiaSopranoMusic }
            \new Lyrics \lyricsto "alleluiaSoprano" { \alleluiaSopranoLyrics }
          >>
          \new Staff \with { instrumentName = \altoVoiceTitle shortInstrumentName = \altoVoiceShortTitle }
          <<
            \alleluiaGlobal \clef treble
            \new Voice = "alleluiaAlto" { \alleluiaAltoMusic }
            \new Lyrics \lyricsto "alleluiaAlto" { \alleluiaAltoLyrics }
          >>
          \new Staff \with { instrumentName = \tenorVoiceTitle shortInstrumentName = \tenorVoiceShortTitle }
          <<
            \alleluiaGlobal \clef "treble_8"
            \new Voice = "alleluiaTenor" { \alleluiaTenorMusic }
            \new Lyrics \lyricsto "alleluiaTenor" { \alleluiaTenorLyrics }
          >>
          \new Staff \with { instrumentName = \bassVoiceTitle shortInstrumentName = \bassVoiceShortTitle }
          <<
            \alleluiaGlobal \clef bass
            \new Voice = "alleluiaBasse" { \alleluiaBasseMusic }
            \new Lyrics \lyricsto "alleluiaBasse" { \alleluiaBasseLyrics }
          >>
        >>
        \new PianoStaff \with { \pianoProperties instrumentName = \organVoiceTitle shortInstrumentName = \organVoiceShortTitle }
        <<
          \new Staff <<
            \alleluiaGlobal \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \alleluiaSopranoMusic >>
            << \alleluiaAltoMusic >>
          >>
          \new Staff <<
            \alleluiaGlobal \clef bass
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \alleluiaTenorMusic >>
            << \alleluiaBasseMusic >>
          >>
        >>
      >>
      \midi {
        % Move MIDI performer from Staff level to Voice
        % Get a MIDI channel per Voice instead of per Staff
        \context { \Staff \remove "Staff_performer" }
        \context { \Voice \consists "Staff_performer" }
      }
      \layout {
        %ragged-last = ##f
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
