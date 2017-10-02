\version "2.18.2"
\language "english"

title = "Psaume 103"
subtitle = "Pentecôte"
composer = "Magnificat, juin 2017"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key ef \major
}
% Ajust this setting to get a single page psalm
staffSize = 16

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  ef8 ef d4. d8 f4 f8 f ef4.  \breathe
  ef8 f g af4 af8 af c c bf af bf4 bf \fermata
  \bar "|."
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
  }

antiphonLyrics = \lyricmode {
  Ô Sei -- gneur, en -- voie ton Es -- prit
  qui re -- nou -- vel -- le la fa -- ce de la ter -- re!
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
  g\breve bf1 ef,4 \bar "||"
  ef\breve af f4 \bar "||"
  g\breve bf1 c4 \bar "||"
  bf\breve a1 g4 \bar "|."
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
  }

sopranoVerseMusicB = \relative c'' {
  g\breve bf1 f4 \bar "||"
  ef\breve af f4 \bar "|."
}

altoVerseMusicB = \relative c' {
  }

tenorVerseMusicB = \relative c' {
  }

bassVerseMusicB = \relative c {
  }

%{DEBUT-DU-TEXTE-DE-LA-PSALMODIE

Bénis le Seigne_u_r, ô mon âme ;
Seigneur mon Die_u_, tu es si grand !
Quelle profusion dans tes œ_u_vres, Seigneur !
la terre s’empl_i_t de tes biens.

Tu reprends leur so_u_ffle, ils expirent
et reto_u_rnent à leur poussière.
Tu envoies ton so_u_ffle : ils sont créés ;
tu renouvelles la f_a_ce de la terre.

Gloire au Seigne_u_r à tout jamais !
Que Dieu se réjou_i_sse en ses œuvres !
Que mon poème lui s_o_it agréable ;
moi, je me réjou_i_s dans le Seigneur.

FIN-DU-TEXTE-DE-LA-PSALMODIE%}

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
>>

groupedVersesLyricsB = \groupedVersesLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "libs/layouts/fr.ly"
\include "libs/common.ly"
\include "libs/layouts/dualPsalmody.ly"