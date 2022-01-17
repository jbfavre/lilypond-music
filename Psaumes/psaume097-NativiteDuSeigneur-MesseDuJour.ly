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
  title = "Psaume 97"
  subtitle = \markup { \column { "Nativité du Seigneur" "Messe du Jour" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, novembre 2021"
}

global = {
  \key a \minor
  \time 6/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
 \partial 4. s4. s2.*5 \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  \partial 4. r4 e8 a4. a8 g a b4 b8 b a b c4. c8 b c a4. (g) a2.
  }

antiphonMusicAlto = \relative c' {
  \partial 4. s4 e8 e4. e8 e e f4 f8 f f f g4. f8 f f f4. (e4.) e2.
  }

antiphonMusicTenor =  \relative c' {
  \partial 4. s4 e8 c4 b8 a4. d4 c8 b4. e4 d8 a4 b8 d4. (b4.) c2.
  }

antiphonMusicBass =  \relative c {
  \partial 4. r4 e8 a,4 b8 c4. b4 c8 d4. c4 d8 f4 e8 d4. (e) a,2.
  }

antiphonLyrics = \lyricmode {
  La ter -- re tout en -- tiè -- re~a vu le sa -- lut que Dieu nous don -- ne.
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \lyricmode {
  La ter -- re a vu le sa -- lut que Dieu nous don -- ne.
  }
antiphonLyricsBass = \antiphonLyricsTenor

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseStropheRythm = {
}
verseRythm = {
  \accidentalStyle forget
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s \bar "|."
}
verseStropheMusicSoprano = \relative c'' {}
verseMusicSoprano = \relative c'' {
  a\breve a1 g4
  f\breve a1 g4 a
  }
verseStropheMusicAlto = \relative c' {}
verseMusicAlto = \relative c' {
  e\breve f1 e4
  c\breve f1 e4 e
  }

verseStropheMusicTenor = \relative c' {}
verseMusicTenor = \relative c' {
  c\breve c1 b4
  a\breve d1 b4 c
  }

verseStropheMusicBass = \relative c {}
verseMusicBass = \relative c {
  a\breve d1 e4
  f\breve d1 e4 a,
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Chantez au Seigne" \underline u "r un chant nouveau,"}
        \concat { \typewriter "   " "car il a f" \underline a "it des merveilles&nbsp;;"}
        \concat { \typewriter "   " "par son bras très saint, par sa m" \underline a "in puissante,"}
        \concat { \typewriter "   " "il s’est assur" \underline é " la victoire."}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "2. " "Le Seigneur a fait conn" \underline a "ître sa victoire"}
        \concat { \typewriter "   " "et révélé sa just" \underline i "ce aux nations&nbsp;;"}
        \concat { \typewriter "   " "il s’est rappelé sa fidélit" \underline é ", son amour,"}
        \concat { \typewriter "   " "en faveur de la mais" \underline o "n d’Israël."}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "3. " "La terre tout enti" \underline è "re a vu"}
        \concat { \typewriter "   " "la vict" \underline o "ire de notre Dieu."}
        \concat { \typewriter "   " "Acclamez le Seigne" \underline u "r, terre entière,"}
        \concat { \typewriter "   " "sonnez, chant" \underline e "z, jouez&nbsp;!"}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "4. " "Jouez pour le Seigne" \underline u "r sur la cithare,"}
        \concat { \typewriter "   " "sur la cithare et t" \underline o "us les instruments ;"}
        \concat { \typewriter "   " "au son de la tromp" \underline e "tte et du cor,"}
        \concat { \typewriter "   " "acclamez votre r" \underline o "i, le Seigneur&nbsp;!"}
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
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm \verseRythm}
        \new Voice = "verseSoprano" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicSoprano \verseMusicSoprano } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicAlto \verseMusicAlto } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
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