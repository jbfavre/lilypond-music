\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "libs/commonFunctions.ily"
\include "libs/settings.ily"
\include "libs/translations/fr.ily"
\include "libs/psalmody.ily"

title = "Psaume 117 - Alleluia"
subtitle = \markup { \column { "Z117-4" "Vigile Pascale" }}
poet = "Elisabeth Baranger"
composer = \markup { \column { "Elisabeth Baranger" "Jean Baptiste Favre (psalmodie)" }}
dedicace = "Clichy la Garenne, octobre 2019"

global = {
  \key b \minor
  \time 4/4
}

tempoAntiphon = {
  \set Score.tempoHideNote = ##t
  \tempo 4=80
}
tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=80
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=80
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  \bar ".|:"
  b4. as8 b4 fs a4. gs8 a4 e g2 d4 e fs1
  \bar ":|." \break
  }

altoAntiphonMusic = \relative c' {
  \bar ".|:"
  fs4. fs8 fs4 d e4. e8 e4 cs d2 d4 b as1
  \bar ":|." \break
  }

tenorAntiphonMusic =  \relative c' {
  \bar ".|:"
  d4. cs8 d cs b4 cs4. b8 cs b a4 b2 b4 e cs1
  \bar ":|." \break
  }

bassAntiphonMusic =  \relative c' {
  \bar ".|:"
  b4. fs8 b4 b a4. e8 a4 a g2 g4 g fs1
  \bar ":|." \break
  }

antiphonLyrics = \lyricmode {
  Al -- le -- lu -- ia, Al -- le -- lu -- ia, Al -- le -- lu -- ia&nbsp;!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \tenorAntiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando fs\breve \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando fs\breve \tempoVerseRallentando b4 \bar "||" \caesura
    \tempoVerseAcelerando g\breve \tempoVerseRallentando b4 \bar "||" \caesura
    \tempoVerseAcelerando b\breve \tempoVerseRallentando cs4 b as \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    d\breve e4 \caesura
    e\breve d4 \caesura
    e\breve fs4 \caesura
    g\breve g4 f! e \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    a\breve a4 \caesura
    as\breve b4 \caesura
    b\breve d4 \caesura
    d\breve e4 d cs! \caesura
  }

bassVerseMusic = \relative f {
    \caesura
    d\breve cs4 \caesura
    cs\breve fs4 \caesura
    e\breve b4 \caesura
    g'\breve e4 f! fs \caesura
  }

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "La pierre qu'on " rejet \underline é e " les bâtisseurs," }
      \concat { "est " deven \underline u e " la pierre d'angle&nbsp;!" }
      \concat { "Proclamez les " œ \underline u vres " du Seigneur," }
      \concat { "la " merv \underline e ille " devant nos yeux&nbsp;!" }

    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "libs/defaultPianoSettings.ly"
\include "libs/layouts/commonPiano.ily"
% Load Psalmody layout
\include "libs/layouts/commonLayout.ily"
\include "libs/layouts/psalmody.ily"
% Load midi output
%\include "../libs/layouts/outputMidi.ily"