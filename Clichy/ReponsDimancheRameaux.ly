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

antiphonText = "Répons"
verseText = "Versets"

title = "Répons"
subtitle = \markup { \column { "Dimanche des Rameaux" "Basé sur la Petite messe de Jo Akepsimas" }}
composer = \markup { \column { "Jean Baptiste Favre" }}

dedicace = "Clichy la Garenne, avril 2019"

global = {
  \key c \major
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

sopranoAntiphonMusic = \relative c'' {
  \partial 8
  g8 \bar ".|:"
  \repeat volta 2 { c2 b4. g8 a2 g4. g8 }
  \alternative {
    { c8[ c] b[ a] g4 f e2. r8 g8 }
    { c8[ c] b[ a] g4 a c1 }
  }
  \bar "|." \break
  }

altoAntiphonMusic = \relative c'' {
  \partial 8
  g8 \bar ".|:"
  \repeat volta 2 { g2 g4. g8 e2 e4. e8 }
  \alternative {
    { g8[ g] f[ f] d4 c b2. r8 g'8 }
    { g8[ g] f[ f] d4 f e1 }
  }
  \bar "|."
  }

tenorAntiphonMusic =  \relative c' {
  \partial 8
  g8 \bar ".|:"
  \repeat volta 2 { e'2 d4. d8 c2 b4. b8 }
  \alternative {
    { e8[ e] d[ c] b4 a gs2. r8 g8 }
    { e'8[ e] d[ c] b4 c c1 }
  }
  \bar "|."
  }

bassAntiphonMusic =  \relative c' {
  \partial 8
  g8 \bar ".|:"
  \repeat volta 2 { c,2 g'4. e8 a,2 e'4. e8 }
  \alternative {
    { c8[ c] d[ d] e4 d e2. r8 g8 }
    { c,8[ c] d[ d] e4 d c1 }
  }
  \bar "|."
  }

antiphonLyrics = \lyricmode {
  Ho --
  \repeat volta 2 { san -- na, Ho -- san -- na, Ho -- }
  \alternative { { san -- na au plus haut des cieux&nbsp;! Ho -- } { san -- na au plus haut des cieux&nbsp;! } }

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

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
    \cadenzaOn
     e\breve^\markup{ \sans "Verset 1"}  g4 \bar "||"
     g\breve  a4 \bar "||"
     a8 a \tuplet 3/2 { c8 c c } a8 a  b4 \bar "||"
     g8 g \tuplet 3/2 { a8 f a }  g4 \bar "||"
    \break
     e\breve^\markup{ \sans "Verset 2"} g1  a4 \bar "||"
     a8 a c c a a  b4 \bar "||"
     g8 g \tuplet 3/2 { a8 f a }  g4 \bar "||"
  }

altoVerseMusic = \relative c'' {

  }

tenorVerseMusic = \relative c' {

  }

bassVerseMusic = \relative c' {

  }

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "À l'entrée du Seigneur dans la Ville " Sa \underline i nte }
      \concat { "Les enfants portant des palmes et des rameaux  " d'oliv \underline i er, }
      \concat { Annonç \underline a ient " la " rés \underline u rrecti \underline o n  }
      \concat { "Avec eux, nous chantons&nbsp;:" }
      " "
      \concat { "Quand le peuple apprit que " Jés \underline u s " arrivait à Jérusalem" }
      \concat { "Il " sort \underline i " à sa " renc \underline o ntre.  }
      \concat { "Avec eux, nous chantons&nbsp;:" }

    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ily"
\include "../libs/layouts/commonSettings.ily"

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