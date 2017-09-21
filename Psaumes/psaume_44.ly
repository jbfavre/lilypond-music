% modèle 2.07 - 17/11/2016
% dernière modif : l'indice de difficulté ("1" = facile, "3" = difficile, ne pas oublier les guillemets)
% lorsque le psaume sera prêt à être publié avec Mada, il faudra :
% 	- enlever les espaces dans "+ ++"
%	- entrer la date du dimanche où le psaume doit être chanté, au format AAAA-MM-JJ.
%	- lancer Mada en tapant dans un terminal : 
%		~/psaume-du-dimanche-git/chanterprier/mada.py

%{
+++
date="2017-08-27"
difficulte="2"
auteurs="Jean Baptiste"
+++
%}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%      RÉGLAGES PRÉLIMINAIRES       %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.18.2"

\include "common.ly"
%\pointAndClickOff

\paper {
  % les deux variables suivantes permettent parfois de serrer le contenu
  % sur une seule page :
    %system-count = #2
    %page-count=#1
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1.5\cm
  bottom-margin = 0\cm
  system-system-spacing = 
      #'((padding . 4)
       (basic-distance . 10)
       (minimum-distance . 4)
       (stretchability . 10))
}


title = "Psaume 44"
subtitle = "Solennité de l'Assomption"
composer = "Magnificat, août 2017"

% inutile en général de toucher aux variables ci-dessous,
% déjà définies par défaut dans reglagesGraphiques2.ly
% poet = "AELF"
% poetPrefix = "Texte : "
% composerPrefix = "Musique : "



\layout {
  ragged-right = ##f
}

% il faudra retirer les décalages (extra-offset) le jour où on compile avec 2.18.2
% le bug de positionnement des marques a été résolu dans 2.18.2
tRall = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70
}
tAcce = {
  \set Score.tempoHideNote = ##t
  \tempo 2=100
}

cesure = {
  \tag #'audio s4
}

% mettre à 0 si l'on veut gagner de l'espace vertical
#(define vspaceSousAntienne 0.5)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%         MUSIQUE À ÀDAPTER         %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



tDebut = {
  % supprimer le % suivant si l'on ne veut pas d'indication métronomique
  \set Score.tempoHideNote = ##t
  \tempo "Allegro" 4=70
}

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key g \major
}


commonLyrics = \lyricmode {
  De -- bout, à la droi -- te du Sei -- gneur,
  se tient la rei -- ne, tou -- te pa -- rée d’or.
}


SopranoMusic = \relative c' {
  d4 g g8 fis e e fis g a4. \breathe
  a8 b c d4 b c8 b a a b2 \fermata
  \bar "|."
}

SopranoLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }


AltoMusic = \relative c' {
}

AltoLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }

TenorMusic =  \relative c' {
}

TenorLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }

BassMusic =  \relative c {
}

BassLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }


%%% Musique de la psalmodie

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
SopranoMusicB = \relative c'' {
  \tempo 2=100
  b\breve d1
  \tempo 2=30
  g,4 \bar "||"
  \tempo 2=100
  g\breve c
  \tempo 2=30
  a4 \bar "||"
  \tempo 2=100
  b\breve g1
  \tempo 2=30
  e4 d \bar "||"
}

AltoMusicB = \relative c' {
}

TenorMusicB = 	\relative c' {
}


BassMusicB = \relative c {
}


% si l'on souhaite préciser une voix différente pour l'accompagnement, 
% il faut modifier ces variables. Pour ajouter une introduction, il suffit
% d'ajouter des silences aux voix chantées (les portées seront masquées) et de
% préciser l'intro ici.
pianoSopranoMusic = \SopranoMusic
pianoSopranoMusicB = \SopranoMusicB
pianoAltoMusic = \AltoMusic
pianoAltoMusicB = \AltoMusicB
pianoTenorMusic = \TenorMusic
pianoTenorMusicB = \TenorMusicB
pianoBassMusic = \BassMusic
pianoBassMusicB = \BassMusicB

