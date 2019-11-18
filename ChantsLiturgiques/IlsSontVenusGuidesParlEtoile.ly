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

title = "Guidés par l'étoile"
subtitle = "Tropaire pour l'Épiphanie"
poet = \markup { \column { "Jean Baptiste Favre" "AELF" } }
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, novembre 2019"

global = {
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Stance %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

stanceRhythms = {
  \key g \minor \time 3/4
  \partial 4. s4. s2. \time 2/4  s2 s2 \time 3/4 s2.\break
  \key g \major s2.*2 \time 2/4 s2*4 \bar "|."  \break
}
stanceMusic = \relative c' {
  \markCustom "Stance"
  \partial 4. d8 g a bf4 c8 bf a g \time 2/4 a4 a4 r8 a8 bf c \time 3/4 d4 c8 bf a f
  d4 r8 d e fs g4 fs8 g \tuplet 3/2 { a8 g a } b2 d4. b8 g g a b a2 \fermata
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \override Staff.KeyCancellation.break-visibility = #all-invisible
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  }

stanceLyrics = \lyricmode {
  Ils sont ve -- nus, gui -- dés par l'é -- toi -- le, se pro -- ster -- ner de -- vant le ber -- ceau
  Et dé -- po -- ser, juste aux pieds de l'en -- fant, l'or, la myr -- rhe et l'en -- cens
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRhythms = {
  \silence \stanceMusic
  \markCustom "Refrain"
  \key g \major \time 2/4
  s2*2 s4. \breathe s8 s2*5
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \override Staff.KeyCancellation.break-visibility = #all-invisible
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \bar "|." \break
}
sopranoAntiphonMusic = \relative c' {
  \silence \stanceMusic
  r8 d8 g a b4 c8 b a4 \autoBeamOff fs8
  fs8 \autoBeamOn g a b c d c b g e4 g8 fs g2~ g2 \fermata
  }

altoAntiphonMusic = \relative c' {
  \silence \stanceMusic \key g \major 
  r8 d8 d8 fs8 g4 g8 g8 fs4 \autoBeamOff d8
  ds8 \autoBeamOn e fs g g a fs fs e c4 d8 d d2 ~d2 \fermata
  }

tenorAntiphonMusic =  \relative c {
  \silence \stanceMusic \key g \major
  r8 fs8 g d'8 d4 c8 d8 d4 \autoBeamOff a8
  b8 \autoBeamOn b d d e d a b b a4 c8 c c4 b8 a b2 \fermata
  }

bassAntiphonMusic =  \relative c {
  \silence \stanceMusic \key g \major
  r8 d8 b a g (g') e g d4 \autoBeamOff  d8
  b8 \autoBeamOn e d g e fs d ds e a,4 d8 d g,2~ g2 \fermata
  }

antiphonFiguredBass = \figuremode {
  \silence \stanceMusic
  s8 <5>8 <6> <6\! 4> <5>4 <6>8 <5> <5\!>4 <5>8 <_+>8 <5> <5\!> <5\!> <6 4> <6> <7\+> <6+> <5> <5\!>4 <7\+>8 <7\+> <5>2 <5>
  }
antiphonFiguredHarmony = \figuremode {
  \silence \stanceMusic
  s8 <V>8 <I> <V> <I>4 <IV>8 <I> <V>4. <III>8 <VI> <V> <I> <IV> <V>4 <III>8 <VI> <II>4 <V> <I>1
  }
antiphonLyrics = \lyricmode {
  Nous a -- vons vu son é -- toi -- le, et nous som -- mes ve -- nus nous pro -- ster -- ner de -- vant Lui.
  }
sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \tenorAntiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%     Verses     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie A" \cadenzaOn
  g\breve g1 g4 \bar "||"
  g\breve g1 g4 \bar "||"
  g\breve g1 g4 \bar "||"
  g\breve g1 g4 \bar "|." \break
  \markCustom "Psalmodie B"
  g\breve g1 g4 \bar "||"
  g\breve g1 g4 \bar "|."
  g4^\markup { &dagger; } \bar "|." \break

  \markCustom "Psalmodie C"
  g\breve g1 g4 \bar "||"
  g\breve g1 g4 \bar "||"
  g\breve g1 g4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  g'\breve g1 g4
  g\breve g1 g4
  g\breve g1 g4
  g\breve g1 g4

  g\breve g1 g4
  g\breve g1 g4
  g4

  g\breve g1 g4
  g\breve g1 g4
  g\breve g1 g4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  g\breve g1 g4
  g\breve g1 g4
  g\breve g1 g4
  g\breve g1 g4

  g\breve g1 g4
  g\breve g1 g4
  g4

  g\breve g1 g4
  g\breve g1 g4
  g\breve g1 g4
  }

