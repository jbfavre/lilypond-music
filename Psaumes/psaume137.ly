\version "2.18.2"
\language "english"

\include "libs/layouts/fr.ly"

title = "Psaume 137"
subtitle = "21e dimanche ordinaire (année A)"
composer = "Jean Baptiste Favre"

global = {
    \time 2/4
    \key d \minor
  }

% Ajust this setting to get a single page psalm
staffSize = 16

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  a'4 a2 \breathe a8 g c b a g a2 \breathe
  \tuplet 3/2 { a8 g a } f4 d8 d g b a2 \fermata
  \bar "|." \break
}

altoAntiphonMusic = \relative c' {
  e4 f2 \breathe e8 e8 g8 f8 d8 e8 e2 \breathe
  e4 d4 bf8 bf c e c2 \fermata
}

tenorAntiphonMusic =  \relative c' {
  cs4 d2 \breathe d8 d e d b b cs2 \breathe
  cs4 bf4 g8 g  bf g a2 \fermata
}

bassAntiphonMusic =  \relative c {
  a4 d2 b8 b c d e e a,2 \breathe
  a4 bf4 g'8 f e c f,2 \fermata
}

antiphonLyrics = \lyricmode {
  Sei -- gneur, é -- ter -- nel est ton a -- mour:
  n’ar -- rê -- te pas l’œu -- vre de tes mains.
}

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
sopranoVerseMusic = \relative c'' {
  a\breve f1 g4 b a2 \bar "||"
  a\breve c1 b4 g a2 \bar "||"
  a\breve a1 a4 g4 f g2 \bar "||"
  f\breve d1 f4 g a2 \bar "|."
}

altoVerseMusic = \relative c' {
  c\breve d1 e4 d4 e2
  f\breve e1 g4 e4 f2
  e\breve f1 f4 e4 f4 e2
  d\breve bf1 d4 d4 e2
}

tenorVerseMusic = 	\relative c' {
  a\breve a1 g4 b4 cs2
  a\breve c1 d4 d4 c2
  cs\breve d1 c4 c4 d4 d4 (c4)
  bf\breve g1 a4 bf4 cs2
}

bassVerseMusic = \relative c {
  f,\breve d'1 c4 g4 a2
  d\breve a1 b4 b4 f2
  a\breve d1 f4 c d c2
  bf\breve g1 d'4 e4 a,2
}

sopranoVerseMusicB = \relative c'' {
  a\breve f1 \slurSolid g4[( g]) b a2 \bar "||"
  f\breve d1 f4 g a2 \bar "|."
}

altoVerseMusicB = \relative c' {
  e\breve d1 \slurDown \slurSolid e4[( e]) g e2
  d\breve bf1 d4 e e2
}

tenorVerseMusicB = 	\relative c' {
  cs\breve a1 \slurSolid c4[( c]) d cs2
  bf\breve g1 a4 c4 cs2
}

bassVerseMusicB = \relative c {
  a\breve d1 \slurDown \slurSolid c4[( c]) g a2
  bf\breve g1 d'4 c4 a2
}

pianosopranoAntiphonMusic = \sopranoAntiphonMusic
pianosopranoVerseMusic = \sopranoVerseMusic
pianoaltoAntiphonMusic = \altoAntiphonMusic
pianoaltoVerseMusic = \altoVerseMusic
pianotenorAntiphonMusic = \tenorAntiphonMusic
pianotenorVerseMusic = \tenorVerseMusic
pianobassAntiphonMusic = \bassAntiphonMusic
pianobassVerseMusic = \bassVerseMusic

#define texteAntiphon=" "

verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. " 
    "De tout mon cœur, Sei" -- \markup { \concat { gn \underline e ur, " " je}} te rends grâce:
    \set stanza = #"1. " 
    "tu as entendu les pa" -- \markup { \concat { r \underline o les}} de ma bouche.
}
verseOneLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Je te" \markup { \concat {ch \underline a nte " " en " " pré}} -- \set ignoreMelismata = ##t senc -- e \unset ignoreMelismata des anges,
    "vers ton temple sacr" -- \markup { \concat { \underline é , " " je}} me pros -- terne.
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. " 
    "Je rends grâce à ton nom pour ton a" -- \markup { \concat { m \underline o ur " " et " " ta}} vé -- ri -- té,
    \set stanza = #"2. " 
    "car tu élèves, au-dessus de" \markup { \concat { t \underline o ut, " " ton " " nom " " et}} ta pa -- role.
  }
verseTwoLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    Le \markup { \concat { j \underline o ur " " où " " tu " " répondis}} à mon ap -- pel,
    "tu fis grandir en mon" \markup { \concat { \underline â}} -- me la force.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Si haut que soit le Sei" -- \markup { \concat { gn \underline e ur, " " il " " voit}} le plus humble.
    \set stanza = #"3. "
    de \markup { \concat { l\underline o in, " " il " " reconnaît}} l’or -- gueil -- leux.
  }
verseThreeLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    Seigneur, \markup { \concat { \underline é ternel}} est ton a -- mour:
    n’arrête \markup { \concat { p \underline a s " " l’œuvre}} de tes mains.
  }

groupedVersesLyrics = <<
    \new Lyrics \lyricsto "sopranoVerseVoice" { \verseOneLyrics \set stanza = #"1. " \verseOneLyricsPartTwo }
    \new Lyrics \lyricsto "sopranoVerseVoice" { \verseTwoLyrics \set stanza = #"2. " \verseTwoLyricsPartTwo }
    \new Lyrics \lyricsto "sopranoVerseVoice" { \verseThreeLyrics \set stanza = #"3. " \verseThreeLyricsPartTwo }
>>
groupedVersesLyricsB = <<
    \new Lyrics \lyricsto "sopranoVerseVoiceB" { \verseOneLyrics }
    \new Lyrics \lyricsto "sopranoVerseVoiceB" { \verseOneLyricsPartTwo }
    \new Lyrics \lyricsto "sopranoVerseVoiceB" { \verseTwoLyrics }
    \new Lyrics \lyricsto "sopranoVerseVoiceB" { \verseTwoLyricsPartTwo }
    \new Lyrics \lyricsto "sopranoVerseVoiceB" { \verseThreeLyrics }
    \new Lyrics \lyricsto "sopranoVerseVoiceB" { \verseThreeLyricsPartTwo }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          AUTRES RÉGLAGES          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "libs/common.ly"
\include "libs/layouts/dualPsalmody.ly"