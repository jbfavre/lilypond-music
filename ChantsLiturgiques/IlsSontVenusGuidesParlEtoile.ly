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
subtitle = \markup { \column { "Tropaire pour l'Épiphanie" "(Introït ou Offertoire)" }}
poet = "Jean Baptiste Favre, AELF"
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, novembre 2019"

global = {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Stance %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

stanceRhythms = {
  \key g \minor \time 3/4
  \partial 4. s4. s2. \time 2/4  s2 s2 \time 3/4 s2. \break
  \key g \major s2. s2. \time 2/4 s2*4 \bar "|."
}
stanceMusic = \relative c' {
  \markCustom "Stance"
  \partial 4. d8 g a bf4 c8 bf a g \time 2/4 a4 a4 r8 a8 bf c \time 3/4 d4 c8 bf a g 
  fs!?4 r8 d e
  fs g4 fs8 g \tuplet 3/2 { a8 g a } b2 d4. b8 g g a b a2 \fermata
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \once \override Staff.KeyCancellation.break-visibility = #all-invisible
  \once \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  }

stanceLyrics = \lyricmode {
  Ils sont ve -- nus, gui -- dés par l'é -- toi -- le, se pro -- ster -- ner de -- vant le ber -- ceau
  Et dé -- po -- ser, juste aux pieds de l'en -- fant, l'or, la myr -- rhe et l'en -- cens
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRhythms = {
  \silence \stanceRhythms
  \break
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
  fs8 \autoBeamOn g a b c d c b g a4 g8 fs g2 (g2) \fermata
  }

altoAntiphonMusic = \relative c' {
  \silence \stanceMusic \key g \major
  r8 d8 d8 fs8 g4 g8 g8 fs4 \autoBeamOff d8
  ds8 \autoBeamOn e fs g g a fs fs e e4 e8 d d2 (d2) \fermata
  }

tenorAntiphonMusic =  \relative c {
  \silence \stanceMusic \key g \major
  r8 fs8 g d'8 d4 c8 d8 d4 \autoBeamOff a8
  b8 \autoBeamOn b d d e d (a) b4 a d8 c8 c4 b8 a b2 \fermata
  }

bassAntiphonMusic =  \relative c {
  \silence \stanceMusic \key g \major
  r8 d8 b a g (g') e g d4 \autoBeamOff  d8
  b8 \autoBeamOn e d g e fs d ds e c4 d8 d g,2 (g2) \fermata
  }

antiphonFiguredBass = \figuremode {
  \silence \stanceMusic
  s8 <5>8 <6> <6\! 4> <5>4 <6>8 <5> <5\!>4 <5>8 <_+>8 <5> <5\!> <5\!> <6> <6\!> <7\+> <6+> <5> <6>4 <7\+>8 <7\+> <5>2 <5>
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw antiphon          %%%%%%%%%%%%%%%%%%%%
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
  >>
}

% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\pageBreak
% We don't need headers from now
title = ##f
subtitle = ##f
composer = ##f
composerPrefix = ##f
poet = ##f
poetPrefix = ##f
dedicace = ##f

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%     Verses     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \key g \major
  \cadenzaOn
  \markCustom "Psalmodie A"
  g\breve a1 fs4 \bar "||"
  b\breve g1 a4 \bar "||"
  a\breve b1 g4 \bar "||"
  a\breve g1 fs4 \bar "|." \break
  \markCustom "Psalmodie B"
  b\breve b1 b1 a4 g4 \bar "||"
  a\breve b1 b4 \bar "|."
  a4^\markup { &dagger; } \bar "|." \break
  \markCustom "Psalmodie C"
  b\breve b1 a4 fs4 \bar "||"
  g\breve c1 c4 b4 \bar "||"
  b\breve d1 d4 \bar "||"
  c\breve b1 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \key g \major
  e\breve e1 d4 % A
  fs\breve e1 e4
  fs\breve fs1 e4
  g\breve e1 d4

  g\breve e1 fs1 fs4 e4 % B
  e\breve e1 g4
  g4

  g\breve g1 fs4 d4 % C
  e\breve g1 g4 fs4
  g\breve  a1 b4
  e,\breve e1 fs4
  }

