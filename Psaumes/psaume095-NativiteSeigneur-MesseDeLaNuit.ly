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

title = "Psaume 95 à 4 voix mixtes"
subtitle = "Nativité du Seigneur - Messe de la nuit"
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, 24 décembre 2018"

global = {
  \omit Staff.TimeSignature
  \key g \major
  \time 6/8
}

staffCustomSize = 14

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  a4 a8 a4. (a8) g a b a g a2. \breathe
  c4 c8 b4. (b8) a g a4. \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  r4. e4 e8 e d e fs e d e2. \breathe
  r4. r8 g8 g g e e e4.
  }

tenorAntiphonMusic =  \relative c' {
  c4. c4. c8 b c d c b c2. \breathe
  e4 e8 d4. (d8) a b cs4.
  }

bassAntiphonMusic =  \relative c {
  r4. a4. a a a8 (b) c a4. \breathe
  r4. e'4. g4 e8 a,4.
  }

antiphonLyrics = \lyricmode {
  Au -- jourd' -- hui un Sei -- gneur nous est né,
  C'est le Christ, le Sei -- gneur !
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics =  \lyricmode {
  Un Sei -- gneur nous est né,
  Christ et Sei -- gneur !
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
    \set Score.markFormatter = #format-mark-box-alphabet
    \cadenzaOn \caesura
    \tempoVerseAcelerando a\breve a1 \tempoVerseRallentando g4 \bar "||" \caesura
    \mark #2 \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando a4 b \bar "||" \caesura
    \mark \default \tempoVerseAcelerando b\breve g1 \tempoVerseRallentando b4 a \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    e\breve e1 e4 \bar "||" \caesura
    e\breve e1 e4 fs \bar "||" \caesura
    g\breve d1 g4 e4 \bar "||" \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    c\breve c1 b4 \bar "||" \caesura
    c\breve a1 a4 b \bar "||" \caesura
    d\breve b1 d4 cs \bar "||" \caesura
  }

bassVerseMusic = \relative c {
    \caesura
    a\breve a1 e'4 \bar "||" \caesura
    a,\breve c1 c4 d4 \bar "||" \caesura
    g,\breve g1 g4 a \bar "||" \caesura
  }

groupedVersesLyrics = <<
>>

figuredBass = \figuremode {
  }
harmony = \figuremode {
  }

verseFiguredBass = \figuremode {
  }
verseHarmony = \figuremode {
  }

\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"

%{

Chantez au Seigne_u_r un chant nouveau,
chantez au Seigne_u_r, terre entière,
chantez au Seigneur et béniss_e_z son nom !

De jour en jour, proclam_e_z son salut,
racontez à tous les pe_u_ples sa gloire,
à toutes les nati_o_ns ses merveilles !

Joie au ciel ! Ex_u_lte la terre !
Les masses de la m_e_r mugissent,
la campagne tout enti_è_re est en fête.

Les arbres des forêts d_a_nsent de joie
devant la face du Seigne_u_r, car il vient,
car il vi_e_nt pour juger la terre.

Il jugera le m_o_nde avec justice
et les pe_u_ples selon sa vérité !

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      \underline "Pour le dernier verset, on prend seulement les psalmodies B et C"
      " "
      " "
      \concat { "Chantez au " Seigne \underline u r " un chant nouveau," }
      \concat { "chantez au " Seigne \underline u r, " terre entière," }
      \concat { "chantez au Seigneur et " béniss \underline e z " son nom !" }
      " "
      \concat { "De jour en jour, " proclam \underline e z " son salut," }
      \concat { "racontez à tous les " pe \underline u ples " sa gloire," }
      \concat { "à toutes les " nati \underline o ns " ses merveilles !" }
      " "
      \concat { "Joie au ciel ! " Ex \underline u lte " la terre !" }
      \concat { "Les masses de la " m \underline e r " mugissent," }
      \concat { "la campagne toute " enti \underline è re " est en fête." }
      " "
      \concat { "Les arbres des forêts " d \underline a nsent " de joie" }
      \concat { "devant la face du " Seigne \underline u r, " car il vient," }
      \concat { "car il " vi \underline e nt " pour juger la terre." }
      " "
      \concat { "Il jugera le " m \underline o nde " avec justice" }
      \concat { "et les " pe \underline u ples " selon sa vérité !" }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"





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

title = "Psaume 95 à 3 voix mixtes"
subtitle = "Nativité du Seigneur - Messe de la nuit"
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, 24 décembre 2018"

sopranoVoiceTitle = "Soprano"
altoVoiceTitle = "Alto ou Ténor"
bassVoiceTitle = "Basses"

global = {
  \key g \major
  \time 6/8
}

staffCustomSize = 14

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  r2. r2. a4 a8 a4. (a8) g a b a g a2.~ \break
  \time 3/4 a2 \breathe c8 c b4 a b cs2. \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  r2. e4 e8 e4. e4 e8 e4.
  (e8) d e fs e d e fs d e4.~
  \time 3/4 e2 \breathe r4 g4 e4 d4 e2.
  }

tenorAntiphonMusic = {}

bassAntiphonMusic =  \relative c' {
  a,4 a8 a4. a4 a8 a4. a4 a8 a4.
  a'4 a8 a4. (a8) b g e d b
  \time 3/4 a2 \breathe r4 e'4 c4 g'4 a2.
  }

