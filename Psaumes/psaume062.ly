\version "2.18.2"
\language "english"

\include "common.ly"

#(define-public (bracket-stencils grob)
  (let ((lp (grob-interpret-markup grob (markup #:fontsize 10 #:translate (cons -0.9 -0.5) "( ")))
        (rp (grob-interpret-markup grob (markup #:fontsize 10 #:translate (cons -0.9 -0.5) " )"))))
    (list lp rp)))

bracketify = #(define-music-function (parser loc arg) (ly:music?)
   (_i "Tag @var{arg} to be parenthesized.")
#{
  \once \override ParenthesesItem.stencils = #bracket-stencils
  \parenthesize $arg
#})

title = "Psaume 62"
subtitle = "32ème dimanche du Temps Ordinaire — Année A"
composer = "Jean Baptiste Favre"

tRall = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70
}
tAcce = {
  \set Score.tempoHideNote = ##t
  \tempo 2=100
}

tDebut = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=50
}

global = {
  \time 2/4
  \key c \major
  %\autoBeamOff
}

antienneLyrics = \lyricmode {
  Mon â -- me~a soif de toi,
  Sei -- gneur, mon Dieu!
}

sopranoAntienneMusic = \relative c' {
  \partial 4 e4 g a b c b2 (b4) \breathe
  b4 d2 c2 b2 \fermata
  \bar "|."
}
SopranoLyrics = \antienneLyrics

altoAntienneMusic = \relative c' {
  \partial 4 b4 d c a' g g2 \breathe
  g4 (f) a2 e2 a4 (g)
}
AltoLyrics = \antienneLyrics

tenorAntienneMusic =  \relative c' {
  \partial 4 g4 b e f e e2 \breathe
  d4 (d) c2 c2 b2
}
TenorLyrics = \antienneLyrics

bassAntienneMusic =  \relative c {
  \partial 4 e4 e f d c e2 \breathe
  g4 (b) f2 a2 e2
}
BassLyrics = \antienneLyrics


% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
sopranoPsalmodieMusic = \relative c'' {
  %a\breve f1 g4 b a2 \bar "||"
  b\breve \bracketify a2 b1 c1 a2 \bar "||"
  a\breve g1 b2 \bar "||"
  b\breve d1 c2 \bar "||"
  c\breve b1 g4 a2 \bar "|."
}

altoPsalmodieMusic = \relative c' {
}

tenorPsalmodieMusic = 	\relative c' {
}

bassPsalmodieMusic = \relative c {
}

pianosopranoAntienneMusic = \sopranoAntienneMusic
pianosopranoPsalmodieMusic = \sopranoPsalmodieMusic
pianoaltoAntienneMusic = \altoAntienneMusic
pianoaltoPsalmodieMusic = \altoPsalmodieMusic
pianotenorAntienneMusic = \tenorAntienneMusic
pianotenorPsalmodieMusic = \tenorPsalmodieMusic
pianobassAntienneMusic = \bassAntienneMusic
pianobassPsalmodieMusic = \bassPsalmodieMusic

#define texteAntienne=" "
%{
%}
verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    \markup { \concat { Dieu," "tu" "es" "mon}} \markup { \concat { D \underline i eu,\super +}} "je te" \markup { \concat { ch \underline e rche" "dès}} l’aube:
    "mon âme a" "soif de" toi;
    "après toi lan" -- \markup { \concat { gu \underline i t" "ma}} chair,
    "terre a" -- \markup { \concat { r \underline i de, altérée,}} sans eau.
}
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Je t’ai contem" -- _ _ \markup { \concat { pl \underline é" "au" "sanctu}} -- aire,
    "j’ai vu ta" \markup { \concat { f \underline o rce" "et" "ta}} gloire.
    "Ton amour vaut" \markup { \concat { m \underline i eux" "que" "la}} vie:
    "tu seras la lou" -- \markup { \concat { \underline a nge" "de}} mes lèvres!
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Toute ma" -- _ _ \markup { \concat { v \underline i e" "je" "vais" "te" "bé}} -- nir,
    "lever les mains en invo" -- \markup { \concat { qu \underline a nt" "ton}} nom.
    "Comme par un fes" -- \markup { \concat { t \underline i n" "je" "serai" "rassa}} -- sié;
    "la joie sur les lèvres, je di" -- \markup { \concat { r \underline a i" "ta}} lou -- ange.
  }
verseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
    "Dans la nuit, je me sou" -- _ _ \markup { \concat { v \underline i ens" "de}} toi
    "et je reste des" \markup { \concat { h \underline e ures à" "te" "par}} -- ler.
    "Oui, tu es ve" -- \markup { \concat { n \underline u" "à" "mon" "se}} -- cours:
    "je crie de joie à" \markup { \concat { l’ \underline ombre" "de}} tes ailes.
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          AUTRES RÉGLAGES          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pisteTempoPsalmodie = \silence \sopranoPsalmodieMusic

