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

title = "Psaume 68"
subtitle = "Mercredi de la Semaine Sainte"
composer = "Jean Baptiste Favre"
dedicace = "Clichyla Garenne, avril 2021"

global = {
  \key f \minor
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4 f af af g f bf af g \breathe
  e f g af af g2 g f \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  f4 f4 df8 f e4 c f f e \breathe
  c4 df df f f f2 e c2
  }

tenorAntiphonMusic =  \relative c {
  f4 c'4. bf8 bf4 af bf df df4 (c8) \breathe bf
  af4 bf c c df2 (df4) c8 (bf) af2 \fermata
  }

bassAntiphonMusic =  \relative c {
  f4 f f c4 f8 (ef) df (c) bf4 c \breathe
  c4 df8 (c) bf4 f f'8 (ef) bf2 c f \fermata
  }

antiphonLyrics = \lyricmode {
  Dans ton grand a -- mour, Dieu, ré -- ponds - moi&nbsp;; c’est l’heu -- re de ta grâ -- ce.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \bar "||"
  \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "C’est pour toi que j’end" \underline u "re l’insulte,"}
        \concat { \typewriter "   " "que la honte me co" \underline u "vre le visage&nbsp;:"}
        \concat { \typewriter "   " "je suis un étrang" \underline e "r pour mes frères,"}
        \concat { \typewriter "   " "un inconnu pour les f" \underline i "ls de ma mère."}
        \concat { \typewriter "   " "L’amour de ta mais" \underline o "n m’a perdu&nbsp;;"}
        \concat { \typewriter "   " "on t’insulte, et l’insulte ret" \underline o "mbe sur moi."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "L’insulte m’a broy" \underline é " le cœur,"}
        \concat { \typewriter "   " "le m" \underline a "l est incurable&nbsp;;"}
        \concat { \typewriter "   " "j’espérais un seco" \underline u "rs, mais en vain,"}
        \concat { \typewriter "   " "des consolateurs, je n’en ai p" \underline a "s trouvé."}
        \concat { \typewriter "   " "À mon pain, ils ont mêl" \underline é " du poison&nbsp;;"}
        \concat { \typewriter "   " "quand j’avais soif, ils m’ont donn" \underline é " du vinaigre."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Mais je louerai le nom de Die" \underline u " par un cantique,"}
        \concat { \typewriter "   " "je vais le magnif" \underline i "er, lui rendre grâce."}
        \concat { \typewriter "   " "Les pauvres l’ont v" \underline u ", ils sont en fête&nbsp;:"}
        \concat { \typewriter "   " "«&nbsp;Vie et joie, à vo" \underline u "s qui cherchez Dieu&nbsp;!&nbsp;»"}
        \concat { \typewriter "   " "Car le Seigneur éco" \underline u "te les humbles,"}
        \concat { \typewriter "   " "il n’oublie pas les si" \underline e "ns emprisonnés."}
      }
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