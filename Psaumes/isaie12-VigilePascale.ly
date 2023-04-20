\version "2.24.1"
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
  title = "Cantique d'Isaïe"
  subtitle = \markup { \column { "Vigile Pascale" "Cinquième lecture" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, avril 2023"
}

global = {
  \key g \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
 s4.*8 \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  r8 d8 d8 e4 fs8 g8 fs g a g a b4 g8 c4 b8 a4 a8 g4.
  }

antiphonMusicAlto = \relative c' {
  r8 d8 d e4 ds8 e4 e8 g e fs g4 d8 g4 g8 g e fs d4.
  }

antiphonMusicTenor =  \relative c {
  r8 fs8 fs8 g4 b8 b4 b8 e4 d8 d4 b8 c4 e8 e c4 b4.
  }

antiphonMusicBass =  \relative c {
  r8 d8 d8 c4 b8 e4 e8 c4 d8 g4 f8 e8 a, b c4 d8 g4.
  }

antiphonLyrics = \lyricmode {
  E -- xul -- tant de joie vous pui -- se -- rez  les eaux
  aux sour -- ces du sa -- lut&nbsp;!
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
  \tempoVerseAcelerando s\breve \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|." \break
}
verseRythm = {
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|."
}
verseStropheMusicSoprano = \relative c'' {
  s\breve s4
  s\breve s4
  s\breve s1 s4
  s\breve s1 s4
  }
verseMusicSoprano = \relative c'' {
  s\breve s4
  s\breve s1 s4
  }
verseStropheMusicAlto = \relative c'' {
  s\breve s4
  s\breve s4
  s\breve s1 s4
  s\breve s1 s4
  }
verseMusicAlto = \relative c'' {
  s\breve s4
  s\breve s1 s4
  }

verseStropheMusicTenor = \relative c' {
  s\breve s4
  s\breve s4
  s\breve s1 s4
  s\breve s1 s4
  }
verseMusicTenor = \relative c' {
  s\breve s4
  s\breve s1 s4
  }

verseStropheMusicBass = \relative c {
  s\breve s4
  s\breve s4
  s\breve s1 s4
  s\breve s1 s4
  }
verseMusicBass = \relative c {
  s\breve s4
  s\breve s1 s4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \left-column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Voici le Di" \underline e "u qui me sauve&nbsp;:"}
        \concat { \typewriter "   " "j’ai confiance, je n’ai pl" \underline u "s de crainte."}
        \concat { \typewriter "   " "Ma force et mon ch" \underline a "nt, c’est le Seigneur&nbsp;;"}
        \concat { \typewriter "   " "il est pour m" \underline o "i le salut."}
      }
      \left-column {
        \concat { \typewriter "2. " "Rendez gr" \underline â "ce au Seigneur,"}
        \concat { \typewriter "   " "proclam" \underline e "z son nom,"}
        \concat { \typewriter "   " "annoncez parmi les p" \underline e "uples ses hauts faits&nbsp;!"}
        \concat { \typewriter "   " "Redites-le&nbsp;: «&nbsp;Subl" \underline i "me est son nom&nbsp;!&nbsp;»"}
      }
    }
    \vspace #0.8
    \fill-line {
      \column {
        \concat { \typewriter "3. " "Jouez pour le Seigneur, il m" \underline o "ntre sa magnificence,"}
        \concat { \typewriter "   " "et toute la t" \underline e "rre le sait."}
        \concat { \typewriter "   " "Jubilez, criez de joie, habit" \underline a "nts de Sion,"}
        \concat { \typewriter "   " "car il est grand au milieu de toi, le S" \underline a "int d’Israël&nbsp;!"}
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
        \set Staff.instrumentName = "Soprano"
        \clef "treble"
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonSoprano" { \global \antiphonMusicSoprano\fermata}
        \new Lyrics \lyricsto "antiphonSoprano" { \antiphonLyricsSoprano }
      >>
    >>
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

\score {
  \partition
  \layout {
      ragged-last = ##f
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead.style = #'altdefault
          \override InstrumentName.font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead.style = #'altdefault
          \override InstrumentName.font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead.style = #'altdefault
          \override InstrumentName.font-name = #"Monospace Regular"
      }
      \override LyricText.font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
  \scoreHeader
}
\verseLyrics