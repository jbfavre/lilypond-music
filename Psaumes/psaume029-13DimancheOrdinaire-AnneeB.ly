\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "../libs/commonFunctions.ily"
\include "../libs/translations/fr.ily"
\include "../libs/settings.ily"

title = "Psaume 29"
subtitle = "13ème Dimanche du Temps Ordinaire"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, juin 2021"

global = {
  \key g \major
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 d e4 fs8 fs g4. b8 a g g fs g2 (g2) \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d4 d4 ds4 e4. e8 e e d d d2~ d
  }

tenorAntiphonMusic =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 d g4 b8 b b4. g8 a c c c c4 b8 a b2
  }

bassAntiphonMusic =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d4 c b e8 d c b c a d <d d,> g,2 (g2) \fermata
  }

antiphonLyrics = \lyricmode {
  Je t'e -- xal  -- te, Sei -- gneur&nbsp;! Toi qui m'a re -- le -- vé&nbsp;!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  Je t'e -- xal  -- te, Toi qui m'a re -- le -- vé&nbsp;!
  }
tenorAntiphonLyrics = \lyricmode {
  Je t'e -- xal  -- te, Sei -- gneur&nbsp;! Toi qui m'a re -- le -- vé, re -- le -- vé&nbsp;!
  }
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  g\breve fs1 g4 \bar "||"
  a\breve a1 g4 \bar "||"
  b\breve as1 b4 \bar "||"
  g\breve a?1 a4 \bar "|." \break
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key e \minor
  \markCustom "Psalmodie par verset" \cadenzaOn
  g\breve fs1 g4 \bar "||"
  g\breve a1 a4 \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  e\breve e1 e4
  e\breve ef1 d4
  g\breve g1 g4
  e?\breve g1 fs4

  e\breve e1 e4
  e\breve g1 fs4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  b\breve c1 b4
  a\breve g1 b4
  d\breve ef1 d4
  b\breve c1 c4

  b\breve c1 b4
  b\breve c1 c4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  e\breve a,1 e'4
  c\breve c1 g'4
  g\breve c,1 g'4
  e?\breve ef1 d4

  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key e \minor
  e\breve a,1 e'4
  e\breve ef1 d4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Je t’exalte, Seigne" \underline u "r : tu m’as relevé,"}
      \concat { \typewriter "   " "tu m’épargnes les r" \underline i "res de l’ennemi."}
      \concat { \typewriter "   " "Seigneur, tu m’as fait remont" \underline e "r de l’abîme"}
      \concat { \typewriter "   " "et revivre quand je descend" \underline a "is à la fosse."}
      \vspace #1
      \concat { \typewriter "3. " "Avec le soir, vi" \underline e "nnent les larmes,"}
      \concat { \typewriter "   " "mais au mat" \underline i "n, les cris de joie."}
      \concat { \typewriter "   " "Tu as changé mon de" \underline u "il en une danse,"}
      \concat { \typewriter "   " "mes habits funèbres en par" \underline u "re de joie."}
    }
    \hspace #1
    \left-column{
      \concat { \typewriter "2. " "Fêtez le Seigneur, vo" \underline u "s, ses fidèles,"}
      \concat { \typewriter "   " "rendez grâce en rappel" \underline a "nt son nom très saint."}
      \concat { \typewriter "   " "Sa colère ne d" \underline u "re qu’un instant,"}
      \concat { \typewriter "   " "sa bont" \underline é ", toute la vie."}
      \vspace #1
      \concat { \typewriter "4. " "Que mon cœur ne se t" \underline a "ise pas,"}
      \concat { \typewriter "   " "qu’il soit en f" \underline ê "te pour toi,"}
      \concat { \typewriter "   " "et que sans fin, Seigne" \underline u "r, mon Dieu,"}
      \concat { \typewriter "   " "je te r" \underline e "nde grâce !"}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ily"
\include "../libs/layouts/commonSettings.ily"
staffCustomSize = 16
partition = {
  <<
    % Antienne à 4 voix mixtes
    \include "../libs/layouts/commonAntiphonFourVoices.ily"
    \include "../libs/layouts/commonPiano.ily"
    % Psalmodie à 4 voix mixtes
    \include "../libs/layouts/commonVerseFourVoices.ily"
    %\new FiguredBass { \figuredBass \verseFiguredBass }
    %\new FiguredBass { \harmony \verseHarmony }
  >>
}

% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics