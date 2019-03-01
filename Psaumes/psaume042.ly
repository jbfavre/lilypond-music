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

title = "Psaume 42"
subtitle = ""
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 2 avril 2018"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key e \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  e8[ fs] gs4 a fs2 \breathe
  gs8[ bs] cs4 b8[ a] gs2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  r4 e4 fs4 ds2
  e8[ (ds)] e4 ds8[ (fs)] (e2) 
  }

tenorAntiphonMusic =  \relative c' {
  r4 cs4 cs4 b2
  cs8[ (ds)] cs4 b2.
  }

bassAntiphonMusic =  \relative c {
    e8[ ds] cs[ (b)] a[ (fs)] b2 \breathe
    cs8[ gs] a4 b8[ ds8] e2 \fermata
  }

antiphonLyrics = \lyricmode {
  Il est mon Sau -- veur,
  mon sau -- veur et mon Dieu!
  }
antiphonShortLyrics = \lyricmode {
  Mon sau -- veur et mon Dieu!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonShortLyrics
tenorAntiphonLyrics = \antiphonShortLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    gs\breve gs1 fs4 e \bar "||"
    a\breve gs1 e4 fs fs e \bar "||"
  }

altoVerseMusic = \relative c' {
  e\breve ds1 ds4 cs
  fs\breve e1 cs4 cs b b
  }

tenorVerseMusic = \relative c' {
  b\breve gs1 fs4 gs
  cs\breve b1  gs4 fs fs gs
  }

bassVerseMusic = \relative c {
  e\breve b1 bs4 cs
  a\breve b1 cs4 as b e
  }

%{

  Rends-moi justice, ô mon Dieu, défends ma c_a_use contre un peuple sans foi&nbsp;;
  de l'homme qui r_u_se et trahit, libère-moi.

  C'est toi, Dieu, ma f_o_rteresse&nbsp;: pourquoi me rejeter&nbsp;?
  Pourquoi vais-je assombri, pressé par l'ennemi&nbsp;?

  Envoie ta lumière et ta vérité&nbsp;: qu'elles guident mes pas
  et me conduisent à ta montagne sainte, jusqu'en ta demeure.

  J'avancerai jusqu'à l'autel de Dieu, vers Dieu qui est toute ma joie&nbsp;;
  je te rendrai grâce avec ma harpe, Dieu, mon Dieu&nbsp;!

  ℟&nbsp;Pourquoi te désoler, ô mon âme, et gémir sur moi&nbsp;?
  Espère en Dieu ! De nouveau je rendrai grâce&nbsp;: il est mon sauveur et mon Dieu&nbsp;!

%}

verseLyrics = \markup {
{
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      \concat { "Rends-moi justice, ô mon Dieu, défends ma cause contre un pe" \underline u "ple sans foi&nbsp;;" }
      \concat { "de l'homme qui r" \underline u "se et trahit, libère-moi." }
      " "
      \concat { "C'est toi, Dieu, ma forteresse&nbsp;: pourqu" \underline o "i me rejeter&nbsp;?" }
      \concat { "Pourquoi vais-je assombri, press" \underline é " par l'ennemi&nbsp;?" }
      " "
      \concat { "Envoie ta lumière et ta vérité&nbsp;: qu'elles gu" \underline i "dent mes pas" }
      \concat { "et me conduisent à ta montagne sainte, j" \underline u "squ'en ta demeure." }
      " "
      \concat { "J'avancerai jusqu'à l'autel de Dieu, vers Dieu qui est to" \underline u "te ma joie&nbsp;;" }
      \concat { "je te rendrai grâce avec ma harpe, Die" \underline u ", mon Dieu&nbsp;!" }
      " "
      \concat { \bold ℟ "&nbsp;Pourquoi te désoler, ô mon âme, et gém" \underline i "r sur moi&nbsp;?" }
      \concat { "Espère en Dieu ! De nouveau je rendrai grâce&nbsp;: il est mon sauve" \underline u "r et mon Dieu&nbsp;!" }

    }
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