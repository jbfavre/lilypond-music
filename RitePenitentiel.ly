\version "2.22.2"
\language "english"
\include "gregorian.ly"
\include "libs/commonFunctions.ily"

tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=60
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

scoreHeader = \header {
  title = "Rite pénitentiel"
  subtitle = \markup { \column{"3ème formule" "Temps Pascal"}}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, janvier 2023"
}

global = {
  \key g \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
  \autoBeamOff \cadenzaOn
  s\breve s4 s\breve s4 s s
  d\breve s1 s4 s s \bar "|." \break
}
antiphonMusicSoprano = \relative c'' {
  \markCustom "Invocation"
  g\breve fs4 \bar"|" fs\breve g4 a bf \bar"|"
  bf\breve a1 g4 g fs
  }

antiphonMusicAlto = \relative c' {
  d\breve d4 d\breve ef4 f4 f4
  f\breve ef1 ef4 ef4 d4
  }

antiphonMusicTenor = \relative c' {
  bf\breve a4 a\breve c4 c4 d4
  d\breve c1 c4 bf a
  }

antiphonMusicBass = \relative c {
  g\breve d'4 d\breve c4 c bf
  bf\breve c1 c4 d d
  }

antiphonLyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #-1
  "Seigneur Jé" -- sus,
  \once \override LyricText.self-alignment-X = #-1
  "par ton mys" -- tère Pas -- cal
  \once \override LyricText.self-alignment-X = #-1
  "Tu nous as obte" -- nu le sa -- lut
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
partition = {
  <<
    \new Staff <<
      \new Dynamics {
        \antiphonRythm
      }
      \new Voice = "soprano" {
        \override Stem.length = #0
        \clef "treble"
        \antiphonMusicSoprano
      }
      \new Lyrics {
        \lyricsto "soprano" \antiphonLyrics
      }
    >>
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = #"Orgue"
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef treble
        \new Voice = "soprani" {\global \voiceOne \antiphonMusicSoprano }
        \new Voice = "alti" {\global \voiceTwo \antiphonMusicAlto }
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef bass
        \new Voice = "tenors" {\global \voiceThree \antiphonMusicTenor }
        \new Voice = "bass" {\global \voiceFour \antiphonMusicBass }
      >>
    >>
  >>
}
%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
% PDF output
\paper {
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  markup-system-spacing = #'((basic-distance . 10)
     (minimum-distance . 10)
     (padding . 5)
     (stretchability . 5))
 system-system-spacing = #'((basic-distance . 5)
     (minimum-distance . 5)
     (padding . 1)
     (stretchability . 5))
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Latin Modern Roman"
     #:sans "Cantarell"
    ))
  #(include-special-characters)
  tagline = ##f
  copyright = ##f
  scoreTitleMarkup = \markup \columns {
    \fill-line {
      \column {
        \line {
          \left-column {
            \fontsize #8 \sans \fromproperty #'header:title
            \fontsize #1 \typewriter \fromproperty #'header:subtitle
          }
        }
      }
      \column {
        \line {
          \fontsize #-1
          \left-column {
            \line { \concat { \typewriter "Texte&nbsp;: " \sans \fromproperty #'header:poet \bold " " } }
            \line { \concat { \typewriter "Musique&nbsp;: " \sans \fromproperty #'header:composer \bold " " } }
            \typewriter \italic \fromproperty #'header:date
          }
        }
      }
    }
  }
}

\score {
  \partition
  \layout {
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
  \scoreHeader
}