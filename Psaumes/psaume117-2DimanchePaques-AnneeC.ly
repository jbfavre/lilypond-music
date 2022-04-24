\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=60
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

scoreHeader = \header {
  title = "Psaume 117"
  subtitle = \markup { \column { "2ème Dimanche de Pâques" "Année C" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, avril 2022"
}

global = {
  \key d \major
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
  \partial 4
  s4 s2*7 \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  \partial 4 d8 d a'4 a8 g a4 b8 cs d2 r4 b8 cs d4. cs8 bf4 a a2
  }

antiphonMusicAlto = \relative c' {
  d8 d  fs2 e fs r4 fs8 a b4. g8 g4 g fs2
  }

antiphonMusicTenor =  \relative c' {
  d8 d d2 cs b r4 d8 e d4. e8 d4 cs d2
  }

antiphonMusicBass =  \relative c {
  d8 d d2 a b r4 b'8 a g4. g8 g4 a d,2
  }

antiphonLyrics = \lyricmode {
  Ren -- dez grâce au Sei -- gneur&nbsp;: il est bon&nbsp;!
  É -- ter -- nel est son a -- mour.
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseStropheRythm = {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|." \break
}
verseRythm = {
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|."
}
verseStropheMusicSoprano = \relative c'' {
  s\breve s1 s4
  s\breve s1 s4
  s\breve s1 s4
  s\breve s1 s4
  }
verseMusicSoprano = \relative c'' {
  s\breve s1 s4
  s\breve s1 s4
  }

verseStropheMusicAlto = \relative c' {
  s\breve s1 s4
  s\breve s1 s4
  s\breve s1 s4
  s\breve s1 s4
  }
verseMusicAlto = \relative c' {
  s\breve s1 s4
  s\breve s1 s4
  }

verseStropheMusicTenor = \relative c' {
  s\breve s1 s4
  s\breve s1 s4
  s\breve s1 s4
  s\breve s1 s4
  }
verseMusicTenor = \relative c' {
  s\breve s1 s4
  s\breve s1 s4
  }

verseStropheMusicBass = \relative c {
  s\breve s1 s4
  s\breve s1 s4
  s\breve s1 s4
  s\breve s1 s4
  }