#define texteAntienne="Debout, à la droite du Seigneur, se tient la reine, toute parée d’or."

%{DEBUT-DU-TEXTE-DE-LA-PSALMODIE

Écoute, ma fille, reg_a_rde et tends l’oreille ;
oublie ton peuple et la mais_o_n de ton père :
le roi sera sédu_i_t par ta beauté.

Il est ton Seigneur : prosterne-t_o_i devant lui.
Alors, les plus r_i_ches du peuple,
chargés de présents, quêter_o_nt ton sourire.

Fille de roi, elle est l_à_, dans sa gloire,
vêtue d’ét_o_ffes d’or ;
on la conduit, toute par_é_e, vers le roi.

Des jeunes filles, ses compagnes, lui f_o_nt cortège ;
on les conduit parmi les ch_a_nts de fête :
elles entrent au pal_a_is du roi.

FIN-DU-TEXTE-DE-LA-PSALMODIE%}

%%%%%%%% Remarques d'exécution %%%%%%%%
% pas incluses dans la partition, seulement dans le post de blog.

% au-dessus de la partition
%{DEBUT-DU-MARKDOWN-SUPERIEUR

FIN-DU-MARKDOWN-SUPERIEUR%}



% sous la partition
%{DEBUT-DU-MARKDOWN-INFERIEUR
## Remarques d'exécution 

- Veiller à ne pas ralentir au milieu de l'antienne. 
On peut chanter comme s'il s'agissait d'une danse.

- Pour la basse à la psalmodie, le *do* bécarre est plus
facile à trouver précisément si on le pense d'abord comme
anticipation du *si* qui le suit.

FIN-DU-MARKDOWN-INFERIEUR%}

