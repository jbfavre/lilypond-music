\version "2.18.2"
\language "english"

title = "Psaume 102"
subtitle = "24e dimanche ordinaire (année A)"
composer = "Jean Baptiste Favre"

global = {
  \key f \major
  \time 2/4
}
% Ajust this setting to get a single page psalm
staffSize = 16

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \partial 4
  f8 g a4 g8 a c4 bf8 a g2 \breathe
  a8 a g a f d f g a2 \fermata
  \bar "|."
  }

altoAntiphonMusic = \relative c' {
  \partial 4
  c8 c d4 bf8 c8 d4 d8 c e2 \breathe
  e8 e cs e d a d e c2 \fermata
  \bar "|."
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4
  a8 g f4 f8 e8 f4 g8 a8 g2 \breathe
  g8 g a g a f bf bf a2 \fermata
  \bar "|."
  }

bassAntiphonMusic =  \relative c {
  \partial 4
  f8 e d4 d8 c bf4 d8 f c2 \breathe
  cs8 cs a cs d c bf c f2 \fermata
  \bar "|."
  }

antiphonLyrics = \lyricmode {
  Le Sei -- gneur est ten -- dresse et pi -- tié,
  lent à la co -- lère et plein d’a -- mour.
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
  a\breve c2 \bar "||"
  b\breve g1 a2 \bar "||"
  a\breve g1 a4 f2 \bar "||"
  c'\breve bf1 g4 a2 \bar "|."
  }

altoVerseMusic = \relative c' {
  f\breve e2
  g\breve e1 e2
  e\breve e1 e4 d2
  f\breve g1 d4 e2
  }

tenorVerseMusic = \relative c' {
  d\breve c2
  d\breve b1 c2
  cs\breve cs1 cs4 a2
  d\breve e1 bf4 cs2
  }

bassVerseMusic = \relative c {
  f,\breve a2
  g\breve b1 c2
  cs\breve a1 cs4 d2
  bf\breve c1 e4 a,2
  }


verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    "Bénis le Seigneur, ô mon" âme,
    "bénis son nom très" \markup { \concat { s \underline a int, " " tout " " mon}} être!
    \set stanza = #"1. "
    "Bénis le Sei" -- \markup { \concat {gn \underline e ur, " " ô}} mon âme,
    "n’oublie au" -- \markup { \concat { c \underline u n " " de " " ses}} bien -- faits!
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Car il pardonne toutes tes of" -- fenses
    "et te guérit de" \markup { \concat{ t \underline o ute " " mala}} -- die;
    \set stanza = #"2. "
    "il réclame ta" \markup { \concat { v \underline i e " " à " " la}} -- tom -- be
    "et te couronne" \markup { \concat {d’am \underline o ur " " et " " de}} tend -- resse.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Il n’est pas pour toujours en pro" -- cès,
    "ne maintient pas sans" \markup { \concat { f \underline i n " " ses " " re}} -- proches;
    \set stanza = #"3. "
    "il n’agit pas envers" \markup { \concat { n \underline o us " " selon}} nos fautes,
    "ne nous rend pas se" -- \markup { \concat { l \underline o n " " nos}} of -- fenses.
  }
verseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
    "Comme le ciel domine la" terre,
    "fort est son a" -- \markup { \concat { m \underline o ur " " pour " " qui " " le}} craint;
    \set stanza = #"4. "
    "aussi loin qu’est l'o" -- \markup { \concat { r \underline i ent " " de " " l’oc}} -- ci -- dent,
    "il met loin de" \markup { \concat { n \underline o us " " nos}} pé -- chés.
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
\include "libs/layouts/fr.ly"
\include "libs/common.ly"
\include "libs/layouts/singlePsalmody.ly"