tenorVerseMusic = \relative c' {
  \key g \major
  b\breve a1 a4 % A
  d\breve b1 c4
  d\breve b1 b4
  c\breve c1 a4

  d\breve e1 b1 d4 b4 % B
  a\breve c1 d4
  e4

  e\breve c1 c4 b4 % C
  b\breve e1 e4 ds4
  e\breve d!?1 d4
  a\breve c1 d4
  }

bassVerseMusic = \relative f {
  \key g \major
  e\breve c1 d4 % A
  b\breve e1 a,4
  d\breve ds1 e4
  e\breve a,1 d4

  g\breve g1 d1 d4 e4 % B
  c\breve a1 g4
  c4

  e\breve a,1 a4 b4 % C
  e\breve c1 a4 b4
  e\breve fs1 g4
  c,\breve a1 d4
  }
verseFiguredHarmony = \figuremode {
  <VI>\breve <II>1 <V>4 <III>\breve <VI>1 <II>4 <V>\breve <II>1 <VI>4 <IV>\breve <II>1 <V>4 % A
  <I>\breve <VI>1 <III>1 <V>4 <VI>4 <II>\breve <II>1 <I>4 <II>4 %B
  <VI>\breve <II>1 <II>4 <III>4 <VI>\breve <IV>1 <II>4 <III>4 <VI>\breve <V>1 <III>4 <II>\breve <II>1 <V>4 % C
  }
verseFiguredBass = \figuremode {
  <5\!>\breve <6>1 <5>4 <5\!>\breve <5\!>1 <5\!>4 <5\!>\breve <_!>1 <5>4 <6 4>\breve <7\+>1 <5\!>4 % A
  <5\!>\breve <6\!>1 <6\!>1 <5>4 <5\!>4 <6>\breve <5>1 <5\!>4 <6>4 % B
  <5\!>\breve <7 9>1 <6\+>4 <5>4 <5\!>\breve <5\!>1 <5\!>4 <5\!>4 <5\!>\breve <6\!>1 <5\!>4 <6>\breve <6\! 5>1 <5\!>4 % C
  }