% Petit guide de syntaxe :
% ## Titre
% *italique*
% **gras**
% ***gras et italique***
% [lien web](http://www.psaumedudimanche.fr/)
% * Point 1
% * Point 2
%    * Sous-point 2.1
%    * Sous-point 2.3
% Important : 2 retours à la ligne => saut de paragraphe
%             1 seul retour à la ligne => RIEN.




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          AUTRES RÉGLAGES          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% tempo MIDI - il faut indiquer les \tRall (rallentando) et les \tAcce (accelerando) 
% une des parties puis appeler
silence = #(define-music-function (parser location arg) (ly:music?)
             (map-some-music
               (lambda (m)
                  (and (music-is-of-type? m 'note-event)
                       (make-music 'SkipEvent m)))
               arg))

pisteTempoPsalmodie = \silence \SopranoMusicB

pianoProperties = { %options pour Lilypond 2.18.2 et suivantes
                    \hide PhrasingSlur 
                    \hide Slur
                    \hide Hairpin
                    \omit DynamicText
                    \omit TextScript
                    \set fontSize = #-1
                    \override StaffSymbol #'staff-space = #(magstep -1) 
                    \override Hairpin #'style = #'none
                    \autoBeamOn
}

debutPsalmodie={
  % \bar "|." 
  %si on ne met pas la barre, le retour à  la ligne n'est pas forcément exécuté
  \break \cadenzaOn 
  \accidentalStyle "forget"
}

partition = {
  <<
    % choirStaff éclaté pour l'antienne et regroupé pour la psalmodie
    % antienne
    \new ChoirStaff <<
      \new Staff = "Soprano" <<
        \new Voice = "Sop" {
          \dynamicUp
          \global \tDebut \marqueAntienne
          \SopranoMusic 
        }
        \new Lyrics \lyricsto "Sop" { \SopranoLyrics }
      >>
      
      % psalmodie = ChoirStaff à deux portées 
      % pour que la psalmodie n'arrive qu'après mais sur de nouveaux staffs,
      % les staffs doivent ^etre déclarés à la mesure 1, puis remplis de silence tout le temps que dure la psalmodie
      % de la voix soprane ; les staffs vides sont ensuite masqués (y compris le premier).
      \new Staff = "Soprano" 
      \with {
        \remove Time_signature_engraver
      }
      { 
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        << 
          \new Voice = "Soprano_psalmodie" { 
            \voiceOne
            { 
              \silence \SopranoMusic 
            }
            \cadenzaOn
            \debutPsalmodie
            \marquePsalmodie
            %version visuelle
            \tag #'visuel \SopranoMusicB
            %version midi
            \tag #'audio <<\SopranoMusicB \\ \pisteTempoPsalmodie>>
          }
        >>
      }
    >>
  >>
}

% partition visuelle

%%%%%%%%%%%%% ZONE ACTIVE. ICI, PAS DE NOUVELLE DÉFINITION... %%%%%%%%%%%%%
\bookpart {
\score {
  \keepWithTag #'visuel \partition
  \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
        % \override PhrasingSlur #'transparent = ##t
      }
      \context {
        \Staff
        \override NoteHead #'style = #'altdefault
        % pour les doubles brèves
        
        \RemoveEmptyStaves
      }
      ragged-last = ##f
      % retrait pour les noms courts de voix
      short-indent = 0.8\cm
  }
  \header {
    title = \title
    subtitle = \subtitle
    composer = \composer
    composerPrefix = \composerPrefix
    poet = \poet
    poetPrefix = \poetPrefix
  }
  
}
% midi général
\score {
  << \keepWithTag #'audio \unfoldRepeats \partition
  
      \context Staff = "Soprano" {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.7
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1
      }
      \context Voice = "Soprano" {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.7
       \set Voice.midiMinimumVolume = #0.8
       \set Voice.midiMaximumVolume = #1
      }
  >>
  \midi { 
    \set midiMergeUnisons = ##t
  }
}







%%%%%%%%%%%%%%%% VOIX SÉPARÉES %%%%%%%%%%%%%%%%%

% midi soprani

\score {  \unfoldRepeats
     <<
        \new ChoirStaff <<
          \new Staff <<
            \global
            \clef "treble"
            \new Voice = "Soprano" <<
              \voiceOne
              {\tDebut \SopranoMusic \debutPsalmodie <<\SopranoMusicB \\ \pisteTempoPsalmodie>>}
			>>
		  >>

        >>

    >>
	\midi {}
}

% midi alti

\score {  \unfoldRepeats
     <<
        \new ChoirStaff <<
          \new Staff <<
            \global
            \clef "treble"
            \new Voice = "Alti" <<
              \voiceOne
              {\tDebut \AltoMusic \debutPsalmodie <<\AltoMusicB \\ \pisteTempoPsalmodie>>}
			>>
		  >>

        >>
      >>
	\midi {}
}

% midi ténors

%{\score {  \unfoldRepeats
     <<
        \new ChoirStaff <<
          \new Staff <<
            \global
            \clef "G_8"
            \new Voice = "Ténors" <<
              \voiceOne
              {\tDebut \TenorMusic \debutPsalmodie <<\TenorMusicB \\ \pisteTempoPsalmodie>>}
			>>
		  >>

        >>
      >>
	\midi {}
} %}

% midi basses

\score {  \unfoldRepeats
     <<
        \new ChoirStaff <<
          \new Staff <<
            \global
            \clef "bass"
            \new Voice = "Basses" <<
              \voiceOne
              {\tDebut \BassMusic \debutPsalmodie <<\BassMusicB \\ \pisteTempoPsalmodie>>}
			>>
		  >>

        >>
      >>
	\midi {}
}




% mise en forme et inclusion des paroles 
\noPageBreak
\markup { \combine \null \vspace #1.5 }
\noPageBreak

% header du bookpart
\header {    
  tagline = \tagline 
  copyright = \copyright
}
}

