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
  subtitle = \markup { \column { "2ème Dimanche de Carême" "Année A" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, février 2023"
}

global = {
  \key f \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
 s4.*3 s2*4 \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  c8 d e f4 f8 g a bf \time 2/4 \tempo \markup {
    \concat {
      (
      \smaller \general-align #Y #DOWN \note {8} #1
      " = "
      \smaller \general-align #Y #DOWN \note {8} #1
      )
    }
  } a2 a8 a a g f4 g8 e f2
  }

antiphonMusicAlto = \relative c' {
  a8 bf cs d4 d8 d d d cs2 cs8 cs d e d4 d8 c c2
  }

antiphonMusicTenor =  \relative c' {
  a8 a a a4 a8 g8 f e e2 e8 e e a a4 g8 g a2
  }

antiphonMusicBass =  \relative c {
  f8 f e d4 c8 bf bf g a2 a8 a b cs d4 bf8 c f,2
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
}
verseRythm = {
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|."
}
verseStropheMusicSoprano = \relative c'' {
  a\breve g1 f4
  f\breve a1 g4
  g\breve a1 f4
  f\breve a1 g4
  }
verseMusicSoprano = \relative c'' {
  a\breve g1 f4
  f\breve a1 g4
  }
verseStropheMusicAlto = \relative c' {
  f\breve e1 d4
  d\breve f1 e4
  e\breve e1 d4
  d\breve f1 e4
  }
verseMusicAlto = \relative c' {
  f\breve e1 d4
  d\breve f1 e4
  }

verseStropheMusicTenor = \relative c' {
  c\breve c1 a4
  bf\breve c1 c4
  c\breve a1 a4
  bf\breve c1 c4
  }
verseMusicTenor = \relative c' {
  c\breve c1 a4
  bf\breve c1 c4
  }

verseStropheMusicBass = \relative c {
  f,\breve c'1 d4
  bf\breve f1 c'4
  c\breve cs1 d4
  bf\breve f1 c'4
  }
verseMusicBass = \relative c {
  f,\breve c'1 d4
  bf\breve f1 c'4
  }




verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \column{
        \concat { \typewriter "1. " "Criez de joie pour le Seigne" \underline u "r, hommes justes&nbsp;!"}
        \concat { \typewriter "   " "Hommes droits, à vo" \underline u "s la louange&nbsp;!"}
        \concat { \typewriter "   " "Rendez grâce au Seigne" \underline u "r sur la cithare,"}
        \concat { \typewriter "   " "jouez pour l" \underline u "i sur la harpe à dix cordes."}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "2. " "Oui, elle est dr" \underline o "ite, la parole du Seigneur&nbsp;;"}
        \concat { \typewriter "   " "il est fid" \underline è "le en tout ce qu’il fait."}
        \concat { \typewriter "   " "Il aime le bon dr" \underline o "it et la justice&nbsp;;"}
        \concat { \typewriter "   " "la terre est rempl" \underline i "e de son amour."}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "3. " "Dieu veille sur ce" \underline u "x qui le craignent,"}
        \concat { \typewriter "   " "qui mettent leur esp" \underline o "ir en son amour,"}
        \concat { \typewriter "   " "pour les délivr" \underline e "r de la mort,"}
        \concat { \typewriter "   " "les garder en v" \underline i "e aux jours de famine."}
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