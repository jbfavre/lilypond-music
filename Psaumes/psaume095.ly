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
% Ajust this setting to get a single page psalm
staffCustomSize = 15

title = "Psaume 95"
subtitle = "29e dimanche ordinaire (année A)"
composer = "Jean Baptiste Favre"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key e \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  e4 b' b8 a8 gs4. \breathe
  e8 fs gs a gs fs2 gs2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  b4 ds ds8 fs e4 \breathe
  b4 cs8 e e e cs4 (ds) e2
  }

tenorAntiphonMusic =  \relative c' {
  gs4 fs fs8 ds8 gs4 \breathe
  gs4 a8 b cs cs a2 b2
  }

bassAntiphonMusic =  \relative c {
  e4 b b8 bs8 cs4 \breathe
  b4 a8 gs fs16 a cs8 a4 (b) e2 \fermata
  }

antiphonLyrics = \lyricmode {
  Ren -- dez au Sei -- gneur
  La gloi -- re~et la puis -- san -- ce
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
    \caesura
    \tempoVerseAcelerando b\breve cs1 \tempoVerseRallentando b2 \bar "||" \caesura
    \tempoVerseAcelerando b\breve a1 \tempoVerseRallentando gs4 gs fs2 \bar "||" \caesura
    \tempoVerseAcelerando gs\breve a1 \tempoVerseRallentando gs4 fs e2 \bar "||" \caesura
    \tempoVerseAcelerando e\breve a1 \tempoVerseRallentando gs4 e fs2 \bar "||" \caesura
  }

altoVerseMusic = \relative c'' {
    \caesura
    gs\breve e1 es2 \bar "||" \caesura
    es\breve cs1 e4 e ds2 \bar "||" \caesura
    ds\breve ds1 ds4 ds cs2 \bar "||" \caesura
    cs\breve e1 e4 cs4 ds2 \bar "||" \caesura
  }

tenorVerseMusic = 	\relative c' {
    \caesura
    b\breve cs1 cs2 \bar "||" \caesura
    gs\breve a1 b4 b4 b2 \bar "||" \caesura
    gs\breve bs1 bs4 gs gs2 \bar "||" \caesura
    a\breve cs1 b4 gs4 b2 \bar "||" \caesura
  }

bassVerseMusic = \relative c {
    \caesura
    e\breve a1 gs2 \bar "||" \caesura
    cs,\breve fs1 e4 cs4 b2 \bar "||" \caesura
    bs\breve gs1 gs4 bs cs2 \bar "||" \caesura
    a\breve fs'1 e4 cs b2 \bar "||" \caesura
  }
%{

%}
verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    "Chantez au Sei" -- \markup { \concat { gn \underline e ur" "un" "chant" "nou}} -- veau,
    "chantez au Sei" -- \markup { \concat { gn \underline e ur,}} terre en -- tière,
    \set stanza = #"1. "
    "racontez à tous les" \markup { \concat { p \underline e u}} -- ples sa gloire,
    "à toutes les na" -- \markup { \concat { ti \underline o ns}} ses mer -- veilles&nbsp;!
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Il est grand, le Sei" -- \markup { \concat { gn \underline e ur," "hautement" "lou}} -- é,
    "redoutable au-des" -- \markup { \concat { s \underline us" "de}} tous les dieux&nbsp;:
    \set stanza = #"2. "
    "néant, tous les" \markup { \concat { di \underline e ux}} des na -- tions&nbsp;!
    "Lui, le Sei" -- \markup { \concat { gn \underline e ur," "a}} fait les cieux.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Rendez au Sei" -- \markup { \concat { gn \underline e ur," "fam illes" "des}} peuples,
    "rendez au Seigneur la" \markup { \concat { gl \underline oire" "et}} la puis -- sance,
    \set stanza = #"3. "
    "rendez au Seigneur la" \markup { \concat { gl \underline o ire}} de son nom.
    "Apportez votre of" -- \markup { \concat { fr \underline a nde," "entrez" "dans}} ses par -- vis.
  }

verseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
    "Adorez le Sei" -- \markup { \concat { gn \underline e ur," "éblouissant" "de" "sainte}} -- té&nbsp;:
    "tremblez devant" \markup { \concat { lu \underline i,}} terre en -- tière.
    \set stanza = #"4. "
    "Allez dire aux nations&nbsp;: «&nbsp;Le" \markup { \concat { S \underline e i}} -- gneur est roi&nbsp;!&nbsp;»
    "Il gouverne les" \markup { \concat { pe \underline u ples" "a}} -- vec droi -- ture.
  }

groupedVersesLyrics = <<
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseOneLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseTwoLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseThreeLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseFourLyrics }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
%\include "../libs/layouts/dualPsalmody.ily"
\include "../libs/layouts/singlePsalmody.ily"
\include "../libs/layouts/outputMidi.ily"