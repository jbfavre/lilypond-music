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


title = "Psaume 103"
subtitle = "Pentecôte"
composer = "Magnificat, juin 2017"

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
  \key ees \major
}


commonLyrics = \lyricmode {
  Ô Sei -- gneur, en -- voie ton Es -- prit
  qui re -- nou -- vel -- le la fa -- ce de la ter -- re!
}


SopranoMusic = \relative c' {
  ees8 ees d4. d8 f4 f8 f ees4.  \breathe
  ees8 f g aes4 aes8 aes c c bes aes bes4 bes \fermata
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
  g\breve bes1
  \tempo 2=30
  ees,4 \bar "||"
  \tempo 2=100
  ees\breve aes
  \tempo 2=30
  f4 \bar "||"
  \tempo 2=100
  g\breve bes1
  \tempo 2=30
  c4 \bar "||"
  \tempo 2=100
  bes\breve a1
  \tempo 2=30
  g4 \bar "||"
}

SopranoMusicC = \relative c'' {
  \tempo 2=100
  g\breve bes1
  \tempo 2=30
  f4 \bar "||"
  \tempo 2=100
  ees\breve aes
  \tempo 2=30
  f4 \bar "||"
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

#define texteAntienne="Ô Seigneur, envoie ton Esprit qui renouvelle la face de la terre !"

%{DEBUT-DU-TEXTE-DE-LA-PSALMODIE

Bénis le Seigne_u_r, ô mon âme ;
Seigneur mon Die_u_, tu es si grand !
Quelle profusion dans tes œ_u_vres, Seigneur !
la terre s’empl_i_t de tes biens.

Tu reprends leur so_u_ffle, ils expirent
et reto_u_rnent à leur poussière.
Tu envoies ton so_u_ffle : ils sont créés ;
tu renouvelles la f_a_ce de la terre.

Gloire au Seigne_u_r à tout jamais !
Que Dieu se réjou_i_sse en ses œuvres !
Que mon poème lui s_o_it agréable ;
moi, je me réjou_i_s dans le Seigneur.

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
            \marquePsalmodieA
            %version visuelle
            \tag #'visuel \SopranoMusicB
            %version midi
            \tag #'audio <<\SopranoMusicB \\ \pisteTempoPsalmodie>>
          }
        >>
      }
      \new Staff = "SopranoB" 
      \with {
        \remove Time_signature_engraver
      }
      { 
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        << 
          \new Voice = "Soprano_psalmodie_b" { 
            \voiceOne
            { 
              \silence \SopranoMusic 
              \silence \SopranoMusicB 
            }
            \cadenzaOn
            \debutPsalmodie
            \marquePsalmodieB
            %version visuelle
            \tag #'visuel \SopranoMusicC
            %version midi
            \tag #'audio <<\SopranoMusicC \\ \pisteTempoPsalmodie>>
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
\include "../scripts/accrocheParoles.ly"

% header du bookpart
\header {    
  tagline = \tagline 
  copyright = \copyright
}
}

