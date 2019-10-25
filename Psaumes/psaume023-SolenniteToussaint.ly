\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "../libs/commonFunctions.ily"
\include "../libs/settings.ily"
\include "../libs/translations/fr.ily"
\include "../libs/psalmody.ily"

title = "Psaume 23"
subtitle = \markup { \column { "Solennité de la Toussaint" "(forme directe)" }}
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, septembre 2019"

global = {
  \key d \major
  \time 3/4
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

sopranoAntiphonMusic = \relative c' {
  d4 fs g a a d, b'2 a4  g fs g a g e fs2.  \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  a4 d  d e e b d2 ds4 e e e e e cs d2. \fermata
  \bar "|."
  }

tenorAntiphonMusic =  \relative c {
  fs4 b g a a fs g2 fs4 b b b cs cs a a2. \fermata
  \bar "|."
  }

bassAntiphonMusic =  \relative c {
  d4 b b cs cs b g2 b4 e e e a, a a d2. \fermata
  \bar "|."
  }

%{
figuredBass = \figuremode {
    <_>4 <6 5>2. <"?">4 <6 5>2
    <6 5>2 <6 5>2 <7>4 <5/>4 <5 4>4 <7 _+>4 <5>2
  }
harmony = \figuremode {
    <_>4 <I>2. <I>4 <V>2
    <V>2 <VI>2 <IV>4 <IV>4 <V>4 <V>4 <I>2
  }
%}
antiphonLyrics = \lyricmode {
  Voi -- ci le peu -- ple de ceux qui cher -- chent ta fa -- ce, Sei -- gneur.
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
    \tempoVerseAcelerando fs\breve \tempoVerseRallentando a1 b4 \bar "||" \caesura
    \tempoVerseAcelerando b\breve \tempoVerseRallentando a1 a4 \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    d\breve e1 d4 \caesura
    g\breve e1 fs4 \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    a\breve a1 fs4 \caesura
    b\breve cs1 d4 \caesura
  }

bassVerseMusic = \relative f {
    \caesura
    d\breve cs1 b4 \caesura
    e\breve a,1 d4 \caesura
  }

%{

      \concat { "Au Seigneur, le m" \underline o "nde et sa richesse," }
      \concat { "la t" \underline e "rre et tous ses habitants&nbsp;!" }
      \concat { "C’est lui qui l’a fond" \underline é "e sur les mers" }
      \concat { "et la garde inébranl" \underline a "ble sur les flots." }
  
      \concat { "Qui peut gravir la mont" \underline a "gne du Seigneur" }
      \concat { "et se tenir dans le l" \underline i "eu saint&nbsp;?" }
      \concat { "L’homme au cœur pur, aux m" \underline a "ins innocentes," }
      \concat { "qui ne livre pas son " \underline â "me aux idoles." }
  
      \concat { "Il obtient, du Seign" \underline e "ur, la bénédiction," }
      \concat { "et de Dieu son Sauv" \underline e "ur, la justice." }
      \concat { "Voici le p" \underline e "uple de ceux qui le cherchent&nbsp;!" }
      \concat { "Voici Jacob qui rech" \underline e "rche ta face&nbsp;!" }

%}

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Au Seigneur, le m" \underline o "nde et sa richesse," }
      \concat { "la terre et to" \underline u "s ses habitants&nbsp;!" }
      \concat { "C’est lui qui l’a fond" \underline é "e sur les mers" }
      \concat { "et la garde inébranl" \underline a "ble sur les flots." }
      " "
      \concat { "Qui peut gravir la mont" \underline a "gne du Seigneur" }
      \concat { "et se ten" \underline i "r dans le lieu saint&nbsp;?" }
      \concat { "L’homme au cœur pur, aux m" \underline a "ins innocentes," }
      \concat { "qui ne livre pas son " \underline â "me aux idoles." }
      " "
      \concat { "Il obtient, du Seigne" \underline u "r, la bénédiction," }
      \concat { "et de Dieu son Sauve" \underline u "r, la justice." }
      \concat { "Voici le peuple de ce" \underline u "x qui le cherchent&nbsp;!" }
      \concat { "Voici Jacob qui rech" \underline e "rche ta face&nbsp;!" }

    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"
% Load Psalmody layout
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
% Load midi output
%\include "../libs/layouts/outputMidi.ily"