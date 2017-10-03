\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "libs/settings.ly"
% Ajust this setting to get a single page psalm
staffCustomSize = 15

title = "Psaume 68"
subtitle = "12e dimanche ordinaire (année A)"
composer = "Jean Baptiste Favre"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  d8 e f g a2 \breathe
  c4 b8 g a2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
  d8 c f e a,2 \breathe
  a4 d8 b a2 \fermata
  }

antiphonLyrics = \lyricmode {
  Dans ton grand a -- mour,
  Dieu, ré -- ponds -- moi. 
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

sopranoVerseMusic = \relative c' {
    \caesura
    \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando b4 a2 \bar "||" \caesura
    \tempoVerseAcelerando c\breve b1 \tempoVerseRallentando g4 a2 \bar "||" \caesura
    \tempoVerseAcelerando a\breve f1 \tempoVerseRallentando g4 a b2 \bar "||" \caesura
    \tempoVerseAcelerando b\breve d1 \tempoVerseRallentando c2 \bar "||" \caesura
    \tempoVerseAcelerando c\breve c1 \tempoVerseRallentando b4 a b2 \bar "||" \caesura
    \tempoVerseAcelerando b\breve g1 \tempoVerseRallentando f4 a2 \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
  }

tenorVerseMusic = 	\relative c' {
    \caesura
  }

bassVerseMusic = \relative c {
    \caesura
    d\breve c1 b4 a2 \caesura
    f\breve g1 e4 a2 \caesura
    d\breve b1 e4 a g2 \caesura
    e\breve f1 a2 \caesura
    f\breve a1 d,4 f g2 \caesura
    e,\breve f1 g4 a2 \caesura
  }

verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    "C’est pour toi que j’en" -- \markup { \concat { d \underline u re}} l’in -- sulte,
    "que la honte me" \markup { \concat { co \underline u vre" "le}} vi -- sage&nbsp;:
    \set stanza = #"1. "
    "je suis un étran" -- \markup { \concat { g \underline e r}} pour mes frères,
    "un inconnu pour les" \markup { \concat { f \underline i ls" "de" "ma}} mère.
    \set stanza = #"1. "
    "L’amour de ta mai" -- \markup { \concat { s \underline o n}} m’a per -- du&nbsp;;
    "on t’insulte, et l’insulte re" -- \markup { \concat { t \underline o mbe}} sur moi.
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Et moi, je te" \markup { \concat { pr \underline i e,}} Sei -- gneur&nbsp;:
    c’est \markup { \concat { l’he \underline u re" "de}} ta grâce&nbsp;;
    \set stanza = #"2. "
    "dans ton grand amour," \markup { \concat { Di \underline e u,}} ré -- ponds- -- moi,
    "par ta vérité" \markup { \concat { s \underline a uve}}-moi.
    \set stanza = #"2. "
    "Réponds-moi, Sei" -- \markup { \concat { gn \underline e ur," "car" "il" "est" "bon,}} ton a -- mour&nbsp;;
    "dans ta grande ten" -- \markup { \concat { dr \underline e sse," "regar }} de-moi.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Les pauvres l’ont" \markup { \concat { v \underline u," "ils" "sont}} en fête&nbsp;:
    "« Vie et joie, à" \markup { \concat { v \underline o us" "qui" "cher}} chez Dieu&nbsp;!&nbsp;»
    \set stanza = #"3. "
    "Car le Seigneur é" -- \markup { \concat { c \underline o u}} -- te les humbles,
    "il n’oublie pas les" \markup { \concat { s \underline i ens" "emprison}} -- nés.
    \set stanza = #"3. "
    "Que le ciel et la" \markup { \concat { t \underline e rre}} le cé -- lè -- brent,
    "les mers et" \markup { \concat { t \underline o ut leur peu}} -- plement&nbsp;!
  }

groupedVersesLyrics = <<
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseOneLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseTwoLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseThreeLyrics }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "libs/layouts/fr.ly"
\include "libs/common.ly"
%\include "libs/layouts/dualPsalmody.ly"
\include "libs/layouts/singlePsalmody.ly"
\include "libs/layouts/outputMidi.ly"