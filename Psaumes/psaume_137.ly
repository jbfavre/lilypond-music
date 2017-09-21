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


title = "Psaume 137"
subtitle = "21e dimanche ordinaire (année A)"
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
  \omit Staff.TimeSignature
  \cadenzaOn
  \key d \minor
}


commonLyrics = \lyricmode {
  Sei -- gneur, é -- ter -- nel est ton a -- mour:
  n’ar -- rê -- te pas l’œu -- vre de tes mains.
}


SopranoMusic = \relative c' {
  a'4 a2 a8 g c b a g a2 \breathe
  \tuplet 3/2 { a8 g a } f4 d8 d g b a2 \fermata
  \bar "|."
}

SopranoLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }


AltoMusic = \relative c' {
  f4 e2 f8 e a g f d cis2
}

AltoLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }

TenorMusic =  \relative c' {
  d4 cis2 d8 c f d d e e2
}

TenorLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }

BassMusic =  \relative c {
  d4 a2 d8 c f, g d' e a,2 \breathe
  
}

BassLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }


%%% Musique de la psalmodie

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
SopranoMusicB = \relative c'' {
  \tempo 2=100
  a\breve f1
  \tempo 2=30
  g4 b a \bar "||"
  \tempo 2=100
  a\breve c1
  \tempo 2=30
  b4 g a \bar "||"
  \tempo 2=100
  a\breve a1
  \tempo 2=30
  g4 f g \bar "||"
  \tempo 2=100
  f\breve d1
  \tempo 2=30
  f4 g a \bar "|."
}

SopranoMusicC = \relative c'' {
  \tempo 2=100
  a\breve f1
  \tempo 2=30
  g4 b a \bar "||"
  \tempo 2=100
  f\breve d1
  \tempo 2=30
  f4 g a \bar "|."
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

#define texteAntienne="Seigneur, éternel est ton amour: n’arrête pas l’œuvre de tes mains."

%{DEBUT-DU-TEXTE-DE-LA-PSALMODIE

De tout mon cœur, Seigne_u_r, je te rends grâce :
tu as entendu les par_o_les de ma bouche.
Je te chante en prés_e_nce des anges,
vers ton temple sacr_é_, je me prosterne.

Je rends grâce à ton nom pour ton amo_u_r et ta vérité,
car tu élèves, au-dessus de tout, ton n_o_m et ta parole.
Le jour où tu répond_i_s à mon appel,
tu fis grandir en mon _â_me la force.

Si haut que soit le Seigneur, il v_o_it le plus humble.
de loin, il reconna_î_t l’orgueilleux.
Seigneur, étern_e_l est ton amour :
n’arrête pas l’œ_u_vre de tes mains.

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
          \new Voice = "Soprano_psalmodie_B" { 
            \set Voice.shortVocalName = #"S."
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

