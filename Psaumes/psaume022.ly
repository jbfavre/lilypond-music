\version "2.18.2" 
\language "english"

\include "common.ly"

\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1.5\cm
  bottom-margin = 0\cm
  system-system-spacing = 
      #'((padding . 5)
       (basic-distance . 10)
       (minimum-distance . 5)
       (stretchability . 10))
}


title = "Psaume 22"
subtitle = "4e dimanche de Carême - Lætare (année A)"
composer = "Jean Baptiste Favre"

\layout {
  ragged-right = ##f
}

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

#(define vspaceSousAntienne 0)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%         MUSIQUE À ÀDAPTER         %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



tDebut = {
  %\set Score.tempoHideNote = ##t
  \tempo "Tranquillement" 4.=50
}

global = {
  \time 2/4
  \key d \minor
  %\autoBeamOff
}


commonLyrics = \lyricmode { 
  Le Sei -- gneur est mon ber -- ger_:
  rien ne sau -- rait me man -- quer.
}


SopranoMusic = \relative c' {
   d8 e f4 (f8) f8 g g a2 c4 d8 c b4 a8 g a2 \fermata
   \bar "|."
}
SopranoLyrics = \commonLyrics

AltoMusic = \relative c' {
  bf8 cs d4 (d8) d d e f2 a4 f8 f8 g4 d8 e e2
}
AltoLyrics = \commonLyrics

TenorMusic =  \relative c' {
  f,8 a a4 bf4 bf8 c c4 d4 d4 c8 c d4 b4 cs2
}
TenorLyrics = \commonLyrics

BassMusic =  \relative c {
  bf8 a d (c) bf (a) g c f (e d c) bf (g) a c g (a) b e a2
}
BassLyrics = \commonLyrics


%%% Musique de la psalmodie

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
SopranoMusicB = \relative c'' {
}

AltoMusicB = \relative c'' {
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

#define texteAntienne=" "

VerseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    "Le Seigneur est" \markup {\concat { m \underline o n " " ber }} -- ger, "je ne" \markup {\concat { m \underline a nque " " de}} \markup {\concat { r \underline i en,}}
    \set stanza = #"1. "
    "Sur des" \markup {\concat { pr \underline é s }} d’her -- be \markup {\concat { fr \underline a îche, }} "il me" \markup {\concat { f \underline a it, }} re -- po -- ser.
  }
VerseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Il me mène vers les" \markup {\concat { e \underline a ux " " tran }} -- \markup {\concat { qu \underline i lles }} "et me" \markup {\concat { f \underline a it " " re }} -- vivre;
    \set stanza = #"2. "
    "il me conduit par le" \markup {\concat { j \underline u s}} -- te che -- \markup {\concat { m \underline i n}} "pour l’hon" -- \markup {\concat { n \underline e ur}} de son nom.
  }
VerseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Si je traverse les ra" -- \markup {\concat { v \underline i ns " " de " " la }} \markup {\concat { m \underline o rt,}} "je ne" \markup {\concat { cr \underline a ins " " aucun}} \markup {\concat { m \underline a l,}}
    \set stanza = #"3. "
    "car tu" \markup {\concat { \underline e s}} a -- vec \markup {\concat { m \underline o i:}} "ton bâton me" \markup {\concat { gu \underline i de " " et }} me ras -- sure.
  }
VerseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
    "Tu prépares la" \markup {\concat { t \underline a ble " " pour}} \markup {\concat { m \underline o i}} devant \markup {\concat { m \underline e s " " enne}} -- mis;
    \set stanza = #"4. "
    "tu répands le par" -- \markup {\concat { f \underline u m}} sur ma \markup {\concat { t\underline ê te,}} ma \markup {\concat { c \underline o upe " " est}}  dé -- bor -- dante.
  }
VerseFiveLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"5. "
    "Grâce et bon" -- \markup {\concat { h \underline e ur " " m’accom}} -- \markup {\concat { p \underline a gnent}} "tous les" \markup {\concat { j \underline o urs " " de " "ma }} \markup {\concat { v \underline i e;}}
    \set stanza = #"5. "
    "j’habiterai la mai" -- \markup {\concat { m \underline o n}} du Sei -- \markup {\concat { gn \underline e ur}} "pour la du" -- \markup {\concat { r \underline é e}} de mes jours.
  }
%%%%%%%% Remarques d'exécution %%%%%%%%
% pas incluses dans la partition, seulement dans le post de blog.

% au-dessus de la partition
%{DEBUT-DU-MARKDOWN-SUPERIEUR

<br>

Ce psaume a été mis en musique par [Olivier Bardot](http://www.stellamaris.fr/direction_musicale.php), 
que toute l'équipe de Psaume du dimanche remercie vivement pour cette création et pour son amitié.

FIN-DU-MARKDOWN-SUPERIEUR%}



% sous la partition
%{DEBUT-DU-MARKDOWN-INFERIEUR

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
      \new Lyrics \lyricsto "Soprano_psalmodie" { \VerseOneLyrics }
      \new Lyrics \lyricsto "Soprano_psalmodie" { \VerseTwoLyrics }
      \new Lyrics \lyricsto "Soprano_psalmodie" { \VerseThreeLyrics }
      \new Lyrics \lyricsto "Soprano_psalmodie" { \VerseFourLyrics }
      \new Lyrics \lyricsto "Soprano_psalmodie" { \VerseFiveLyrics }
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

\score {  \unfoldRepeats
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
}

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


