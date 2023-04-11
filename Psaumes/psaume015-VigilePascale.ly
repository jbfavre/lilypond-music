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
  title = "Psaume 15"
  subtitle = \markup { \column { "Vigile Pascale" "Seconde lecture" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, avril 2023"
}

global = {
  \key f \major
  \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
 s2.*4 \bar "|." \break
}
antiphonMusicSoprano = \relative c'' {
  \markCustom "Antienne"
  a8 a bf4. a8 g4. g8 a g f4 f e f2.
  }

antiphonMusicAlto = \relative c' {
  f4 f2 e2 e4 d4 d4 c4 c2.
  }

antiphonMusicTenor =  \relative c' {
  c4 d2 c2 a4 a4 bf4 bf a2.
  }

antiphonMusicBass =  \relative c {
  f4 bf,2 c2 cs4 d8 c bf4 c f,2.
  }

antiphonLyrics = \lyricmode {
  Gar -- de- moi mon Dieu&nbsp;
  J'ai fait de toi mon re -- fuge
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
  \tempoVerseAcelerando s\breve \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve \tempoVerseRallentando s4 \bar "|." \break
}
verseRythm = {
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve \tempoVerseRallentando s4 \bar "|."
}
verseStropheMusicSoprano = \relative c' {
  f\breve e4
  g\breve f4
  a\breve g4
  f\breve g4
  }
verseMusicSoprano = \relative c'' {
  a\breve g4
  f\breve g4
  }
verseStropheMusicAlto = \relative c'' {
  }
verseMusicAlto = \relative c'' {
  }

verseStropheMusicTenor = \relative c' {
  }
verseMusicTenor = \relative c' {
  }

verseStropheMusicBass = \relative c {
  d\breve a'4
  e\breve bf'4
  f,\breve c'4
  d\breve c4
  }
verseMusicBass = \relative c {
  f,\breve c'4
  d\breve c4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \left-column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Seigneur, mon part" \underline a "ge et ma coupe&nbsp;:"}
        \concat { \typewriter "   " "de t" \underline o "i dépend mon sort."}
        \concat { \typewriter "   " "Je garde le Seigneur devant m" \underline o "i sans relâche&nbsp;;"}
        \concat { \typewriter "   " "il est à ma dr" \underline o "ite&nbsp;: je suis inébranlable."}
      }
    }
    \vspace #0.8
    \fill-line {
      \left-column {
        \concat { \typewriter "2. " "Mon cœur exulte, mon " \underline â "me est en fête,"}
        \concat { \typewriter "   " "ma chair elle-même rep" \underline o "se en confiance&nbsp;:"}
        \concat { \typewriter "   " "tu ne peux m’abandonn" \underline e "r à la mort"}
        \concat { \typewriter "   " "ni laisser ton ami v" \underline o "ir la corruption."}
      }
    }
    \vspace #0.8
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Tu m’apprends le chem" \underline i "n de la vie&nbsp;:"}
        \concat { \typewriter "   " "devant ta face, débordem" \underline e "nt de joie&nbsp;!"}
        \concat { \typewriter "   " "À ta droite, éternit" \underline é " de délices&nbsp;!"}
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