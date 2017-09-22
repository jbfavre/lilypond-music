\version "2.18.2"
\language "english"

\include "common.ly"

title = "Psaume 22"
subtitle = "4e dimanche de Carême - Lætare (année A)"
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
  \key d \minor
  %\autoBeamOff
}

antienneLyrics = \lyricmode {
  Le Sei -- gneur est mon ber -- ger_:
  rien ne sau -- rait me man -- quer.
}

sopranoAntienneMusic = \relative c' {
   d8 e f4 (f8) f8 g g a2
   c4 d8 c b4 a8 g a2 \fermata
   \bar "|."
}
SopranoLyrics = \antienneLyrics

altoAntienneMusic = \relative c' {
  d8 cs d4 (d8) d d e f2
  g4 f8 f8 d4 e8 d e2
}
AltoLyrics = \antienneLyrics

tenorAntienneMusic =  \relative c' {
  g8 a a4 bf4 bf8 c c2
  c4 bf8 a g4 g8 b cs2
}
TenorLyrics = \antienneLyrics

bassAntienneMusic =  \relative c {
  bf8 a d (c) bf (a) g c f2
  e4 d8 c b4 b8 e8 a2
}
BassLyrics = \antienneLyrics


% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
sopranoPsalmodieMusic = \relative c' {
  g'\breve a1 f2 \bar "||"
  f\breve g1 a2 \bar "||"
  a\breve c1 d2 \bar "||"
  c\breve b1 a4 g4 a2 \bar "|."
}

altoPsalmodieMusic = \relative c'' {
  d,\breve cs1 d2
  d\breve e1 f2
  f\breve g1 f2
  f\breve g1 e4 e4 e2
}

tenorPsalmodieMusic = 	\relative c' {
  g\breve e1 a2
  bf\breve c1 c2
  d\breve c1 bf2
  a\breve b1 g4 b4 cs2
}


bassPsalmodieMusic = \relative c {
  bf\breve a1 d2
  bf\breve g1 f'2
  d\breve e1 d2
  a\breve g1 b4 e4 a2
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

verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
    "Le Seigneur est" \markup {\concat { m \underline o n " " ber }} -- \markup {\concat { g \underline e r, }}
    "je ne" -- \markup {\concat { m \underline a nque " " de}} \markup {\concat { r \underline i en,}}
    \set stanza = #"1. "
    "Sur des" \markup {\concat { pr \underline é s " " d’herbe }} \markup {\concat { fr \underline a îche, }}
    "il me" \markup { \concat { f \underline a it }} re -- po -- ser.
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Il me mène vers les" \markup { \concat { e \underline a ux " " tran }} -- \markup {\concat { qu \underline i lles }}
    "et me" \markup {\concat { f \underline a it " " re }} -- vivre;
    \set stanza = #"2. "
    "il me conduit par le" "juste che" -- \markup {\concat { m \underline i n}}
    "pour l’hon" -- \markup {\concat { n \underline e ur}} de son nom.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Si je traverse les ra" -- \markup { \concat { v \underline i ns " " de " " la}} \markup {\concat { m \underline o rt,}}
    "je ne" \markup {\concat { cr \underline a ins " " aucun}} \markup {\concat { m \underline a l,}}
    \set stanza = #"3. "
    "car tu" \markup {\concat { \underline e s " " avec}} \markup {\concat { m \underline o i:}}
    "ton bâton me" \markup {\concat { gu \underline i de " " et }} me ras -- sure.
  }
verseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
    "Tu prépares la" \markup { \concat { t \underline a ble " " pour}} \markup {\concat { m \underline o i}}
    "devant mes" \markup {\concat { \underline e nne}} -- mis;
    \set stanza = #"4. "
    "tu répands le par" -- \markup {\concat { f \underline u m " " sur " " ma}} \markup {\concat { t\underline ê te,}}
    "ma cou" -- \markup {\concat { pe"_" \underline e st}}  dé -- bor -- dante.
  }
verseFiveLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"5. "
    "Grâce et bon" -- \markup { \concat { h \underline e ur " " m’accom}} -- \markup {\concat { p \underline a gnent}}
    "tous les" \markup {\concat { j \underline o urs " " de " "ma }} \markup {\concat { v \underline i e;}}
    \set stanza = #"5. "
    "j’habiterai la mai" -- \markup {\concat { s \underline o n " " du " " Sei}} -- \markup {\concat { gn \underline e ur}}
    "pour la du" -- \markup {\concat { r \underline é e}} de mes jours.
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
      \new Lyrics \lyricsto "sopranoPsalmodieVoice" { \verseFiveLyrics }
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


