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
  title = "Psaume 32"
  subtitle = \markup { \column { "29e dimanche du Temps Ordinaire" "Année B" } }
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, octobre 2024"
}

global = {
  \time 3/8
  \key g \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = {
 s4.*8 \bar "|." \break
}
antiphonMusicSoprano = \relative c'' {
  \markCustom "Antienne"
  bf8 a g a4 a8 g f ef f4.
  ef4 ef8 d4 d8 g g f! g4.
  }

antiphonMusicAlto = \relative c'' {
  g4. f ef d c bf d8 ef d d4.
  }

antiphonMusicTenor =  \relative c' {
  d4. d bf bf g g bf4 c8 bf4.
  }

antiphonMusicBass =  \relative c' {
  g4. d ef bf c d4 c8 bf8 c d g,4.
  }

antiphonLyrics = \lyricmode {
  Que ton a -- mour, Sei -- gneur soit sur nous,
  Com -- me no -- tre~es -- poir est en toi.
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

  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|."
}
verseStropheMusicSoprano = \relative c'' {
  bf\breve g1 a4
  g\breve ef1 f4
  ef\breve f1 g4
  g\breve a1 a4

  bf\breve g1 a4
  g\breve ef1 f4
  }
verseStropheMusicAlto = \relative c'' {
  g\breve g1 f4
  ef\breve ef1 d4
  c\breve d1 ef4
  ef\breve ef1 fs4

  g\breve g1 f4
  ef\breve ef1 d4
  }

verseStropheMusicTenor = \relative c' {
  d\breve d1 d4
  bf\breve bf1 bf4
  g\breve bf1 bf4
  c\breve c1 c4

  d\breve d1 d4
  bf\breve bf1 bf4
  }

verseStropheMusicBass = \relative c' {
  g\breve g1 d4
  ef\breve ef1 bf4
  c\breve bf1 ef4
  c\breve a1 d4

  g\breve g1 d4
  ef\breve ef1 bf4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 1.5)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Oui, elle est droite, la par" \underline o "le du Seigneur&nbsp;;"}
        \concat { \typewriter "   " "il est fid" \underline è "le en tout ce qu’il fait."}
        \concat { \typewriter "   " "Il aime le bon dro" \underline i "t et la justice&nbsp;;"}
        \concat { \typewriter "   " "la terre est rempl" \underline i "e de son amour."}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "2. " "Dieu veille sur ce" \underline u "x qui le craignent,"}
        \concat { \typewriter "   " "qui mettent leur esp" \underline o "ir en son amour,"}
        \concat { \typewriter "   " "pour les délivr" \underline e "r de la mort,"}
        \concat { \typewriter "   " "les garder en vie aux j" \underline o "urs de famine."}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "3. " "Nous attendons notre v" \underline i "e du Seigneur&nbsp;:"}
        \concat { \typewriter "   " "il est pour nous un appu" \underline i ", un bouclier."}
        \concat { \typewriter "   " "Que ton amour, Seign" \underline e "ur, soit sur nous"}
        \concat { \typewriter "   " "comme notre esp" \underline o "ir est en toi&nbsp;!"}
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
        \new Voice = "antiphonSoprano" { \global \antiphonMusicSoprano \fermata }
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
        \new Voice = "soprani" {\global \voiceOne \antiphonMusicSoprano \fermata }
        \new Voice = "alti" {\global \voiceTwo \antiphonMusicAlto \fermata }
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef bass
        \new Voice = "tenors" {\global \voiceThree \antiphonMusicTenor \fermata }
        \new Voice = "bass" {\global \voiceFour \antiphonMusicBass \fermata }
      >>
    >>
    \new ChoirStaff = "versePsalmody"
    <<
      \new Staff = "verseSopranoAlto" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        \new Dynamics { \silence \antiphonMusicSoprano \verseStropheRythm }
        \new Voice = "verseSoprano" << \voiceOne {\silence \antiphonMusicSoprano  \verseStropheMusicSoprano } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \antiphonMusicSoprano  \verseStropheMusicAlto } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm}
        \new Voice = "verseTenor" << \voiceOne {\silence \antiphonMusicSoprano  \verseStropheMusicTenor } >>
        \new Voice = "verseBass" << \voiceTwo {\silence \antiphonMusicSoprano  \verseStropheMusicBass } >>
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