partition = {
  <<
    \new ChoirStaff <<
      \new Staff = "Soprano" <<
        \set Staff.instrumentName = #"Soprano"
        \new Voice = "Sop" {
          \dynamicUp \global \tDebut \marqueAntienne \sopranoAntienneMusic
        }
        \new Lyrics \lyricsto "Sop" { \SopranoLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = #"Alto"
        \new Voice = "Alto" { \global \tDebut \marqueAntienne \altoAntienneMusic
        }
        \new Lyrics \lyricsto "Alto" { \AltoLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = #"Ténor"
        \new Voice = "Ten" { \clef "G_8" \global \tDebut \marqueAntienne \tenorAntienneMusic
        }
        \new Lyrics \lyricsto "Ten" { \TenorLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = #"Basse"
        \new Voice = "Bass" {
          \clef "bass" \global \tDebut \marqueAntienne \bassAntienneMusic
        }
        \new Lyrics \lyricsto "Bass" { \BassLyrics }
      >>

      % psalmodie = ChoirStaff à deux portées
      % pour que la psalmodie n'arrive qu'après mais sur de nouveaux staffs,
      % les staffs doivent ^etre déclarés à la mesure 1, puis remplis de silence tout le temps que dure la psalmodie
      % de la voix soprane ; les staffs vides sont ensuite masqués (y compris le premier).
      \new Staff = "SopranoAlto" \with { \remove Time_signature_engraver }
      {
        \set Staff.shortInstrumentName = \markup { \right-column { "S." "A." } }
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        <<
          \new Voice = "sopranoPsalmodieVoice" {
            \voiceOne { \silence \sopranoAntienneMusic }
            \cadenzaOn
            \debutPsalmodie
            \marquePsalmodie
            \tag #'visuel \sopranoPsalmodieMusic
            \tag #'audio <<\sopranoPsalmodieMusic \\ \pisteTempoPsalmodie>>
          }
          \new Voice = "altoPsalmodieVoice" {
            \voiceTwo { \silence \sopranoAntienneMusic }
            \cadenzaOn
            %\debutPsalmodie
            %\marquePsalmodie
            \tag #'visuel \altoPsalmodieMusic
            \tag #'audio <<\altoPsalmodieMusic \\ \pisteTempoPsalmodie>>
          }
        >>
      }
      \new Lyrics \lyricsto "sopranoPsalmodieVoice" { \verseOneLyrics }
      \new Lyrics \lyricsto "sopranoPsalmodieVoice" { \verseTwoLyrics }
      \new Lyrics \lyricsto "sopranoPsalmodieVoice" { \verseThreeLyrics }
      \new Lyrics \lyricsto "sopranoPsalmodieVoice" { \verseFourLyrics }
      \new Staff = "TenorBass" \with { \remove Time_signature_engraver }
      {
        \set Staff.shortInstrumentName = \markup { \right-column { "T." "B." } }
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        <<
          \new Voice = "tenorPsalmodieVoice" {
            \voiceThree { \silence \sopranoAntienneMusic }
            \cadenzaOn
            %\debutPsalmodie
            %\marquePsalmodie
            \tag #'visuel \tenorPsalmodieMusic
            \tag #'audio <<\tenorPsalmodieMusic \\ \pisteTempoPsalmodie>>
          }
          \new Voice = "bassPsalmodieVoice" {
            \voiceFour { \silence \sopranoAntienneMusic }
            \cadenzaOn
            %\debutPsalmodie
            %\marquePsalmodie
            \tag #'visuel \bassPsalmodieMusic
            %version midi
            \tag #'audio <<\bassPsalmodieMusic \\ \pisteTempoPsalmodie>>
          }
        >>
      }
    >>
    \new PianoStaff \with { \pianoProperties }
    <<
      \set PianoStaff.instrumentName = #"Orgue"
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \global \clef treble
        \partcombine
        << \keepWithTag #'visuel {\pianosopranoAntienneMusic } >>
        << \keepWithTag #'visuel {\pianoaltoAntienneMusic } >>
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \global \clef bass
        \partcombine
        << \keepWithTag #'visuel {\pianotenorAntienneMusic } >>
        << \keepWithTag #'visuel {\pianobassAntienneMusic } >>
      >>
    >>
  >>
}

%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
\layout {
  ragged-right = ##f
}

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
  %%%%%%%%%%%%%%%% VOIX GROUPÉES %%%%%%%%%%%%%%%%%
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
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff
      <<
        \new Staff
        <<
          \global \clef "treble"
          \new Voice = "Soprano"
          <<
            \voiceOne { \tDebut \sopranoAntienneMusic \debutPsalmodie << \sopranoPsalmodieMusic \\ \pisteTempoPsalmodie >> }
          >>
        >>
      >>
    >>
    \midi {}
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff
      <<
        \new Staff
        <<
          \global \clef "treble"
          \new Voice = "Alti"
          <<
            \voiceOne { \tDebut \altoAntienneMusic \debutPsalmodie << \altoPsalmodieMusic \\ \pisteTempoPsalmodie >> }
          >>
        >>
      >>
    >>
    \midi {}
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff
      <<
        \new Staff
        <<
          \global \clef "treble"
          \new Voice = "Ténor"
          <<
            \voiceOne { \tDebut \tenorAntienneMusic \debutPsalmodie << \tenorPsalmodieMusic \\ \pisteTempoPsalmodie >> }
          >>
        >>
      >>
    >>
    \midi {}
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff
      <<
        \new Staff
        <<
          \global \clef "treble"
          \new Voice = "Basse"
          <<
            \voiceOne { \tDebut \bassAntienneMusic \debutPsalmodie << \bassPsalmodieMusic \\ \pisteTempoPsalmodie >> }
          >>
        >>
      >>
    >>
    \midi {}
  }
}


