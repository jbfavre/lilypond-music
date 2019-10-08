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
subtitle = \markup { \column { "Mémoire de Saint Vincent de Paul" "Fête patronale de Clichy la Garenne" "(forme directe)" }}
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, septembre 2019"

global = {
  \key g \major
  \time 4/4
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
  fs4 g a b c b2. a4 g1 fs \breathe g2 a4 b a g2 fs4 g1 (g) \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4
  ds4 e fs g g g2 fs e1 ds1 e2 fs4 fs e2 d4 a d1 (d) \fermata
  \bar "|."
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4
  b4 b d d e b2 b b (c4 a) b1 b2 d a a4 c c2 b4 a b1 \fermata
  \bar "|."
  }

bassAntiphonMusic =  \relative c {
  \partial 4
  b4 e d g c, d2 ds2 e1 b1 e2 d4 b c2 d4 d g,1 (g) \fermata
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
  Heu -- reux le ser -- vi -- teur fi -- dè -- le, Dieu lui con -- fie sa mai -- son.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \lyricmode {
  Heu -- reux le ser -- vi -- teur fi -- dè -- le, Dieu lui con -- fi -- e sa mai -- son.
  }
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    \repeat volta 5 {
      g4 a b \bar "|.|" \caesura
      \tempoVerseAcelerando b\breve \tempoVerseRallentando a4 \bar "||" \caesura
      \tempoVerseAcelerando g\breve \tempoVerseRallentando fs4 \bar "||" \caesura
      \tempoVerseAcelerando e\breve \tempoVerseRallentando fs4 g \bar "||" \caesura
    }
    \alternative {
      { \tempoVerseAcelerando a\breve \tempoVerseRallentando g4 a \bar "||" \caesura }
      { \tempoVerseAcelerando a\breve \tempoVerseRallentando g4 fs \bar "||" \caesura }
    }
  }

altoVerseMusic = \relative c' {
    \caesura
    \repeat volta 5 {
      d4 fs g \bar "|.|" \caesura
      g\breve fs4 \caesura
      e\breve ds4 \caesura
      e\breve ds!4 e \caesura
    }
    \alternative {
      { e\breve e4 fs \caesura }
      { e\breve e4 ds! \caesura }
    }
  }

tenorVerseMusic = \relative c' {
    \caesura
    \repeat volta 5 {
      b4 d d \bar "|.|" \caesura
      d\breve d4 \caesura
      b\breve b4 \caesura
      g\breve b4 b \caesura
    }
    \alternative {
      { a\breve c4 a \caesura }
      { a\breve c4 b \caesura }
    }
  }

bassVerseMusic = \relative c' {
    \caesura
    \repeat volta 5 {
      g d g \bar "|.|" \caesura
      g\breve d4 \caesura
      e\breve b4 \caesura
      c\breve b4 e \caesura
    }
    \alternative {
      { c\breve c4 d4 \caesura }
      { c\breve a4 b4 \caesura }
    }
  }

%{

1 Heureux qui craint le Seigneur,
Qui aime entièrement sa volonté !
Sa lignée sera puissante sur la terre ;
La race des justes est bénie.

2 Les richesses affluent dans sa maison :
À jamais se maintiendra sa justice.
Lumière des cœurs droits, il s’est levé dans mes ténèbres,
Homme de justice, de tendresse et de pitié.

3 L’homme de bien a pitié, il partage ;
Il mène ses affaires avec droiture.
Cet homme jamais ne tombera ;
Toujours on fera mémoire du juste.

4 Il ne craint pas l’annonce d'un malheur :
Le cœur ferme, il s’appuie sur le Seigneur.
Son cœur est confiant, il ne craint pas :
Il verra ce que valaient ses oppresseurs.

5 À pleines mains, il donne aux pauvres ;
À jamais se maintiendra sa justice,
Sa puissance grandira, et sa gloire !
Amen ! Amen !

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
      \concat { "1. Heureux qui craint le Seigneur," }
      \concat { "    Qui aime entièrement sa volonté&nbsp;!" }
      \concat { "    Sa lignée sera puissante sur la terre&nbsp;;" }
      \concat { "    La race des justes est bénie." }
      " "
      \concat { "2. Les richesses affluent dans sa maison&nbsp;:" }
      \concat { "    À jamais se maintiendra sa justice." }
      \concat { "    Lumière des cœurs droits," }
      \concat { "    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;il s’est levé dans mes ténèbres," }
      \concat { "    Homme de justice, de tendresse et de pitié." }
      " "
      \concat { "3. L’homme de bien a pitié, il partage&nbsp;;" }
      \concat { "    Il mène ses affaires avec droiture." }
      \concat { "    Cet homme jamais ne tombera&nbsp;;" }
      \concat { "    Toujours on fera mémoire du juste." }
    }
    \left-column {
      " "
      " "
      " "
      " "
      " "
      " "
      \concat { "4. Il ne craint pas l’annonce d'un malheur&nbsp;:" }
      \concat { "    Le cœur ferme, il s’appuie sur le Seigneur." }
      \concat { "    Son cœur est confiant, il ne craint pas&nbsp;:" }
      \concat { "    Il verra ce que valaient ses oppresseurs." }
      " "
      \concat { "5. À pleines mains, il donne aux pauvres&nbsp;;" }
      \concat { "    À jamais se maintiendra sa justice," }
      \concat { "    Sa puissance grandira, et sa gloire&nbsp;!" }
      \concat { "    Amen&nbsp;! Amen&nbsp;!" }
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