bassVerseMusic = \relative f {
  \silence \sopranoAntiphonMusic
  g\breve g1 g4
  g\breve g1 g4
  g\breve g1 g4
  g\breve g1 g4

  g\breve g1 g4
  g\breve g1 g4
  g4

  g\breve g1 g4
  g\breve g1 g4
  g\breve g1 g4
  }

verseLyrics =  \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        %  « ℣ » et « ℟ »
        \concat { \typewriter "℣. " "Servez le Seigne" \underline u "r avec crainte," }
        \concat { \typewriter "   " "rendez-lui votre homm" \underline a "ge en tremblant." \typewriter "(Ps.2,10)" }
        \concat { \typewriter "   " "Maintenant, r" \underline o "is, comprenez," }
        \concat { \typewriter "   " "reprenez-vous, j" \underline u "ges de la terre." \typewriter "(Ps.2,11)  " \typewriter " ℟"}
        \vspace #1
        \concat { \typewriter "℣. " "Qui est ce r" \underline o "i de gloire ? &dagger;" }
        \concat { \typewriter "   " "C'est le Seigneur, le f" \underline o "rt, le vaillant," }
        \concat { \typewriter "   " "le Seign" \underline e "ur, le vaillant des combats." \typewriter "(Ps.23,8)" }
        \concat { \typewriter "   " "Tu lui destines bénédicti" \underline o "ns et bienfaits," }
        \concat { \typewriter "   " "tu mets sur sa t" \underline ê "te une couronne d'or." \typewriter "(Ps.20,4)  " \typewriter " ℟" }
        \vspace #1
        \concat { \typewriter "℣. " "Heureux le peuple dont le Seigne" \underline u "r est le Dieu,"}
        \concat { \typewriter "   " "heureuse la nation qu'il s'est chois" \underline i "e pour domaine !" \typewriter "(Ps.32,12)" }
        \concat { \typewriter "   " "Fêtez le Seigneur, v" \underline o "us, ses fidèles," }
        \concat { \typewriter "   " "rendez gr" \underline â "ce en rappelant son nom très saint." \typewriter "(Ps.29,5)  " \typewriter " ℟" }
        \vspace #1
        \concat { \typewriter "℣. " "Ton trône est div" \underline i "n, un trône éternel ;" }
        \concat { \typewriter "   " "ton sceptre roy" \underline a "l est sceptre de droiture :" \typewriter "(Ps.44,7)" }
        \concat { \typewriter "   " "Toute la t" \underline e "rre se prosterne devant toi," }
        \concat { \typewriter "   " "elle chante pour t" \underline o "i, elle chante pour ton nom. »" \typewriter "(Ps.65,4)  " \typewriter " ℟" }
        \vspace #1
        \concat { \typewriter "℣. " "Les rois de Tarsis et des Iles apporter" \underline o "nt des présents." }
        \concat { \typewriter "   " "Les rois de Saba et de Seba fer" \underline o "nt leur offrande." \typewriter "(Ps.71,10)" }
        \concat { \typewriter "   " "Tous les rois se prosterner" \underline o "nt devant lui," }
        \concat { \typewriter "   " "tous les pa" \underline y "s le serviront." \typewriter "(Ps.71,11)  " \typewriter " ℟" }
        \vspace #1
        \concat { \typewriter "D. " "Gloire au Père et au F" \underline i "ls et au Saint-Esprit." }
        \concat { \typewriter "   " "Au Dieu qui " \underline e "st, qui était et qui vient" }
        \concat { \typewriter "   " "Maintenant et à jamais pour les si" \underline è "cles des siècles, Amen !" }
        \vspace #1
        \concat { \typewriter "℣. " "Verset d'entrée du jour" \typewriter " (Stance puis ℟)" }
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

partition = {
  <<
    % Stance pour Soliste ou Schola à l'unisson
    \include "../libs/layouts/commonStanceOneVoice.ily"
    % Antienne à 4 voix mixtes
    \include "../libs/layouts/commonAntiphonFourVoices.ily"
    \include "../libs/layouts/commonPiano.ily"
    % Psalmodie à 4 voix mixtes
    \include "../libs/layouts/commonVerseFourVoices.ily"
  >>
}

% Load PDF output
\include "../libs/layouts/outputPDF.ily"