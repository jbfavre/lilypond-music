\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "libs/settings.ly"

title = "Psaume 62"
subtitle = "32ème dimanche du Temps Ordinaire — Année A"
composer = "Jean Baptiste Favre"

global = {
    \time 2/4
    \key c \major
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
    \partial 4 g4 b a b c b2 (b4) \breathe
    b4 d2 c2 b2 \fermata
    \bar "|."
  }

altoAntiphonMusic = \relative c' {
    \partial 4 e4 d c f e g2 \breathe
    g4 (e) a2 e2 a4 (g) \fermata
  }

tenorAntiphonMusic =  \relative c' {
    \partial 4 b4 b c b g g2 \breathe
    g4 (g) c2 c2 b2 \fermata
  }

bassAntiphonMusic =  \relative c {
    \partial 4 e4 g f d c e2 \breathe
    d4 (e) f2 a,2 e'2 \fermata
  }

antiphonLyrics = \lyricmode {
    Mon â -- me~a soif de toi,
    Sei -- gneur, mon Dieu!
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
% en utilisant \tempoVerseAcelerando et \tempoVerseRallentando

sopranoVerseMusic = \relative c'' {
    \caesura
    \tempoVerseAcelerando b\breve \tempoVerseRallentando a2 \tempoVerseAcelerando b1 c1 \tempoVerseRallentando a2 \bar "||" \caesura
    \tempoVerseAcelerando a\breve g1 \tempoVerseRallentando b2 \bar "||" \caesura
    \tempoVerseAcelerando b\breve d1 \tempoVerseRallentando c2 \bar "||" \caesura
    \tempoVerseAcelerando c\breve b1 \tempoVerseRallentando g4 f4 a2 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    g'\breve e2 c1 e1 f2 \caesura
    f\breve d1 g2 \caesura
    d\breve f1 e2 \caesura
    f\breve f1 d4 d4 e2
 }

tenorVerseMusic = \relative c' {
    \caesura
    b\breve c2 a1 c1 c2 \caesura
    d\breve b1 d2 \caesura
    a\breve c1 c2 \caesura
    c\breve d1 b4 a4 c2
  }

bassVerseMusic = \relative c {
    \caesura
    e\breve a,2 f1 a1 d2 \caesura
    d\breve e1 g2 \caesura
    f\breve a1 a2 \caesura
    a\breve g1 e4 f4 a,2
  }

verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    "Dieu, tu es mon" \markup { \concat { D \underline i eu,\super &plus;}} "je te" \markup { \concat { ch \underline e rche" "dès}} l’aube:
    "mon âme a" "soif de" toi;
    \set stanza = #"1. "
    "après toi lan" -- \markup { \concat { gu \underline i t" "ma}} chair,
    "terre~a" -- \markup { \concat { r \underline i de, alté}} -- rée, sans eau.
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Je t’ai contem" -- _ _ \markup { \concat { pl \underline é" "au" "sanctu}} -- aire,
    "j’ai vu ta" \markup { \concat { f \underline o rce" "et" "ta}} gloire.
    \set stanza = #"2. "
    "Ton amour vaut" \markup { \concat { m \underline i eux" "que" "la}} vie:
    "tu seras la lou" -- \markup { \concat { \underline a nge}} de mes lèvres!
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Toute ma" -- _ _ \markup { \concat { v \underline i e" "je" "vais" "te" "bé}} -- nir,
    "lever les mains en invo" -- \markup { \concat { qu \underline a nt" "ton}} nom.
    \set stanza = #"3. "
    "Comme par un fes" -- \markup { \concat { t \underline i n" "je" "serai" "rassa}} -- sié;
    "la joie sur les lèvres, je di" -- \markup { \concat { r \underline a i}} ta lou -- ange.
  }
verseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
    "Dans la nuit, je me sou" -- _ _ \markup { \concat { v \underline i ens" "de}} toi
    "et je reste des" \markup { \concat { h \underline e ures" "à" "te" "par}} -- ler.
    \set stanza = #"4. "
    "Oui, tu es ve" -- \markup { \concat { n \underline u" "à" "mon" "se}} -- cours:
    "je crie de joie à" \markup { \concat { l’ \underline o mbre}} de tes ailes.
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
%\include "libs/layouts/dualPsalmody.ly"
\include "libs/layouts/singlePsalmody.ly"
\include "libs/layouts/outputMidi.ly"