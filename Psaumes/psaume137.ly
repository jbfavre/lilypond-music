\version "2.18.2"
\language "english"

\include "common.ly"

title = "Psaume 137"
subtitle = "21e dimanche ordinaire (année A)"
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
  Sei -- gneur, é -- ter -- nel est ton a -- mour:
  n’ar -- rê -- te pas l’œu -- vre de tes mains.
}

sopranoAntienneMusic = \relative c' {
  a'4 a2 \breathe a8 g c b a g a2 \breathe
  \tuplet 3/2 { a8 g a } f4 d8 d g b a2 \fermata
  \bar "|."
}
SopranoLyrics = \antienneLyrics

altoAntienneMusic = \relative c' {
  e4 f2 \breathe e8 e8 g8 f8 d8 e8 e2 \breathe
  e4 d4 bf8 bf c e c2 \fermata
}
AltoLyrics = \antienneLyrics

tenorAntienneMusic =  \relative c' {
  cs4 d2 \breathe d8 d e d b b cs2 \breathe
  cs4 bf4 g8 g  bf g a2 \fermata
}
TenorLyrics = \antienneLyrics

bassAntienneMusic =  \relative c {
  a4 d2 b8 b c d e e a,2 \breathe
  a4 bf4 g'8 f e c f,2 \fermata
}
BassLyrics = \antienneLyrics


% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
sopranoPsalmodieMusic = \relative c'' {
  a\breve f1 g4 b a2 \bar "||"
  a\breve c1 b4 g a2 \bar "||"
  a\breve a1 g4 f g2 \bar "||"
  f\breve d1 f4 g a2 \bar "|."
}

altoPsalmodieMusic = \relative c' {
}

tenorPsalmodieMusic = 	\relative c' {
}

bassPsalmodieMusic = \relative c {
}

sopranoPsalmodieBMusic = \relative c'' {
  a\breve f1 g4 b a2 \bar "||"
  f\breve d1 f4 g a2 \bar "|."
}

altoPsalmodieBMusic = \relative c'' {
}

tenorPsalmodieBMusic = 	\relative c' {
}

bassPsalmodieBMusic = \relative c {
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
    "De tout mon cœur, Sei" -- \markup { \concat { gn \underline e ur, " " je}} te rends grâce:
    "tu as enten" -- \markup { \concat { d \underline u " " les " " paroles}} de ma bouche.
}
verseOneLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Je te" \markup { \concat {ch \underline a nte " " en " " présenc }} -- e des anges,
    "vers ton temple sacr" -- \markup { \concat { \underline é , " " je}} me pros -- terne.
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Je rends grâce à ton nom pour ton a" -- \markup { \concat { m \underline o ur " " et " " ta}} vé -- ri -- té,
    "car tu élèves, au-dessus de" \markup { \concat { t \underline o ut, " " ton " " nom " " et}} ta pa -- role.
  }
verseTwoLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    Le \markup { \concat { j \underline o ur " " où " " tu " " répondis " " à}} mon ap -- pel,
    "tu fis grandir en mon" \markup { \concat { \underline â}} -- me la force.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    "Si haut que soit le Sei" -- \markup { \concat { gn \underline e ur, " " il " " voit}} le plus humble.
    de \markup { \concat { l\underline o in, " " il " " reconnaît}} l’or -- gueil -- leux.
  }
verseThreeLyricsPartTwo =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    Seigneur, \markup { \concat { \underline é ternel " " est}} ton a -- mour:
    n’arrête \markup { \concat { p \underline a s " " l’œuvre}} de tes mains.
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
      \new Lyrics \lyricsto "sopranoPsalmodieVoice" {
        \set stanza = #"1. " \verseOneLyrics
        \set stanza = #"1. " \verseOneLyricsPartTwo
      }
      \new Lyrics \lyricsto "sopranoPsalmodieVoice" {
        \set stanza = #"2. " \verseTwoLyrics
        \set stanza = #"2. " \verseTwoLyricsPartTwo
      }
      \new Lyrics \lyricsto "sopranoPsalmodieVoice" {
        \set stanza = #"3. " \verseThreeLyrics
        \set stanza = #"3. " \verseThreeLyricsPartTwo
      }
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
      \new Staff = "SopranoB" 
      \with {
        \remove Time_signature_engraver
      }
      { 
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        << 
          \new Voice = "Soprano_psalmodie_B" { 
            \voiceOne { \silence \sopranoAntienneMusic \silence \sopranoPsalmodieMusic }
            \cadenzaOn
            \debutPsalmodie
            \marquePsalmodieB
            \tag #'visuel \sopranoPsalmodieBMusic
            \tag #'audio <<\sopranoPsalmodieBMusic \\ \pisteTempoPsalmodie>>
          }
        >>
      }
      \new Lyrics \lyricsto "Soprano_psalmodie_B" { \set stanza = #"1. " \verseOneLyrics }
      \new Lyrics \lyricsto "Soprano_psalmodie_B" { \verseOneLyricsPartTwo }
      \new Lyrics \lyricsto "Soprano_psalmodie_B" { \set stanza = #"2. " \verseTwoLyrics }
      \new Lyrics \lyricsto "Soprano_psalmodie_B" { \verseTwoLyricsPartTwo }
      \new Lyrics \lyricsto "Soprano_psalmodie_B" { \set stanza = #"3. " \verseThreeLyrics }
      \new Lyrics \lyricsto "Soprano_psalmodie_B" { \verseThreeLyricsPartTwo }
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


