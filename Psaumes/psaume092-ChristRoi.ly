\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=60
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

scoreHeader = \header {
  title = "Psaume 92"
  subtitle = "Solennité du Christ, Roi de l'univers"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, novembre 2021"
}

global = {
  \key g \major
  \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
 \partial 4 s4 s2.*5 \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  \partial 4 d8 d g2 a4 b r8 fs8 b a g4 e8 a g fs g2. g
  }

antiphonMusicAlto = \relative c' {
  \partial 4 d8 d d2 fs4 fs s8 fs8 fs fs e8 e e4 e8 e e2. d
  }

antiphonMusicTenor =  \relative c' {
  \partial 4 d8 d b2 c4 b r8 d8 d b b4 (c) d d4 c a b2 b4
  }

antiphonMusicBass =  \relative c {
  \partial 4 d8[ d] g4 (fs) e4 d4 b4 c8 d e d c4 d8 d c2. g
  }

antiphonLyrics = \lyricmode {
  Le Sei -- gneur est Roi, il s'est vé -- tu de ma -- gni -- fi -- cen -- ce.
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseStropheRythm = {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|." \break
}
verseStropheMusicSoprano = \relative c'' {
  b\breve a1 g4
  g\breve a1 a4
  g\breve a1 b4
  }
verseStropheMusicAlto = \relative c'' {
  g\breve g1 fs4
  e\breve e1 fs4
  fs\breve g1 g4
  }

verseStropheMusicTenor = \relative c' {
  d\breve e1 b4
  b\breve d1 e4
  b\breve e1 d4
  }

verseStropheMusicBass = \relative c {
  g\breve c1 e4
  e\breve c1 d4
  e\breve c1 g'4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Le Seigne" \underline u "r est roi&nbsp;;"}
        \concat { \typewriter "   " "il s’est vêt" \underline u " de magnificence,"}
        \concat { \typewriter "   " "le Seigneur a revêt" \underline u " sa force."}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "2. " "Et la terre tient b" \underline o "n, inébranlable&nbsp;;"}
        \concat { \typewriter "   " "dès l’origine ton tr" \underline ô "ne tient bon,"}
        \concat { \typewriter "   " "depuis toujo" \underline u "rs, tu es."}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "3. " "Tes volontés sont vraim" \underline e "nt immuables&nbsp;:"}
        \concat { \typewriter "   " "la sainteté empl" \underline i "t ta maison,"}
        \concat { \typewriter "   " "Seigneur, pour la su" \underline i "te des temps."}
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
partition = {
  <<
    % Antienne à 4 voix mixtes
    %\include "../libs/layouts/commonAntiphonFourVoices.ily"
    \new ChoirStaff = "Antophon4Voices" <<
      \new Staff = "AntiphonSopranoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Soprano"
        \clef "treble"
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonSoprano" { \global \antiphonMusicSoprano\fermata}
        \new Lyrics \lyricsto "antiphonSoprano" { \antiphonLyricsSoprano }
      >>
      \new Staff = "AntiphonAltoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Alto"
        \clef "treble"
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonAlto" { \global \antiphonMusicAlto\fermata }
        \new Lyrics \lyricsto "antiphonAlto" { \antiphonLyricsAlto }
      >>
      \new Staff = "AntiphonTenorStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Ténor"
        \clef "treble_8"
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonTenor" { \global \antiphonMusicTenor\fermata }
        \new Lyrics \lyricsto "antiphonTenor" { \antiphonLyricsTenor }
      >>
      \new Staff  = "AntiphonBassStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Basse"
        \clef "bass"
        \new Dynamics \antiphonRythm
        \new Voice = "AntiphonBass" { \global \antiphonMusicBass\fermata }
        \new Lyrics \lyricsto "AntiphonBass" { \antiphonLyricsBass }
      >>
    >>
    %\include "../libs/layouts/commonPiano.ily"
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = #"Orgue"
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef treble
        \new Voice = "soprani" {\global \voiceOne \antiphonMusicSoprano\fermata }
        \new Voice = "alti" {\global \voiceTwo \antiphonMusicAlto\fermata }
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef bass
        \new Voice = "tenors" {\global \voiceThree \antiphonMusicTenor\fermata }
        \new Voice = "bass" {\global \voiceFour \antiphonMusicBass\fermata }
      >>
    >>
    % Psalmodie à 4 voix mixtes
    %\include "../libs/layouts/commonVerseFourVoices.ily"
    \new ChoirStaff = "versePsalmody"
    <<
      \new Staff = "verseSopranoAlto" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm}
        \new Voice = "verseSoprano" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \voiceOne \verseStropheMusicSoprano } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \voiceTwo \verseStropheMusicAlto } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm}
        \new Voice = "verseTenor" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \voiceOne \verseStropheMusicTenor } >>
        \new Voice = "verseBass" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \voiceTwo \verseStropheMusicBass } >>
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

#(set-global-staff-size 18)
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
\verseLyrics

% Midi output
partitionStrophe = {
      \new PianoStaff = "antiphonMusic"
      <<
        \new Staff <<
          \global \clef treble
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
          \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
        >>
        \new Staff <<
          \global \clef bass
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicTenor" \antiphonMusicTenor
          \new Voice = "antiphonMusicBass" \antiphonMusicBass
        >>
      >>
      \new ChoirStaff = "verseMusic"
      <<
        \new Staff = "verseMusicSA"
        <<
          \global
          \clef treble
          \new Dynamics {\verseStropheRythm}
          \new Voice = "verseMusicSoprano" \verseStropheMusicSoprano
          \new Voice = "verseMusicAlto" \verseStropheMusicAlto
        >>
        \new Staff = "verseMusicTB"
        <<
          \global
          \clef bass
          \new Dynamics {\verseStropheRythm}
          \new Voice = "verseMusicTenor" \verseStropheMusicTenor
          \new Voice = "verseMusicBass" \verseStropheMusicBass
        >>
      >>
    }
partitionVerset = {
      \new PianoStaff = "antiphonMusic"
      <<
        \new Staff <<
          \global \clef treble
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
          \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
        >>
        \new Staff <<
          \global \clef bass
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicTenor" \antiphonMusicTenor
          \new Voice = "antiphonMusicBass" \antiphonMusicBass
        >>
      >>
      \new ChoirStaff = "verseMusic"
      <<
        \new Staff = "verseMusicSA"
        <<
          \global
          \clef treble
          \new Dynamics {\verseStropheRythm}
          \new Voice = "verseMusicSoprano" \verseStropheMusicSoprano
          \new Voice = "verseMusicAlto" \verseStropheMusicAlto
        >>
        \new Staff = "verseMusicTB"
        <<
          \global
          \clef bass
          \new Dynamics {\verseStropheRythm}
          \new Voice = "verseMusicTenor" \verseStropheMusicTenor
          \new Voice = "verseMusicBass" \verseStropheMusicBass
        >>
      >>
    }

\book {
\bookOutputSuffix "Verset"
\score {
  <<
    \keepWithTag #'audio \unfoldRepeats \partitionVerset
    \context Staff = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
    \context Voice = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
  >>
  \midi { \set midiMergeUnisons = ##t  \tempo 4. = 55}
}
}
\book {
\bookOutputSuffix "Strophe"
\score {
  <<
    \keepWithTag #'audio \unfoldRepeats \partitionStrophe
    \context Staff = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
    \context Voice = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
  >>
  \midi { \set midiMergeUnisons = ##t \tempo 4. = 55}
}
}