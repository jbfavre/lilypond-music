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
 
title = "Psaume 62-3"
subtitle = "32ème dimanche du Temps Ordinaire — Année A"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 29 septembre 2017"

global = {
    \time 2/4
    \key c \major
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
    \partial 4 g4 b a b c b2 (b4) \breathe
    b4 d2 c2 b2 \fermata
    \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
    \partial 4 g'4 g c, f g g4 \breathe
    g4 (g2) a2 e2 a4 (g) \fermata
  }

tenorAntiphonMusic =  \relative c' {
    \partial 4 g4 b f a e b'4 \breathe
    c4 (b2) c2 c2 b2 \fermata
  }

bassAntiphonMusic =  \relative c {
    \partial 4 g'4 e c d c e4 \breathe
    e4 (e2) f2 a,2 <e e'>2 \fermata
  }

antiphonLyrics = \lyricmode {
    Mon â -- me~a soif de toi,
    Sei -- gneur, mon Dieu!
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
% en utilisant \tempoVerseAcelerando et \tempoVerseRallentando

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    \override HorizontalBracket.direction = #UP
    \tempoVerseAcelerando b\breve \tempoVerseRallentando a2
        \startGroup^\markup { \typewriter "flexe" } \tempoVerseAcelerando b1\stopGroup
        c1 \tempoVerseRallentando a2 \bar "||" \caesura
    \tempoVerseAcelerando a\breve g1 \tempoVerseRallentando b2 \bar "||" \caesura
    \tempoVerseAcelerando b\breve d1 \tempoVerseRallentando c2 \bar "||" \caesura
    \tempoVerseAcelerando c\breve b1 \tempoVerseRallentando g4 f4 a2 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    g'\breve e2 c1 e1 f2 \caesura
    f\breve d1 g2 \caesura
    d\breve f1 e2 \caesura
    f\breve f1 d4 d4 e2
 }

tenorVerseMusic = \relative c' {
    \caesura
    b\breve c2 a1 c1 c2 \caesura
    d\breve b1 d2 \caesura
    a\breve c1 c2 \caesura
    c\breve d1 b4 a4 c2
  }

bassVerseMusic = \relative c {
    \caesura
    e\breve a,2\startGroup-\markup { \typewriter "flexe" } f1\stopGroup a1 d2 \caesura
    d\breve e1 g2 \caesura
    f\breve a1 a2 \caesura
    a\breve g1 e4 f4 a,2
    \once \override Score.RehearsalMark.extra-offset = #'(-60 . -22.5)
    \mark \markup { \typewriter \small
      \column {
        \line { "(n'est psalmodiée que pour le premier verset de la première strophe)"}
      }
    }
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
  racontez à tous les pe_u_ples sa gloire,
  à toutes les nati_o_ns ses merveilles !

  Il est grand, le Seigne_u_r, hautement loué,
  redoutable au-dess_u_s de tous les dieux :
  néant, tous les die_u_x des nations !
  Lui, le Seigne_u_r, a fait les cieux.

  Rendez au Seigne_u_r, familles des peuples,
  rendez au Seigneur la glo_i_re et la puissance,
  rendez au Seigneur la glo_i_re de son nom.
  Apportez votre offr_a_nde, entrez dans ses parvis.

  Adorez le Seigne_u_r, éblouissant de sainteté :
  tremblez devant lu_i_, terre entière.
  Allez dire aux nations : « Le Seigne_u_r est roi ! »
  Il gouverne les pe_u_ples avec droiture.

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Dieu, tu es mon " Di \underline e u, \super "+"}
      \concat { "     je te " ch \underline e rche " dès l’aube :"}
      \concat { "mon âme a " so \underline i f " de toi ;"}
      \concat { "après toi " langu \underline i t " ma chair,"}
      \concat { "terre " ar \underline i de, " altérée, sans eau."}
      " "
      \concat { "Je t’ai " contempl \underline é " au sanctuaire,"}
      \concat { "j’ai vu ta " f \underline o rce " et ta gloire."}
      \concat { "Ton amour vaut " m \underline i eux " que la vie :"}
      \concat { "tu seras la " lou \underline a nge " de mes lèvres !"}
      " "
      \concat { "Toute ma " v \underline i e " je vais te bénir,"}
      \concat { "lever les mains en " invoqu \underline a nt " ton nom."}
      \concat { "Comme par un " fest \underline i n " je serai rassasié ;"}
      \concat { "la joie sur les lèvres, je " dir \underline a i " ta louange."}
      " "
      \concat { "Dans la nuit, je me " souv \underline i ens " de toi"}
      \concat { "et je reste des " h \underline e ures " à te parler."}
      \concat { "Oui, tu es " ven \underline u " à mon secours :"}
      \concat { "je crie de joie à l’" \underline o mbre " de tes ailes."}
    }
  }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"