verseLyrics =  \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \column {
    \fill-line {
      \left-column{
        %  « ℣ » et « ℟ »
        \concat { \typewriter "℣. " "Servez le Seigne" \underline u "r avec crainte," }
        \concat { \typewriter "   " "rendez-lui votre homm" \underline a "ge en tremblant." \typewriter "(Ps.2,10)" }
        \concat { \typewriter "   " "Maintenant, r" \underline o "is, comprenez," }
        \concat { \typewriter "   " "reprenez-vous, j" \underline u "ges de la terre." \typewriter "(Ps.2,11)  " \typewriter " ℟"}
        \vspace #0.5
        \concat { \typewriter "℣. " "Qui est ce roi de gloire ? " \roman \super {"&dagger;"} }
        \concat { \typewriter "     " "c'est le Seign" \underline e "ur, le f" \underline o "rt, le vaillant," }
        \concat { \typewriter "   " "le Seign" \underline e "ur, le vaillant des combats." \typewriter "(Ps.23,8)" }
        \concat { \typewriter "   " "Tu lui dest" \underline i "nes bénédicti" \underline o "ns et bienfaits," }
        \concat { \typewriter "   " "tu mets sur sa t" \underline ê "te une couronne d'or." \typewriter "(Ps.20,4)  " \typewriter " ℟" }
        \vspace #0.5
        \concat { \typewriter "℣. " "Heureux le peuple dont le Seigne" \underline u "r est le Dieu,"}
        \concat { \typewriter "   " "heureuse la nation qu'il s'est chois" \underline i "e pour domaine !" \typewriter "(Ps.32,12)" }
        \concat { \typewriter "   " "Fêtez le Seigneur, v" \underline o "us, ses fidèles," }
        \concat { \typewriter "   " "rendez gr" \underline â "ce en rappelant son nom très saint." \typewriter "(Ps.29,5)  " \typewriter " ℟" }
        \vspace #0.5
        \concat { \typewriter "℣. " "Ton trône est div" \underline i "n, un trône éternel ;" }
        \concat { \typewriter "   " "ton sceptre roy" \underline a "l est sceptre de droiture :" \typewriter "(Ps.44,7)" }
        \concat { \typewriter "   " "Toute la t" \underline e "rre se prosterne devant toi," }
        \concat { \typewriter "   " "elle chante pour t" \underline o "i, elle chante pour ton nom. »" \typewriter "(Ps.65,4)  " \typewriter " ℟" }
        \vspace #0.5
        \concat { \typewriter "℣. " "Les rois de Tarsis et des Iles " \roman \super {"&dagger;"} }
        \concat { \typewriter "     " "apporter" \underline o "nt des présents." }
        \concat { \typewriter "   " "Les rois de Saba et de Seba fer" \underline o "nt leur offrande." \typewriter "(Ps.71,10)" }
        \concat { \typewriter "   " "Tous les r" \underline o "is se prosterner" \underline o "nt devant lui," }
        \concat { \typewriter "   " "tous les pa" \underline y "s le serviront." \typewriter "(Ps.71,11)  " \typewriter " ℟" }
      }
    }
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw verses          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/layouts/commonSettings.ily"
% Prepare partition
partition = \include "../libs/layouts/commonVerseFourVoices.ily"
% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics
\pageBreak
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Doxology %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' { \key g \major \cadenzaOn \markCustom "Doxologie" b\breve b1 a4 g4 \bar "||" g\breve g1 a1 b4 \bar "||" b\breve d1 b1 a4 a4 g4 \bar "||" \cadenzaOff a2 a2\fermata \bar "|." }
altoVerseMusic = \relative c' { \key g \major g'\breve fs1 fs4 e4 e\breve e1 e1 fs4 g\breve fs1 fs1 fs4 e4 e4 g2 fs2 }
tenorVerseMusic = \relative c' { \key g \major d\breve d1 d4 b4 b\breve c1 e1 ds4 e\breve a,1 b1 b4 b4 b4 e4 c4 d2 }
bassVerseMusic = \relative f { \key g \major g\breve d1 d4 e4 e\breve c1 c1 b4 e\breve d1 ds1 ds4 e4 e4 c4 a4 d2 }
verseFiguredHarmony = \figuremode { }%<I>\breve <V>1 <_>4 <VI>4 <VI>\breve <IV>1 <II>1 <III>4 <VI>\breve <V>1 <III>1 <III>4 <VI>4 <_>4 <II> <_> <V>2 }
verseFiguredBass = \figuremode { }%<5\!>\breve <5\!>1 <_>4 <5\!>4 <5\!>\breve <5\!>1 <6>1 <5>4 <5\!>\breve <5\!>1 <6>1 <_>4 <5>4 <_>4 <6\!>4 <5\!>4 <5\!>2 }

verseLyrics =  \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \column {
    %\vspace #1
    \fill-line {
      \left-column{
        %  « ℣ » et « ℟ »
        \concat { \typewriter "D. " "Gloire au Père et au F" \underline i "ls et au Saint-Esprit." }
        \concat { \typewriter "   " "Au Dieu qui " \underline e "st, qui ét" \underline a "it et qui vient" }
        \concat { \typewriter "   " "Maintenant et à jam" \underline  a "is pour les si" \underline è "cles des siècles," }
        \concat { \typewriter "   " "Amen !" }
      }
    }
    \vspace #1
    \fill-line {
      \rounded-box \bold \center-column {
        \concat { "Selon le moment de la messe, on prendra au choix" }
        \concat { "l'antienne d'ouverture ou l'antienne de communion" }
      }
    }
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%% Draw Doxology & Final %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/layouts/commonSettings.ily"

partition = \include "../libs/layouts/commonVerseFourVoices.ily"

% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antienne d'ouverture %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \cadenzaOff \time 3/8 \key g \major \markCustom "Antienne d'ouverture"
  \partial 8 g8 g4 a8 b c d c b a g4 \breathe g8 c4 c8 \break b4. c8 d c b a g a b a a4. g4 r8 \bar "|." }
