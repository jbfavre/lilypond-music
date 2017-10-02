\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "libs/settings.ly"
% Ajust this setting to get a single page psalm
staffCustomSize = 18
tempoAntiphon = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}
tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

title = "Psaume 117 (1)"
subtitle = ""
composer = "Jean Baptiste Favre"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key c \major
}
% Ajust this setting to get a single page psalm
staffSize = 17

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  d4 e f2 e4 f g2 b4 b a2 \breathe
  a4 g c b a g a2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
  }

antiphonLyrics = \lyricmode {
  Ren -- dez grâ -- ce~au Sei -- gneur&nbsp;: Il est bon&nbsp;!
  É -- ter -- nel est son a -- mour&nbsp;!
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
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando b2 \bar "||" \caesura
    \tempoVerseAcelerando g\breve f1 \tempoVerseRallentando a2 \bar "||"  
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
  }

verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    "Oui, que le" \markup { \concat { d \underline i se" "Isra}} -- ël&nbsp;:
    \set stanza = #"1. "
    Éter -- \markup { \concat { n \underline e l" "est" "son" "a}} -- \markup { \concat { mour" "!" "\bold &plus;}}
  }
verseOneLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Que le dise la mai" -- \markup { \concat { s \underline on" "d’Aa}} -- ron&nbsp;:
    Éter -- \markup { \concat { n \underline e l" "est" "son" "a}} -- \markup { \concat { mour" "!" "\bold *}}
  }
verseOneLyricsPartThree =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Qu’ils le disent, ceux qui" \markup { \concat { cr \underline a ignent" "le" "Sei}} -- gneur&nbsp;:
    Éter -- \markup { \concat { n \underline e l" "est" "son" "a}} -- mour&nbsp;!
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Dans mon angoisse j'ai cri" -- \markup { \concat { \underline é" "vers" "le" "Sei}} -- gneur,
    \set stanza = #"2. "
    "et lui m'a exau" -- \markup { \concat { c \underline é," "mis" "au}} large.
  }
verseTwoLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Le Seigneur est pour" \markup { \concat { m \underline o i," "je" "ne" "crains}} pas&nbsp;;
    "que pourrait un" \markup { \concat { h \underline o mme" "contre}} moi&nbsp;?
  }
verseTwoLyricsPartThree =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Le Seigneur est avec" \markup { \concat { m \underline oi" "pour" "me" "dé}} -- fendre,
    "et moi, je brave" -- \markup { \concat { r \underline a i" "mes" "enne}} -- mis.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Mieux vaut s'appuy" -- \markup { \concat { \underline e r" "sur" "le" "Sei}} -- gneur
    \set stanza = #"3. "
    "que de comp" -- \markup { \concat { t \underline e r" "sur" "les}} hommes;*
  }
verseThreeLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "mieux vaut s'appuy" -- \markup { \concat { \underline e r" "sur" "le" "Sei}} -- gneur
    "que de comp" -- \markup { \concat { t \underline e r" "sur" "les}} puissants&nbsp;!
  }
verseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
    "Toutes les na" -- \markup { \concat { t \underline i ons" "m'ont" "encer}} -- clé:
    \set stanza = #"4. "
    "au nom du Sei" -- \markup { \concat { gn \underline e ur," "je" "les" "dé}} -- truis!
  }
verseFourLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Elles m'ont cer" -- \markup { \concat { n \underline é," "encer}} -- clé:
    "au nom du Sei" -- \markup { \concat { gn \underline e ur," "je" "les" "dé}} -- truis!
  }
verseFourLyricsPartThree =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \markup { \concat { Elles" "m'ont" "cerné," "comme" "des" "guèpes: \bold &plus;" "ce" "n'é}}
        -- \markup { \concat { t \underline a it" "qu'un" "feu" "de}} \markup { \concat { ronces" "\bold *}}
    "au nom du Sei" -- \markup { \concat { gn \underline e ur," "je" "les" "dé}} -- truis!
  }
verseFiveLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"5. "
    "On m’a poussé, bouscul" -- \markup { \concat { \underline é" "pour" "m’abat}} -- tre;
    \set stanza = #"5. "
    "mais le Sei" -- \markup { \concat { gn \underline eur" "m’a" "défen}} -- du.
  }
verseFiveLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Ma force et mon" \markup { \concat { ch \underline a nt, ""c’est" "le" "Sei}} -- gneur;
    "il est pour" \markup { \concat { m \underline oi" "le" "sa}} -- lut.
  }

groupedVersesLyrics = <<
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseOneLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseOneLyricsPartTwo }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseOneLyricsPartThree }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseTwoLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseTwoLyricsPartTwo }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseTwoLyricsPartThree }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseThreeLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseThreeLyricsPartTwo }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseFourLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseFourLyricsPartTwo }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseFourLyricsPartThree }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseFiveLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseFiveLyricsPartTwo }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "libs/layouts/fr.ly"
\include "libs/common.ly"
%\include "libs/layouts/dualPsalmody.ly"
\include "libs/layouts/singlePsalmody.ly"
\include "libs/layouts/outputMidi.ly"