\version "2.18.2"
\language "english"

\include "common.ly"

title = "Psaume 102"
subtitle = "24e dimanche ordinaire (année A)"
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
  \key f \major
  \time 2/4
  %\autoBeamOff
}

antienneLyrics = \lyricmode {
  Le Sei -- gneur est ten -- dresse et pi -- tié,
  lent à la co -- lère et plein d’a -- mour.
}

sopranoAntienneMusic = \relative c' {
  \partial 4
  f8 g a4 g8 a c4 bf8 a g2 \breathe
  a8 a g a f d f g a2 \fermata
  \bar "|."
}
SopranoLyrics = \antienneLyrics

altoAntienneMusic = \relative c' {
  \partial 4
  c8 c d4 bf8 c8 d4 d8 c e2 \breathe
  e8 e cs e a f d e c2 \fermata
  \bar "|."
}
AltoLyrics = \antienneLyrics

tenorAntienneMusic =  \relative c' {
  \partial 4
  a8 g f4 f8 e8 f4 g8 a8 g2 \breathe
  g8 g a g f a bf bf a2 \fermata
  \bar "|."
}
TenorLyrics = \antienneLyrics

bassAntienneMusic =  \relative c {
  \partial 4
  f8 e d4 d8 c bf4 d8 f c2 \breathe
  cs8 cs a cs d c bf c f2 \fermata
  \bar "|."
}
BassLyrics = \antienneLyrics


% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
sopranoPsalmodieMusic = \relative c'' {
  a\breve c2 \bar "||"
  b\breve g1 a2 \bar "||"
  a\breve g1 a4 f2 \bar "||"
  c'\breve bf1 g4 a2 \bar "|."
}

altoPsalmodieMusic = \relative c' {
}

tenorPsalmodieMusic = 	\relative c' {
}


bassPsalmodieMusic = \relative c {
  f,\breve a2
  g\breve b1 c2
  cs\breve a1 cs4 d2
  bf\breve c1 e4 f2
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
    "Bénis le Seigneur, ô mon" âme,
    "bénis son nom très" \markup { \concat { s \underline a int, " " tout " " mon}} être!
    \set stanza = #"1. "
    "Bénis le Sei" -- \markup { \concat {gn \underline e ur, " " ô}} mon âme,
    "n’oublie au" -- \markup { \concat { c \underline u n " " de " " ses}} bien -- faits!
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Car il pardonne toutes tes of" -- fenses
    "et te guérit de" \markup { \concat{ t \underline o ute " " mala}} -- die;
    \set stanza = #"2. "
    "il réclame ta" \markup { \concat { v \underline i e " " à " " la}} -- tom -- be
    "et te couronne" \markup { \concat {d’am \underline o ur " " et " " de}} tend -- resse.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "Il n’est pas pour toujours en pro" -- cès,
    "ne maintient pas sans" \markup { \concat { f \underline i n " " ses " " re}} -- proches;
    \set stanza = #"3. "
    "il n’agit pas envers" \markup { \concat { n \underline o us " " selon}} nos fautes,
    "ne nous rend pas se" -- \markup { \concat { l \underline o n " " nos}} of -- fenses.
  }
verseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
    "Comme le ciel domine la" terre,
    "fort est son a" -- \markup { \concat { m \underline o ur " " pour " " qui " " le}} craint;
    \set stanza = #"4. "
    "aussi loin qu’est l'o" -- \markup { \concat { r \underline i ent " " de " " l’oc}} -- ci -- dent,
    "il met loin de" \markup { \concat { n \underline o us " " nos}} pé -- chés.
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