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
  title = "Psaume 143"
  subtitle = \markup { \column { "32e dimanche du Temps Ordinaire" "Année B" } }
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, novembre 2024"
}

global = {
  \time 6/8
  \key f \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = {
  \repeat volta 2 {
    s2.*2
    \alternative {
      \volta 1 { s2.*2 }
      \volta 2 { s2.*2 }
    }
  }
\bar "|." \break
}
antiphonMusicSoprano = \relative c'' {
  \markCustom "Antienne"
  \repeat volta 2 {
    c4 bf8 a bf c f,4 f8 r8 g a
    \alternative {
      \volta 1 { bf4 c8 d4 c8 c2. }
      \volta 2 { g4 g8 f8 e4 f2. }
    }
  }
  }


antiphonMusicAlto = \relative c' {
  \repeat volta 2 {
    f4. e d d
    \alternative {
      \volta 1 { f f e2. }
      \volta 2 { d4 e c c2. }
    }
  }
}

antiphonMusicTenor =  \relative c' {
  \repeat volta 2 {
    a4. a a a
    \alternative {
      \volta 1 { d bf bf4 a8 g a bf }
      \volta 2 { bf4 bf8 a bf4 bf8 a g a4. }
    }
  }
}

antiphonMusicBass =  \relative c {
  \repeat volta 2 {
    f4. c d c
    \alternative {
      \volta 1 { bf g c2. }
      \volta 2 { bf4 c4 c4 f,2. }
    }
  }
}
antiphonLyrics = \lyricmode {
    Chan -- te, chan -- te~ô mon â -- me, la lou -- an -- ge du Sei -- gneur
    an -- ge du Sei -- gneur
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
  a\breve c1 f,4
  g\breve a1 g4
  a\breve c1 f,4
  g\breve g1 f4

  a\breve c1 f,4
  g\breve a1 g4
  }
verseStropheMusicAlto = \relative c' {
  f\breve e1 d4
  d\breve d1 e4
  f\breve e1 d4
  d\breve e1 c4

  f\breve e1 d4
  d\breve d1 e4
  }

verseStropheMusicTenor = \relative c' {
  c\breve a1  a4
  g\breve bf1 bf4
  c\breve a1  a4
  bf\breve bf1 a4

  c\breve a1  a4
  g\breve bf1 bf4
  }

verseStropheMusicBass = \relative c {
  f\breve c1 d4
  bf\breve g1 c4
  f\breve c1 d4
  g,\breve c1 f4

  f\breve c1 d4
  bf\breve g1 c4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 1.5)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Le Seigneur garde à jam" \underline a "is sa fidélité,"}
        \concat { \typewriter "   " "il fait just" \underline i "ce aux opprimés ;"}
        \concat { \typewriter "   " "aux affamés, il d" \underline o "nne le pain ;"}
        \concat { \typewriter "   " "le Seigneur dél" \underline i "e les enchaînés."}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "3. " "Le Seigneur ouvre les y" \underline e "ux des aveugles,"}
        \concat { \typewriter "   " "le Seigneur redr" \underline e "sse les accablés,"}
        \concat { \typewriter "   " "le Seigneur " \underline a "ime les justes,"}
        \concat { \typewriter "   " "le Seigneur prot" \underline è "ge l’étranger."}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "3. " "Il soutient la v" \underline e "uve et l’orphelin,"}
        \concat { \typewriter "   " "il égare les p" \underline a "s du méchant."}
        \concat { \typewriter "   " "D’âge en âge, le Seign" \underline e "ur régnera :"}
        \concat { \typewriter "   " "ton Dieu, ô Si" \underline o "n, pour toujours !"}
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