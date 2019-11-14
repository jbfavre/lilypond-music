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

title = "Psaume 103"
subtitle =  "Vigile Pascale"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, janvier 2018"

global = {
  \key gs \minor
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4 e8[ ds] gs4 gs8[ (as)] b4 cs8[ b] as2 (as8) fss gs[ as] b4 as8[ b] gs[ gs] as[ gs] gs4 (fss!) gs2 \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 cs8 [as] ds4 ds4 e gs8 [gs] fs2 fss4 gs8 [gs] fs4 cs8 [ds] e [e] e [cs] ds4. (e8) ds2
  }

tenorAntiphonMusic = \relative c' {
  \partial 4 gs8[ fss] gs4 b8[ (as)] b4 cs8[ cs] cs2 ds4 e8[ e] ds4 gs,8[ gs] b[ cs] cs[ as] as2 b2
  }

bassAntiphonMusic = \relative c {
  \partial 4 cs8[ cs] b4 gs'8[ (fs)] e4 cs8[ e] fs4 (e)
  ds cs8[ cs] ds4 e8[ ds] cs[ as] cs[ e] ds4. (cs8) gs2
  }
sopranoAntiphonMusic = \sopranoAntiphonMusic
altoAntiphonMusic = \altoAntiphonMusic
tenorAntiphonMusic = \tenorAntiphonMusic
bassAntiphonMusic = \bassAntiphonMusic

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
reponsLyrics = \lyricmode {
  _ _ _ _ _ _
  \once \override LyricText.self-alignment-X = #RIGHT
  \markup {\concat { \bold ℟ &nbsp;:&nbsp;En }} -- voie ton Es -- prit&nbsp;!
}
sopranoVerseMusic = <<
  \relative c'' {
    \silence \sopranoAntiphonMusic
    \markCustom "Psalmodie par strophe" \cadenzaOn \shiftOff
    b\breve gs1 as4 \bar "||"
    as\breve as1 gs4 \bar "||"
    \cadenzaOff
    gs8^\markup{ \sans "Assemblée"}[ as] b4 as gs \bar "||" \break % Répons de l'assemblée
    \cadenzaOn
    gs\breve e1 gs4 \bar "||"
    gs\breve fss!1 gs4 \bar "||"
    \cadenzaOff
    gs8^\markup{ \sans "Assemblée"}[ as] b4 as gs \bar "|." % Répons de l'assemblée
    }
    \addlyrics { \reponsLyrics \reponsLyrics }
>>

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  ds\breve e1 e4
  e\breve ds1 e4
  \cadenzaOff e8 e fs4 fs e  % Répons de l'assemblée
  \cadenzaOn
  b\breve as1 ds4
  e\breve ds1 ds4
  \cadenzaOff ds8 e fs!4 fs8 e ds4 % Répons de l'assemblée
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  b\breve b1 cs4
  cs\breve cs1 b4
  \cadenzaOff b8 cs ds4 ds4 b4 % Répons de l'assemblée
  \cadenzaOn
  gs\breve gs1 b4
  b\breve as1 b4
  \cadenzaOff b8 cs ds4 ds8 cs b4 % Répons de l'assemblée
  }

bassVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  gs\breve e1 gs4
  fs\breve fss1 gs4
  \cadenzaOff e8[ cs] b[ cs] ds4 e % Répons de l'assemblée
  \cadenzaOn
  e\breve cs1 gs4
  cs\breve ds1 gs,4
  \cadenzaOff gs'8[ fs] b,[ cs] ds4 gs, % Répons de l'assemblée
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Bénis le Seigne" \underline u "r, ô mon âme&nbsp;;"}
        \concat { \typewriter "   " "Seigneur mon Die" \underline u ", tu es si grand&nbsp;!"}
        \concat { \typewriter "   " "Revêt" \underline u " de magnificence,"}
        \concat { \typewriter "   " "tu as pour mantea" \underline u " la lumière&nbsp;!"}
        \vspace #1
        \concat { \typewriter "2. " "Tu as donné son ass" \underline i "se à la terre&nbsp;:"}
        \concat { \typewriter "   " "qu’elle reste inébranl" \underline a "ble au cours" }
        \concat { \typewriter "   " "  des temps."}
        \concat { \typewriter "   " "Tu l’as vêtue de l’ab" \underline î "me des mers&nbsp;:"}
        \concat { \typewriter "   " "les eaux couvraient m" \underline ê "me les montagnes."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "3. " "Dans les ravins tu fais jaill" \underline i "r des sources"}
        \concat { \typewriter "   " "et l’eau chemine aux cre" \underline u "x des montagnes."}
        \concat { \typewriter "   " "les oiseaux séjo" \underline u "rnent près d’elle&nbsp;:"}
        \concat { \typewriter "   " "dans le feuillage on ent" \underline e "nd leurs cris."}
        \vspace #1
        \concat { \typewriter "4. " "De tes demeures tu abre" \underline u "ves les montagnes,"}
        \concat { \typewriter "   " "et la terre se rassasie du fr" \underline u "it de tes œuvres&nbsp;;"}
        \concat { \typewriter "   " "tu fais pousser les prair" \underline i "es pour les troupeaux,"}
        \concat { \typewriter "   " "et les champs pour l’h" \underline o "mme qui travaille."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "5. " "Quelle profusion dans tes œ" \underline u "vres, Seigneur&nbsp;!"}
        \concat { \typewriter "   " "Tout cela, ta sag" \underline e "sse l’a fait&nbsp;;"}
        \concat { \typewriter "   " "la terre s’empl" \underline i "t de tes biens."}
        \concat { \typewriter "   " "Bénis le Seigne" \underline u "r, ô mon âme&nbsp;!"}
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonSettings.ily"
staffCustomSize = 16.5

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