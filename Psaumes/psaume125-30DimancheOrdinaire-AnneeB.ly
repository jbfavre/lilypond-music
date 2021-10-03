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
  title = "Psaume 125"
  subtitle = \markup { \column { "30ème Dimanche du Temps Ordinaire" "Année B" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, octobre 2021"
}

global = {
  \key g \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
  \markCustom "Antienne"
  s4.*9 \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  fs8 a g fs8. fs16 e[ fs] g8 a b a4.
  r8 a8 fs g4. g8 a b a4 (g8) fs4.
  }


antiphonMusicAlto = \relative c' {
  d8 d e8 d4 d8 d d e8 e4.
  r8 fs8 e8 e4. d8 d d e4. d4.
  }

antiphonMusicTenor =  \relative c' {
  a4 a8 a4 g8 b4 d8 cs4.
  r8 a8 a8 d4. b4 b8 cs4 (b8) a4.
  }

antiphonMusicBass =  \relative c {
  d8 d cs8 d cs b16 a g4 (gs8) a8 b cs
  d4 cs8 b8 b' a g (fs) e a, (b) (cs) d4.
  }

antiphonLyrics = \lyricmode {
  Quel -- les mer -- veil -- les le Sei -- gneur fit pour nous&nbsp;:
  nous é -- tions en gran -- de fê -- te&nbsp;!
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto =  \lyricmode {
  Quel -- les mer -- veil -- les fit le Sei -- gneur&nbsp;:
  nous é -- tions en gran -- de fê -- te&nbsp;!
  }
antiphonLyricsTenor = \lyricmode {
  Quel -- les mer -- veil -- les Sei -- gneur&nbsp;:
  nous é -- tions tous en fê -- te&nbsp;!
  }
antiphonLyricsBass = \lyricmode {
  Quel -- les mer -- veil -- les le Sei -- gneur fit pour nous&nbsp;:
  nous é -- tions tous en gran -- de fê -- te&nbsp;!
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseStropheRythm = {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s s \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|." \break
}
verseRythm = {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s s \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|."
}
verseStropheMusicSoprano = \relative c' {
  fs\breve a1 fs4 e d
  d\breve e1 e4
  e\breve fs1 d4
  g\breve fs1 e4
  }
verseMusicSoprano = \relative c' {
  fs\breve a1 fs4 e d
  d\breve e1 e4
  }
verseStropheMusicAlto = \relative c' {
  d\breve e1 cs4 cs b
  b\breve d1 cs4
  cs\breve cs1 b4
  b\breve d1 cs4
  }
verseMusicAlto = \relative c' {
  d\breve e1 cs4 cs b
  b\breve d1 cs4
  }

verseStropheMusicTenor = \relative c' {
  a\breve cs1 a4 fs fs
  fs\breve b1 a4
  a\breve fs1 fs4
  b\breve b1 a4
  }
verseMusicTenor = \relative c' {
  a\breve cs1 a4 fs fs
  fs\breve b1 a4
  }

verseStropheMusicBass = \relative c {
  d\breve a1 a4 as b
  b\breve g1 a4
  a\breve as1 b4
  g\breve gs1 a4
  }
verseMusicBass = \relative c {
  d\breve a1 a4 as b
  b\breve g1 a4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Quand le Seigneur ramena les capt" \underline i "fs à Sion,"}
        \concat { \typewriter "   " "nous éti" \underline o "ns comme en rêve&nbsp;!"}
        \concat { \typewriter "   " "Alors notre bouche était pl" \underline e "ine de rires,"}
        \concat { \typewriter "   " "nous poussi" \underline o "ns des cris de joie."}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "2. " "Alors on disait parm" \underline i " les nations&nbsp;:"}
        \concat { \typewriter "   " "« quelle merveilles fait pour e" \underline u "x"}
        \concat { \typewriter "   " "                                        le Seigneur&nbsp;!»"}
        \concat { \typewriter "   " "Quelles merveilles le Seigne" \underline u "r"}
        \concat { \typewriter "   " "                                        ·fit pour nous,"}
        \concat { \typewriter "   " "nous éti" \underline o "ns en grande fêtes."}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "3. " "Ramène, Seigne" \underline u "r, nos captifs,"}
        \concat { \typewriter "   " "comme les torr" \underline e "nts au désert."}
        \concat { \typewriter "   " "Qui s" \underline è "me dans les larmes,"}
        \concat { \typewriter "   " "moiss" \underline o "ne dans la joie."}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "4. " "Il s'en va, il s'en v" \underline a " en pleurant,"}
        \concat { \typewriter "   " "il j" \underline e "tte la semence&nbsp;;"}
        \concat { \typewriter "   " "Il s'en vient, il s'en vi" \underline e "nt dans la joie,"}
        \concat { \typewriter "   " "Il rapp" \underline o "rte les gerbes."}
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
        \clef treble \accidentalStyle forget
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm \verseRythm}
        \new Voice = "verseSoprano" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicSoprano \verseMusicSoprano } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicAlto \verseMusicAlto } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass \accidentalStyle forget
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm \verseRythm}
        \new Voice = "verseTenor" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicTenor \verseMusicTenor } >>
        \new Voice = "verseBass" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicBass \verseMusicBass } >>
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

#(set-global-staff-size 17)
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
          \new Dynamics {\verseRythm}
          \new Voice = "verseMusicSoprano" \verseMusicSoprano
          \new Voice = "verseMusicAlto" \verseMusicAlto
        >>
        \new Staff = "verseMusicTB"
        <<
          \global
          \clef bass
          \new Dynamics {\verseRythm}
          \new Voice = "verseMusicTenor" \verseMusicTenor
          \new Voice = "verseMusicBass" \verseMusicBass
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
  \midi { \set midiMergeUnisons = ##t  \tempo 4. = 40}
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
  \midi { \set midiMergeUnisons = ##t \tempo 4. = 40}
}
}