antiphonLyrics = \lyricmode {
  Au -- jourd' -- hui un Sei -- gneur nous est né,
  C'est le Christ, le Sei -- gneur&nbsp;!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  Un Sei -- gneur, nous est né,
  Au -- jourd' -- hui un Sei -- gneur nous est né,
  Christ et Sei -- gneur !
  }
bassAntiphonLyrics =  \lyricmode {
  Au -- jourd' -- hui, un Sei -- gneur, nous est né.
  Au -- jourd' -- hui, un Sei -- gneur nous est né,
  Christ et Sei -- gneur !
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
    \set Score.markFormatter = #format-mark-box-alphabet
    \cadenzaOn \caesura
    \tempoVerseAcelerando a\breve \tempoVerseRallentando g4 \bar "||" \caesura
    \mark #2 \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando a4 b \bar "||" \caesura
    \mark \default \tempoVerseAcelerando b\breve g1 \tempoVerseRallentando b4 cs \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    e\breve d4 \bar "||" \caesura
    e\breve g1 e4 fs \bar "||" \caesura
    fs\breve d1 d4 e \bar "||" \caesura
  }

tenorVerseMusic = {}

bassVerseMusic = \relative c {
    \caesura
    a\breve b4 \bar "||" \caesura
    a\breve c1 c4 d4 \bar "||" \caesura
    d\breve b1 g4 a \bar "||" \caesura
  }

groupedVersesLyrics = <<
>>

figuredBass = \figuremode {
  }
harmony = \figuremode {
  }

verseFiguredBass = \figuremode {
  }
verseHarmony = \figuremode {
  }

\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"

%{

Chantez au Seigne_u_r un chant nouveau,
chantez au Seigne_u_r, terre entière,
chantez au Seigneur et béniss_e_z son nom !

De jour en jour, proclam_e_z son salut,
racontez à tous les pe_u_ples sa gloire,
à toutes les nati_o_ns ses merveilles !

Joie au ciel ! Ex_u_lte la terre !
Les masses de la m_e_r mugissent,
la campagne tout enti_è_re est en fête.

Les arbres des forêts d_a_nsent de joie
devant la face du Seigne_u_r, car il vient,
car il vi_e_nt pour juger la terre.

Il jugera le m_o_nde avec justice
et les pe_u_ples selon sa vérité !

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      \underline "Pour le dernier verset, on prend seulement les psalmodies B et C"
      " "
      " "
      \concat { "Chantez au " Seigne \underline u r " un chant nouveau," }
      \concat { "chantez au " Seigne \underline u r, " terre entière," }
      \concat { "chantez au Seigneur et " béniss \underline e z " son nom !" }
      " "
      \concat { "De jour en jour, " proclam \underline e z " son salut," }
      \concat { "racontez à tous les " pe \underline u ples " sa gloire," }
      \concat { "à toutes les " nati \underline o ns " ses merveilles !" }
      " "
      \concat { "Joie au ciel ! " Ex \underline u lte " la terre !" }
      \concat { "Les masses de la " m \underline e r " mugissent," }
      \concat { "la campagne toute " enti \underline è re " est en fête." }
      " "
      \concat { "Les arbres des forêts " d \underline a nsent " de joie" }
      \concat { "devant la face du " Seigne \underline u r, " car il vient," }
      \concat { "car il " vi \underline e nt " pour juger la terre." }
      " "
      \concat { "Il jugera le " m \underline o nde " avec justice" }
      \concat { "et les " pe \underline u ples " selon sa vérité !" }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody3Voices.ily"
\include "../libs/layouts/outputMidi.ily"
