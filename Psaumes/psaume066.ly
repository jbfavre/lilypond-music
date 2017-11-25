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
staffCustomSize = 18
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

title = "Psaume 66"
subtitle = "20e dimanche ordinaire (année A)"
composer = "Jean Baptiste Favre"

global = {
  \omit Staff.TimeSignature
  \key d \minor
  \autoBeamOff
}
% Ajust this setting to get a single page psalm
staffSize = 16

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
    f8 g a bf a4. a8 c b a4 a4 \breathe
    g8 g a bf a g f g a2 a2 \fermata
    \bar "|."
  }

altoAntiphonMusic = \relative c' {
    d8 e f d c4. c8 e e d4 cs \breathe
    e8 e f d c bf cs e f2 e2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
    a8 c c bf a4. a8 c d f4 e \breathe
    cs8 cs d f c e e cs a2 a2 \fermata
  }

bassAntiphonMusic =  \relative c {
    d8 c a d f4. f8 g gs a4 a \breathe
    a,8 a f bf f g a a d4 (cs8 b) cs2 \fermata
  }

antiphonLyrics = \lyricmode {
  Que les peu -- ples, Dieu, Te ren -- dent grâ -- ce;
  qu'ils Te ren -- dent grâ -- ce tous en -- sem -- ble
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
    \tempoVerseAcelerando b\breve c1 \tempoVerseRallentando a4 a2 \bar "||" \caesura
    \tempoVerseAcelerando b\breve g1 \tempoVerseRallentando c2 \bar "||" \caesura
    \tempoVerseAcelerando bf\breve g1 \tempoVerseRallentando f4 a2 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    f\breve e1 d2 \caesura
    g\breve e1 d4 e2 \caesura
    g\breve e1 g2 \caesura
    d\breve e1 f4 f2
  }

tenorVerseMusic = \relative c' {
    \caesura
    a\breve g1 d'2 \caesura
    b\breve g1 a4 a2 \caesura
    g\breve b1 g2 \caesura
    bf\breve c1 a4 a2
  }

bassVerseMusic = \relative c {
    \caesura
    d\breve e1 g2 \caesura
    e\breve c1 f4 cs2 \caesura
    d\breve b1 c2 \caesura
    g'\breve c,1 c4 f2
  }

verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    "Que Dieu nous prenne en" \markup {\concat { gr \underline â ce " " et " " nous " " bé}} -- nisse,
    "que ton visage s’illu" -- \markup {\concat { m \underline i ne}} pour nous;
    \set stanza = #"1. "
    "et ton chemin sera con" -- \markup {\concat { n \underline u " " sur " " la}} terre,
    "ton salut, parmi" \markup {\concat { to \underline u tes " " les}} na -- tions.
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Que les nations" \markup {\concat { ch \underline a ntent " " leur}} joie,
    "car tu gouvernes le" \markup {\concat { m \underline o nde " " avec}} jus -- tice;
    \set stanza = #"2. "
    "tu gouvernes les" \markup {\concat { pe \underline u ples " " avec " " droi}} -- ture
    "sur la terre, tu con" -- \markup {\concat { du \underline i s " " les}} na -- tions.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "La terre a don" -- \markup {\concat { n \underline é " " son}} fruit;
    "Dieu, notre" \markup {\concat { Di \underline e u , " " nous}} bé -- nit.
    \set stanza = #"3. "
    Que \markup {\concat { Di \underline e u " " nous " " bé}} -- nisse,
    "et que la terre tout en" -- \markup {\concat { ti \underline è re}} l’a -- dore!
  }

groupedVersesLyrics = <<
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseOneLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseTwoLyrics }
      \new Lyrics \lyricsto "sopranoVerseVoice" { \verseThreeLyrics }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
%\include "../libs/layouts/dualPsalmody.ily"
\include "../libs/layouts/singlePsalmody.ily"
\include "../libs/layouts/outputMidi.ily"