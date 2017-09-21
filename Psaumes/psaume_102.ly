% modèle 2.07 - 17/11/2016
% dernière modif : l'indice de difficulté ("1" = facile, "3" = difficile, ne pas oublier les guillemets)
% lorsque le psaume sera prêt à être publié avec Mada, il faudra :
% 	- enlever les espaces dans "+ ++"
%	- entrer la date du dimanche où le psaume doit être chanté, au format AAAA-MM-JJ.
%	- lancer Mada en tapant dans un terminal : 
%		~/psaume-du-dimanche-git/chanterprier/mada.py

%{
+++
date="2017-09-17"
difficulte="2"
auteurs="Jean Baptiste"
+++
%}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%      RÉGLAGES PRÉLIMINAIRES       %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.18.2"

\include "../scripts/reglagesGraphiques2.ly"
%\pointAndClickOff

\paper {
  % les deux variables suivantes permettent parfois de serrer le contenu
  % sur une seule page :
    %system-count = #2
    %page-count=#1
  system-system-spacing = 
      #'((padding . 4)
       (basic-distance . 10)
       (minimum-distance . 4)
       (stretchability . 10))
}


title = "Psaume 102"
subtitle = "24e dimanche ordinaire (année A)"
composer = "Jean Baptiste Favre"

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
  \time 2/4
  \key f \major
}


commonLyrics = \lyricmode {
  Le Sei -- gneur est ten -- dresse et pi -- tié,
  lent à la co -- lère et plein d’a -- mour.
}


SopranoMusic = \relative c' {
  \partial 4
  f8 g a4 g8 a c4 bes8 a g2 \breathe
  a8 a g a f d f g a2 \fermata
  \bar "|."
}

SopranoLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }


AltoMusic = \relative c' {
  \partial 4
  c8 e d4 bes8 c8 d4 d8 c e2 \breathe
  e8 e cis e a f d e c2 \fermata
}

AltoLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }

TenorMusic =  \relative c' {
  \partial 4
  a8 g f4 f8 e8 f4 g8 a8 g2 \breathe
  g8 g a g f a bes bes a2 \fermata
}

TenorLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }

BassMusic =  \relative c {
  \partial 4
  f8 e d4 d8 c bes4 d8 f c2 \breathe
  cis8 cis a cis d c bes c f2 \fermata
  \bar "|."
}

BassLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }


%%% Musique de la psalmodie

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
SopranoMusicB = \relative c'' {
  a\breve c4 \bar "||"
  b\breve g4 a \bar "||"
  a\breve g1 a4 f \bar "||"
  c'\breve bes1 g4 a \bar "|."
}

AltoMusicB = \relative c' {
  c\breve e4 \bar "||"
  d\breve d4 f \bar "||"
  e\breve cis1 e4 d \bar "||"
  d\breve e1 e4 c \bar "|."
}

TenorMusicB = 	\relative c' {
}


BassMusicB = \relative c {
  f,\breve a4 \bar "||"
  g\breve b4 c \bar "||"
  cis\breve a1 cis4 d \bar "||"
  bes\breve c1 e4 f \bar "|."
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

#define texteAntienne="Le Seigneur est tendresse et pitié, lent à la colère et plein d’amour."

%{DEBUT-DU-TEXTE-DE-LA-PSALMODIE

Bénis le Seigneur, ô mon âme,
bénis son nom très s_a_int, tout mon être !
Bénis le Seign_e_ur, ô mon âme,
n’oublie auc_u_n de ses bienfaits !

Car il pardonne toutes tes offenses
et te guérit de t_o_ute maladie ;
il réclame ta v_i_e à la tombe
et te couronne d’am_o_ur et de tendresse.

Il n’est pas pour toujours en procès,
ne maintient pas sans f_i_n ses reproches ;
il n’agit pas envers n_o_us selon nos fautes,
ne nous rend pas sel_o_n nos offenses.

Comme le ciel domine la terre,
fort est son am_o_ur pour qui le craint ;
aussi loin qu’est l’ori_e_nt de l’occident,
il met loin de n_o_us nos péchés.

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
        \set Staff.instrumentName = #"Soprano"
        \new Voice = "Sop" {
          \dynamicUp
          \global \tDebut \marqueAntienne
          \SopranoMusic 
        }
        \new Lyrics \lyricsto "Sop" { \SopranoLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = #"Alto"
        \new Voice = "Alto" {
          \global \tDebut \marqueAntienne
          \AltoMusic
        }
        \new Lyrics \lyricsto "Alto" { \AltoLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = #"Ténor"
        \new Voice = "Ten" {
          \clef "G_8"
          \global \tDebut \marqueAntienne
          \TenorMusic 
        }
        \new Lyrics \lyricsto "Ten" { \TenorLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = #"Basse"
        \new Voice = "Bass" {
          \clef "bass" \dynamicDown
          \global \tDebut \marqueAntienne
          \BassMusic \debutPsalmodie
        }
        \new Lyrics \lyricsto "Bass" { \BassLyrics }
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
        \set Staff.shortInstrumentName = \markup { \right-column { "S." "A." } }
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        << 
          \new Voice = "Soprano_psalmodie" { 
            \set Voice.shortVocalName = #"S."
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
          \new Voice = "Alto_psalmodie" { 
            { 
              \silence \SopranoMusic 
            }
            \voiceTwo
            \cadenzaOn
            %\debutPsalmodie
            %version visuelle
            \tag #'visuel \AltoMusicB
            %version midi
            \tag #'audio <<\AltoMusicB \\ \pisteTempoPsalmodie>>
          }
        >>
      }
      \new Staff = "TB" 
      \with {
        \remove Time_signature_engraver
      }
      { 
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.shortInstrumentName = \markup { \right-column { "T." "B." } }
        \global
        \clef bass
        << 
          %{ \new Voice = "Ténor_psalmodie" { 
            \silence \SopranoMusic
            \voiceOne
            \cadenzaOn
            \debutPsalmodie
            %version visuelle
            \tag #'visuel \TenorMusicB
            %version midi
            \tag #'audio <<\TenorMusicB \\ \pisteTempoPsalmodie>>
          } %}
          \new Voice = "Basse_psalmodie" { 
            \silence \SopranoMusic
            \voiceTwo
            \cadenzaOn
            \debutPsalmodie
            %version visuelle
            \tag #'visuel \BassMusicB
            %version midi
            \tag #'audio <<\BassMusicB \\ \pisteTempoPsalmodie>>
          }
        >>
      }
    >>
    \tag #'visuel { 
      \new PianoStaff \with { \pianoProperties } 
      <<
        \set PianoStaff.instrumentName = #"Orgue"
        \new Staff <<
          \set Staff.printPartCombineTexts = ##f
          
          \partcombine
          << \global 
             \keepWithTag #'visuel {\pianoSopranoMusic }
          >>
          << 
            \global 
            \keepWithTag #'visuel {\pianoAltoMusic }
          >>
        >>
        
        \new Staff <<
          \clef bass
          \set Staff.printPartCombineTexts = ##f
          
          \partcombine
          <<
            \global 
            \keepWithTag #'visuel {\pianoTenorMusic }
          >>
          << 
            \global 
            \keepWithTag #'visuel {\pianoBassMusic }
          >>
        >>
      >>
    }
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
\include "../scripts/accrocheParoles.ly"

% header du bookpart
\header {    
  tagline = \tagline 
  copyright = \copyright
}
}

