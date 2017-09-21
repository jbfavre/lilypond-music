% modèle 2.07 - 17/11/2016
% dernière modif : l'indice de difficulté ("1" = facile, "3" = difficile, ne pas oublier les guillemets)
% lorsque le psaume sera prêt à être publié avec Mada, il faudra :
% 	- enlever les espaces dans "+ ++"
%	- entrer la date du dimanche où le psaume doit être chanté, au format AAAA-MM-JJ.
%	- lancer Mada en tapant dans un terminal : 
%		~/psaume-du-dimanche-git/chanterprier/mada.py

%{
+++
date="2017-08-20"
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


title = "Psaume 66"
subtitle = "20e dimanche ordinaire (année A)"
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
  Que les peu -- ples, Dieu, Te ren -- dent grâ -- ce;
  qu'ils Te ren -- dent grâ -- ce tous en -- sem -- ble
}


SopranoMusic = \relative c' {
  f8 g a bes a4. a8 c b a4 a4 \breathe
  g8 g a bes a g f g a2 a2 \fermata
  \bar "|."
}

SopranoLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }


AltoMusic = \relative c' {
  d8 e f d c4. c8 e e d4 cis \breathe
  e8 e f d c bes cis e f2 e2 \fermata
  \bar "|."
}

AltoLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }

TenorMusic =  \relative c' {
  a8 c c bes a4. a8 c d f4 e \breathe
  cis8 cis d f c e e cis a2 a2 \fermata
  \bar "|."
}

TenorLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }

BassMusic =  \relative c {
  d8 c a d f4. f8 g gis a4 a \breathe
  a,8 a f bes f g a a d4 (cis8 b) cis2 \fermata
  \bar "|."
}

BassLyrics = \commonLyrics
%si paroles particulières : \lyricmode { je suis spé -- cial }


%%% Musique de la psalmodie

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
SopranoMusicB = \relative c'' {
  \tempo 2=100
  a\breve c1
  \tempo 2=30
  b4 \bar "||"
  \tempo 2=100
  b\breve c1
  \tempo 2=30
  a4 a \bar "||"
  \tempo 2=100
  b\breve g1
  \tempo 2=30
  c4 \bar "||"
  \tempo 2=100
  bes\breve g1
  \tempo 2=30
  f4 a \bar "|."
}

AltoMusicB = \relative c' {
  f\breve e1 d4 \bar "||"
  g\breve e1 d4 e4 \bar "||"
  g\breve e1 g4 \bar "||"
  d\breve e1 f4 f4 \bar "||"
}

TenorMusicB = 	\relative c' {
  a\breve g1 d'4 \bar "||"
  b\breve g1 a4 a4 \bar "||"
  g\breve b1 g4 \bar "||"
  bes\breve c1 a4 a4 \bar "||"
}


BassMusicB = \relative c {
  d\breve e1 g4 \bar "||"
  e\breve c1 f4 cis4 \bar "||"
  d\breve b1 c4 \bar "||"
  g'\breve c,1 c4 f4 \bar "||"
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

#define texteAntienne="Que les peuples, Dieu, Te rendent grâce; qu'ils Te rendent grâce tous ensemble"

%{DEBUT-DU-TEXTE-DE-LA-PSALMODIE

Que Dieu nous prenne en gr_â_ce et nous bénisse,
que ton visage s’illum_i_ne pour nous ;
et ton chemin sera conn_u_ sur la terre,
ton salut, parmi to_u_tes les nations.

Que les nations ch_a_ntent leur joie,
car tu gouvernes le m_o_nde avec justice ;
tu gouvernes les pe_u_ples avec droiture
sur la terre, tu condu_i_s les nations.

La terre a donn_é_ son fruit ;
Dieu, notre Die_u_, nous bénit.
Que Die_u_ nous bénisse,
et que la terre tout enti_è_re l’adore !

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
          \new Voice = "Ténor_psalmodie" { 
            \silence \SopranoMusic
            \voiceOne
            \cadenzaOn
            \debutPsalmodie
            %version visuelle
            \tag #'visuel \TenorMusicB
            %version midi
            \tag #'audio <<\TenorMusicB \\ \pisteTempoPsalmodie>>
          }
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

