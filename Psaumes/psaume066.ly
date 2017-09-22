\version "2.18.2"
\language "english"

\include "common.ly"

title = "Psaume 66"
subtitle = "20e dimanche ordinaire (année A)"
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
  \omit Staff.TimeSignature
  \cadenzaOn
  \key d \minor
  %\autoBeamOff
}

antienneLyrics = \lyricmode {
  Que les peu -- ples, Dieu, Te ren -- dent grâ -- ce;
  qu'ils Te ren -- dent grâ -- ce tous en -- sem -- ble
}

sopranoAntienneMusic = \relative c' {
  f8 g a bf a4. a8 c b a4 a4 \breathe
  g8 g a bf a g f g a2 a2 \fermata
  \bar "|."
}
SopranoLyrics = \antienneLyrics

altoAntienneMusic = \relative c' {
  d8 e f d c4. c8 e e d4 cs \breathe
  e8 e f d c bf cs e f2 e2 \fermata
}
AltoLyrics = \antienneLyrics

tenorAntienneMusic =  \relative c' {
  a8 c c bf a4. a8 c d f4 e \breathe
  cs8 cs d f c e e cs a2 a2 \fermata
}
TenorLyrics = \antienneLyrics

bassAntienneMusic =  \relative c {
  d8 c a d f4. f8 g gs a4 a \breathe
  a,8 a f bf f g a a d4 (cs8 b) cs2 \fermata
}
BassLyrics = \antienneLyrics


% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall
sopranoPsalmodieMusic = \relative c'' {
  a\breve c1 b2 \bar "||"
  b\breve c1 a4 a2 \bar "||"
  b\breve g1 c2 \bar "||"
  bf\breve g1 f4 a2 \bar "|."
}

altoPsalmodieMusic = \relative c' {
  f\breve e1 d2
  g\breve e1 d4 e2
  g\breve e1 g2
  d\breve e1 f4 f2
}

tenorPsalmodieMusic = 	\relative c' {
  a\breve g1 d'2
  b\breve g1 a4 a2
  g\breve b1 g2
  bf\breve c1 a4 a2
}


bassPsalmodieMusic = \relative c {
  d\breve e1 g2
  e\breve c1 f4 cs2
  d\breve b1 c2
  g'\breve c,1 c4 f2
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
    "Que Dieu nous prenne en" \markup {\concat { gr \underline â ce " " et " " nous " " bé}} -- nisse,
    "que ton visage s’illu" -- \markup {\concat { m \underline i ne}} pour nous;
    \set stanza = #"1. "
    "et ton chemin sera con" -- \markup {\concat { n \underline u " " sur " " la}} terre,
    "ton salut, parmi" \markup {\concat { to \underline u tes " " les}} na -- tions.
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
    "Que les nations" \markup {\concat { ch \underline a ntent " " leur}} joie,
    "car tu gouvernes le" \markup {\concat { m \underline o nde " " avec}} jus -- tice;
    \set stanza = #"2. "
    "tu gouvernes les" \markup {\concat { pe \underline u ples " " avec " " droi}} -- ture
    "sur la terre, tu con" -- \markup {\concat { du \underline i s " " les}} na -- tions.
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
    "La terre a don" -- \markup {\concat { n \underline é " " son}} fruit;
    "Dieu, notre" \markup {\concat { Die \underline u , " " nous}} bé -- nit.
    \set stanza = #"3. "
    Que \markup {\concat { Die \underline u " " nous " " bé}} -- nisse,
    "et que la terre tout en" -- \markup {\concat { ti \underline è re}} l’a -- dore!
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


