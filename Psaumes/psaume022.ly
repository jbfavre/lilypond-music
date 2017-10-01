\version "2.18.2"
\language "english"

title = "Psaume 22"
subtitle = "4e dimanche de Carême - Lætare (année A)"
composer = "Jean Baptiste Favre"

global = {
  \time 2/4
  \key d \minor
}
% Ajust this setting to get a single page psalm
staffSize = 15

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
   d8 e f4 (f8) f8 g g a2
   c4 d8 c b4 a8 g a2 \fermata
   \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  d8 cs a4 (a8) d e e f2
  a4 a8 f8 d4 d8 d cs2
  }

tenorAntiphonMusic =  \relative c' {
  g8 g f4 (f8) f8 g8 c c2
  c4 c8 a g4 g8 b cs2
  }

bassAntiphonMusic =  \relative c {
  bf8 a d4 (d8) bf8 c e f2
  e4 f8 c e4 b8 e8 e2
  }

antiphonLyrics = \lyricmode {
  Le Sei -- gneur est mon ber -- ger_:
  rien ne sau -- rait me man -- quer.
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
  g'\breve a1 f2 \bar "||"
  f\breve g1 a2 \bar "||"
  a\breve c1 d2 \bar "||"
  c\breve b1 a4 g4 a2 \bar "|."
  }

altoVerseMusic = \relative c' {
  d\breve cs1 a2
  d\breve e1 f2
  f\breve a1 f2
  f\breve g1 e4 d4 cs2
  }

tenorVerseMusic = \relative c' {
  bf\breve g1 f2
  a\breve g1 f2
  a\breve c1 bf2
  a\breve b1 g4 b4 cs2
  }

bassVerseMusic = \relative c {
  g'\breve e1 d2
  bf\breve c1 c2
  d\breve e1 f2
  c\breve d1 b4 e4 e2
  }


verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    "Le Seigneur est" \markup {\concat { m \underline o n " " ber }} -- \markup {\concat { g \underline e r, }}
    "je ne" -- \markup {\concat { m \underline a nque " " de}} \markup {\concat { r \underline i en,}}
    \set stanza = #"1. "
    "Sur des" \markup {\concat { pr \underline é s " " d’herbe }} \markup {\concat { fr \underline a îche, }}
    "il me" \markup { \concat { f \underline a it }} re -- po -- ser.
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Il me mène vers les" \markup { \concat { e \underline a ux " " tran }} -- \markup {\concat { qu \underline i lles }}
    "et me" \markup {\concat { f \underline a it " " re }} -- vivre;
    \set stanza = #"2. "
    "il me conduit par le" "juste che" -- \markup {\concat { m \underline i n}}
    "pour l’hon" -- \markup {\concat { n \underline e ur}} de son nom.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Si je traverse les ra" -- \markup { \concat { v \underline i ns " " de " " la}} \markup {\concat { m \underline o rt,}}
    "je ne" \markup {\concat { cr \underline a ins " " aucun}} \markup {\concat { m \underline a l,}}
    \set stanza = #"3. "
    "car tu" \markup {\concat { \underline e s " " avec}} \markup {\concat { m \underline o i:}}
    "ton bâton me" \markup {\concat { gu \underline i de " " et }} me ras -- sure.
  }
verseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
    "Tu prépares la" \markup { \concat { t \underline a ble " " pour}} \markup {\concat { m \underline o i}}
    "devant mes" \markup {\concat { \underline e nne}} -- mis;
    \set stanza = #"4. "
    "tu répands le par" -- \markup {\concat { f \underline u m " " sur " " ma}} \markup {\concat { t\underline ê te,}}
    "ma cou" -- \markup { \concat { pe " " \underline e st}}  dé -- bor -- dante.
  }
verseFiveLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"5. "
    "Grâce et bon" -- \markup { \concat { h \underline e ur " " m’accom}} -- \markup {\concat { p \underline a gnent}}
    "tous les" \markup {\concat { j \underline o urs " " de " "ma }} \markup {\concat { v \underline i e;}}
    \set stanza = #"5. "
    "j’habiterai la mai" -- \markup {\concat { s \underline o n " " du " " Sei}} -- \markup {\concat { gn \underline e ur}}
    "pour la du" -- \markup {\concat { r \underline é e}} de mes jours.
  }

groupedVersesLyrics = <<
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseOneLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseTwoLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseThreeLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseFourLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseFiveLyrics }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "libs/layouts/fr.ly"
\include "libs/common.ly"
\include "libs/layouts/singlePsalmody.ly"