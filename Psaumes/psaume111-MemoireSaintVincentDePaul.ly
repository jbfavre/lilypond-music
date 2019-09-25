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

title = "Psaume 111"
subtitle = \markup { \column { "Mémoire de Saint Vincent de Paul" "Liturgie des Saints, Diocèse de Nanterre" "(forme directe)" }}
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, septembre 2019"

global = {
  \key g \major
  \time 3/4
}

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \partial 4
  d4 g2 g4 a g a b2 \breathe g4 a2 a4 g2 fs4 g2. (g2.) \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4
  a4 d2 e4 d4 e fs fs2 \breathe e4 e2 e4 d2 a4 d2. (d2.) \fermata
  \bar "|."
  }

tenorAntiphonMusic =  \relative c {
  \partial 4
  fs4 g2 b4 d b d b2 \breathe b4 c2. a2 c4 c4 (b) a b2. \fermata
  \bar "|."
  }

bassAntiphonMusic =  \relative c {
  \partial 4
  d4 b2 e4 fs e d ds2 \breathe e4 c2 a4 d2 d4 g,2. (g2.) \fermata
  \bar "|."
  }

%{
figuredBass = \figuremode {
    <_>4 <6 5>2. <"?">4 <6 5>2
    <6 5>2 <6 5>2 <7>4 <5/>4 <5 4>4 <7 _+>4 <5>2
  }
harmony = \figuremode {
    <_>4 <I>2. <I>4 <V>2
    <V>2 <VI>2 <IV>4 <IV>4 <V>4 <V>4 <I>2
  }
%}
antiphonLyrics = \lyricmode {
  Heu -- reux, qui craint le Sei -- gneur, et mar -- che dans ses voies.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \tenorAntiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    g4 a b \bar "||" \caesura
    \tempoVerseAcelerando b\breve \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando b\breve \tempoVerseRallentando a4 g \bar "||" \caesura
    \tempoVerseAcelerando a\breve \tempoVerseRallentando g4 a \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    d d d \bar "||" \caesura
    d\breve fs4 \caesura
    fs\breve fs4 e \caesura
    e\breve e4 fs \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    b b g4 \bar "||" \caesura
    g\breve a4 \caesura
    b\breve b4 b \caesura
    c\breve b4 d? \caesura
  }

bassVerseMusic = \relative c' {
    \caesura
    g, g g \bar "||" \caesura
    g\breve d'4 \caesura
    ds\breve ds!4 e \caesura
    c\breve e4 d? \caesura
  }

%{

      \concat { "Heureux qui craint le Seigneur,"}
      \concat { "qui aime entièrement sa volonté&nbsp;!"}
      \concat { "sa lignée sera présente sur la terre."}

      \concat { "À jamais se maintiendra sa justice."}
      \concat { "Lumière des cœurs droits, il s'est levé dans les ténèbres,"}
      \concat { "homme de justice, de tendresse et de pitié."}

      \concat { "L'homme de bien a pitié, il partage&nbsp;;"}
      \concat { "il mène ses affaires avec droiture."}
      \concat { "Cet homme jamais ne tombera."}

      \concat { "Il ne craint pas l'annonce d'un malheur&nbsp;:"}
      \concat { "le cœur ferme, il s'appuie sur le Seigneur."}
      \concat { "Son cœur est confiant, il ne craint pas."}

      \concat { "À pleine main, il donne au pauvre&nbsp;;"}
      \concat { "à jamais se maintiendra sa justice,"}
      \concat { "sa puissance grandira, et sa gloire&nbsp;!"}

%}

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Heureux qui craint le Seigneur,"}
      \concat { "qui aime entièrement sa volonté&nbsp;!"}
      \concat { "sa lignée sera présente sur la terre."}
      " "
      \concat { "À jamais se maintiendra sa justice."}
      \concat { "Lumière des cœurs droits, il s'est levé dans les ténèbres,"}
      \concat { "homme de justice, de tendresse et de pitié."}
      " "
      \concat { "L'homme de bien a pitié, il partage&nbsp;;"}
      \concat { "il mène ses affaires avec droiture."}
      \concat { "Cet homme jamais ne tombera."}
      " "
      \concat { "Il ne craint pas l'annonce d'un malheur&nbsp;:"}
      \concat { "le cœur ferme, il s'appuie sur le Seigneur."}
      \concat { "Son cœur est confiant, il ne craint pas."}
      " "
      \concat { "À pleine main, il donne au pauvre&nbsp;;"}
      \concat { "à jamais se maintiendra sa justice,"}
      \concat { "sa puissance grandira, et sa gloire&nbsp;!"}

    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"
% Load Psalmody layout
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
% Load midi output
\include "../libs/layouts/outputMidi.ily"