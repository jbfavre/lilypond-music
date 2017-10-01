\version "2.18.2"
\language "english"

title = "Psaume 68"
subtitle = "12e dimanche ordinaire (année A)"
composer = "Jean Baptiste Favre"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key d \minor
}
% Ajust this setting to get a single page psalm
staffSize = 17

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
  d8 a d c f,2 \breathe
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
  f\breve g1 b4 a2 \bar "||"
  c\breve b1 g4 a2 \bar "||"
  a\breve f1 g4 a b2 \bar "||"
  b\breve d1 c2 \bar "||"
  c\breve c1 b4 a b2 \bar "||"
  b\breve g1 f4 a2 \bar "||"  
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = 	\relative c' {
  }

bassVerseMusic = \relative c {
  d\breve b1 g4 a2
  f\breve g1 e4 a2
  d\breve b1 c4 a g2
  e\breve f1 a2
  f\breve a1 d4 d g2
  g\breve e1 d4 a2
  }

%{DEBUT-DU-TEXTE-DE-LA-PSALMODIE




FIN-DU-TEXTE-DE-LA-PSALMODIE%}

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
    "Les pauvres l’ont" \markup { \concat { v \underline u," "ils" "sont" "en}} fête&nbsp;:
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
\include "libs/layouts/singlePsalmody.ly"