verseMusicBass = \relative c {
  s\breve s1 s4
  s\breve s1 s4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \column {
        \concat { \typewriter "1. " "Oui, que le d" \underline i "se Israël&nbsp;:"}
        \concat { \typewriter "   " "Étern" \underline e "l est son amour&nbsp;!"}
        \concat { \typewriter "   " "Oui, que le dise la mais" \underline o "n d’Aaron&nbsp;:"}
        \concat { \typewriter "   " "Étern" \underline e "l est son amour&nbsp;!"}
        \concat { \typewriter "   " "Qu’ils le disent, ceux qui cr" \underline a "ignent le Seigneur&nbsp;:"}
        \concat { \typewriter "   " "Étern" \underline e "l est son amour&nbsp;!"}
      }
      \vspace #1
      \column {
        \concat { \typewriter "2. " "La pierre qu’ont rejet" \underline é "e les bâtisseurs"}
        \concat { \typewriter "   " "est deven" \underline u "e la pierre d’angle&nbsp;:"}
        \concat { \typewriter "   " "c’est là l’" \underline œ "uvre du Seigneur,"}
        \concat { \typewriter "   " "la merv" \underline e "ille devant nos yeux."}
        \concat { \typewriter "   " "Voici le jour que f" \underline i "t le Seigneur,"}
        \concat { \typewriter "   " "qu’il soit pour nous jour de f" \underline ê "te et de joie&nbsp;!"}
      }
    }
    \vspace #2
    \fill-line {
      \column {
        \concat { \typewriter "3. " "Donne, Seigneur, d" \underline o "nne le salut&nbsp;!"}
        \concat { \typewriter "   " "Donne, Seigneur, d" \underline o "nne la victoire&nbsp;!"}
        \concat { \typewriter "   " "Béni soit au nom du Seign" \underline e "ur celui qui vient&nbsp;!"}
        \concat { \typewriter "   " "De la maison du Seign" \underline e "ur, nous vous bénissons&nbsp;!"}
        \concat { \typewriter "   " "Dieu, le Seign" \underline e "ur, nous illumine."}
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
partition = {
  <<
    % Antienne à 4 voix mixtes
    %\include "../libs/layouts/commonAntiphonFourVoices.ily"
    \new ChoirStaff = "Antophon4Voices" <<
      \new Staff = "AntiphonSopranoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Soliste"
        \clef "treble"
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonSoprano" { \global \antiphonMusicSoprano\fermata}
        \new Lyrics \lyricsto "antiphonSoprano" { \antiphonLyricsSoprano }
      >>
      %{\new Staff = "AntiphonAltoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Alto"
        \clef "treble"
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonAlto" { \global \antiphonMusicAlto\fermata }
        \new Lyrics \lyricsto "antiphonAlto" { \antiphonLyricsAlto }
      >>
      \new Staff = "AntiphonTenorStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Ténor"
        \clef "treble_8"
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonTenor" { \global \antiphonMusicTenor\fermata }
        \new Lyrics \lyricsto "antiphonTenor" { \antiphonLyricsTenor }
      >>
      \new Staff  = "AntiphonBassStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Basse"
        \clef "bass"
        \new Dynamics \antiphonRythm
        \new Voice = "AntiphonBass" { \global \antiphonMusicBass\fermata }
        \new Lyrics \lyricsto "AntiphonBass" { \antiphonLyricsBass }
      >>%}
    >>
    %\include "../libs/layouts/commonPiano.ily"
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = #"Orgue"
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef treble
        \new Voice = "soprani" {\global \voiceOne \antiphonMusicSoprano\fermata }
        \new Voice = "alti" {\global \voiceTwo \antiphonMusicAlto\fermata }
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef bass
        \new Voice = "tenors" {\global \voiceThree \antiphonMusicTenor\fermata }
        \new Voice = "bass" {\global \voiceFour \antiphonMusicBass\fermata }
      >>
    >>
    % Psalmodie à 4 voix mixtes
    %\include "../libs/layouts/commonVerseFourVoices.ily"
    \new ChoirStaff = "versePsalmody"
    <<
      \new Staff = "verseSopranoAlto" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm \verseRythm}
        \new Voice = "verseSoprano" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicSoprano \verseMusicSoprano } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicAlto \verseMusicAlto } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm \verseRythm}
        \new Voice = "verseTenor" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicTenor \verseMusicTenor } >>
        \new Voice = "verseBass" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicBass \verseMusicBass } >>
      >>
    >>
  >>
}
%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
% PDF output
\paper {
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  markup-system-spacing = #'((basic-distance . 10)
     (minimum-distance . 10)
     (padding . 5)
     (stretchability . 5))
 system-system-spacing = #'((basic-distance . 5)
     (minimum-distance . 5)
     (padding . 1)
     (stretchability . 5))
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Latin Modern Roman"
     #:sans "Cantarell"
    ))
  #(include-special-characters)
  tagline = ##f
  copyright = ##f
  scoreTitleMarkup = \markup \columns {
    \fill-line {
      \column {
        \line {
          \left-column {
            \fontsize #8 \sans \fromproperty #'header:title
            \fontsize #1 \typewriter \fromproperty #'header:subtitle
          }
        }
      }
      \column {
        \line {
          \fontsize #-1
          \left-column {
            \line { \concat { \typewriter "Texte&nbsp;: " \sans \fromproperty #'header:poet \bold " " } }
            \line { \concat { \typewriter "Musique&nbsp;: " \sans \fromproperty #'header:composer \bold " " } }
            \typewriter \italic \fromproperty #'header:date
          }
        }
      }
    }
  }
}

#(set-global-staff-size 18)
\score {
  \partition
  \layout {
      ragged-last = ##f
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
  \scoreHeader
}
\verseLyrics

% Midi output
partitionStrophe = {
      \new PianoStaff = "antiphonMusic"
      <<
        \new Staff <<
          \global \clef treble
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
          \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
        >>
        \new Staff <<
          \global \clef bass
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicTenor" \antiphonMusicTenor
          \new Voice = "antiphonMusicBass" \antiphonMusicBass
        >>
      >>
      \new ChoirStaff = "verseMusic"
      <<
        \new Staff = "verseMusicSA"
        <<
          \global
          \clef treble
          \new Dynamics {\verseStropheRythm}
          \new Voice = "verseMusicSoprano" \verseStropheMusicSoprano
          \new Voice = "verseMusicAlto" \verseStropheMusicAlto
        >>
        \new Staff = "verseMusicTB"
        <<
          \global
          \clef bass
          \new Dynamics {\verseStropheRythm}
          \new Voice = "verseMusicTenor" \verseStropheMusicTenor
          \new Voice = "verseMusicBass" \verseStropheMusicBass
        >>
      >>
    }
partitionVerset = {
      \new PianoStaff = "antiphonMusic"
      <<
        \new Staff <<
          \global \clef treble
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
          \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
        >>
        \new Staff <<
          \global \clef bass
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicTenor" \antiphonMusicTenor
          \new Voice = "antiphonMusicBass" \antiphonMusicBass
        >>
      >>
      \new ChoirStaff = "verseMusic"
      <<
        \new Staff = "verseMusicSA"
        <<
          \global
          \clef treble
          \new Dynamics {\verseRythm}
          \new Voice = "verseMusicSoprano" \verseMusicSoprano
          \new Voice = "verseMusicAlto" \verseMusicAlto
        >>
        \new Staff = "verseMusicTB"
        <<
          \global
          \clef bass
          \new Dynamics {\verseRythm}
          \new Voice = "verseMusicTenor" \verseMusicTenor
          \new Voice = "verseMusicBass" \verseMusicBass
        >>
      >>
    }

\book {
\bookOutputSuffix "Verset"
\score {
  <<
    \keepWithTag #'audio \unfoldRepeats \partitionVerset
    \context Staff = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
    \context Voice = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
  >>
  \midi { \set midiMergeUnisons = ##t  \tempo 4. = 55}
}
}
\book {
\bookOutputSuffix "Strophe"
\score {
  <<
    \keepWithTag #'audio \unfoldRepeats \partitionStrophe
    \context Staff = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
    \context Voice = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
  >>
  \midi { \set midiMergeUnisons = ##t \tempo 4. = 55}
}
}