altoVerseMusic = \relative c' { \key g \major g'8 g4 fs8 g g fs a fs fs e4 g8 \repeat unfold 2 { s4. } a8 a fs d d d e fs d d4. d4 r8 }
tenorVerseMusic = \relative c' { \key g \major g8 b4 d8 d c d e d d b4 g8 \repeat unfold 2 { s4. } e'8 d a g fs g c d c c4. b4 r8 }
bassVerseMusic = \relative f { \key g \major g8 e4  d8 g8 e b c d d e4 \breathe g8 e4 fs8 g4. a8 fs d g, a b a d d g4. g4 r8 }
verseFiguredHarmony = \figuremode { <I>8 <VI>4 <V>8 <I>8 <IV> <III> <II> <III> <V> <VI>4 <_>8 <IV>4 <V>8 <I>4. <II>8 <V> <_> <I> <V> <I> <II> <III> <V> <V>4. <I>4 }
verseFiguredBass = \figuremode { <0>8 <5>4 <5\!>8 <5\!> <6> <5> <6\!> <6\!> <5\!> <5\!>4 <0\!>8 <6\!>4 <6\!>8 <5\!>4. <5\!>8 <6> <7\+> <5\!> <6 4>  <6\!> <5\!> <6> <7\+> <5\!>4. <5\!>4 }

verseLyrics =  \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \column {
    \fill-line {
      \left-column{
        %  « ℣ » et « ℟ »
        \concat { \typewriter "In. " "Voici venir le Seigneur souverain&nbsp;;" \super \typewriter "*" \typewriter " (Soliste puis chœur)" }
        \concat { \typewriter "    " "Il tient en main la royauté, la puissance et l'empire." \typewriter " (Stance puis ℟)" }
      }
    }
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%% Draw Antienne d'ouverture %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/layouts/commonSettings.ily"

partition = \include "../libs/layouts/commonVerseFourVoices.ily"

% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antienne de communion %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \cadenzaOff \time 3/8 \key g \major \markCustom "Antienne de communion"
  g8 g a8 b c d c b a a4 \breathe b8 e e e \break d4 d8 c8 d c b a g a c b a4. g4 r8 \bar "|." }
altoVerseMusic = \relative c' { \key g \major s4. s4. s4. fs4 g8 \repeat unfold 5 { s4. } fs4. d4 r8 }
tenorVerseMusic = \relative c' { \key g \major s4. s4. s4. d4 d8 \repeat unfold 5 { s4. } d4. b4 r8 }
bassVerseMusic = \relative f { \key g \major g8 e d8 g8 e b c a c d4 \breathe g8 e8 e fs8 g4 g8 e8 fs d g e c a a c d4. g4 r8 }
verseFiguredHarmony = \figuremode { }%<I>8 <VI>8 <V>8 <I>8 <IV> <III> <IV> <II> <_> <V>4 <I>8 <IV>4 <_>8 <I>4. <II>8 <V> <_> <I> <IV> <_> <II> <_> <IV> <V>4. <I>4 }
verseFiguredBass = \figuremode { }%<0>8 <5>8 <5\!>8 <5\!> <6> <5> <5\!> <5\!> <6> <5>4 <5\!>8 <5\!>4 <6>8 <5\!>4. <5\!>8 <6> <7\+> <5\!> <6>  <5\!> <5\!> <5> <5\!> <5\!>4. <5\!>4 }

verseLyrics =  \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \column {
    \fill-line {
      \left-column{
        %  « ℣ » et « ℟ »
        \concat { \typewriter "Co. " "Comme les mages guidés par l'étoile" \super \typewriter "*" \typewriter " (Soliste puis chœur)" }
        \concat { \typewriter "    " "nous sommes venus avec des présents adorer le Seigneur." \typewriter " (Stance puis ℟)" }
      }
    }
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%% Draw Antienne de communion %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/layouts/commonSettings.ily"

partition = \include "../libs/layouts/commonVerseFourVoices.ily"

% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics
