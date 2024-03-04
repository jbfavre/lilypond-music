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
  title = "Psaume 50"
  subtitle = \markup { \column { "Vigile Pascale" "Septième lecture" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, janvier 2024"
}

global = {
  \key g \minor
  \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
  \markCustom "Antienne"
 \partial 2 s2 s1*7 \bar "|." \break
}
antiphonMusicSoprano = \relative c'' {
  g4 a bf2 c4 bf a2 bf4 c d2 c4 bf a2
  g4 a bf2 c4 bf a2 bf4 a g1
  }

antiphonMusicAlto = \relative c' {
  d2 g2 g2 fs2 g4 a bf2 g fs
  d4 d g2 g2 fs2 g4 fs d1
  }

antiphonMusicTenor =  \relative c' {
  bf2 d2 ef2 ef4 d d4 f f2 ef ef4 d8 c
  bf4 c bf4 d c4 ef ef d ef c bf1
  }

antiphonMusicBass =  \relative c' {
  g2 g2 c,2 d g4 f bf,2 c2 d2
  g4 fs g f ef c d2 c4 d g1
  }

antiphonLyrics = \lyricmode {
  Crée en moi un cœur pur, un cœur pur, ô mon Dieu&nbsp;
  Crée en moi un cœur pur, ô mon Dieu.
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseStropheRythm = {
}
verseRythm = {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 \bar "|."
}
verseStropheMusicSoprano = \relative c'' {
  }
verseMusicSoprano = \relative c'' {
  bf\breve c1 bf4
  bf\breve a1 a4 g4
  }
verseStropheMusicAlto = \relative c'' {
  }
verseMusicAlto = \relative c'' {
  g\breve g1 g4
  g\breve fs1 d4 d4
  }

verseStropheMusicTenor = \relative c' {
  }
verseMusicTenor = \relative c' {
  d\breve ef1 ef4
  ef\breve ef1 d4 bf4
  }

verseStropheMusicBass = \relative c {
  }
verseMusicBass = \relative c' {
  g\breve c,1 ef4
  c\breve d1 d4 g4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Crée en moi un cœur p" \underline u "r, ô mon Dieu,"}
        \concat { \typewriter "   " "renouvelle et raffermis au fond de m" \underline o "i mon esprit."}
        \concat { \typewriter "   " "Ne me chasse p" \underline a "s loin de ta face,"}
        \concat { \typewriter "   " "ne me reprends p" \underline a "s ton esprit saint."}
      }
    }
    \vspace #0.8
    \fill-line {
      \left-column {
        \concat { \typewriter "2. " "Rends-moi la j" \underline o "ie d’être sauvé&nbsp;;"}
        \concat { \typewriter "   " "que l’esprit génér" \underline e "ux me soutienne."}
        \concat { \typewriter "   " "Aux pécheurs, j’enseigner" \underline a "i tes chemins ;"}
        \concat { \typewriter "   " "vers toi, reviendr" \underline o "nt les égarés."}
      }
    }
    \vspace #0.8
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Si j’offre un sacrif" \underline i "ce, tu n’en veux pas,"}
        \concat { \typewriter "   " "tu n’acceptes p" \underline a "s d’holocauste."}
        \concat { \typewriter "   " "Le sacrifice qui plaît à Dieu, c’est un espr" \underline i "t brisé ;"}
        \concat { \typewriter "   " "tu ne repousses pas, ô mon Dieu, un cœur bris" \underline é " et broyé."}
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