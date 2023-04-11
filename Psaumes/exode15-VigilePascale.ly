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
  title = "Cantique de Moïse"
  subtitle = \markup { \column { "Vigile Pascale" "Troisième lecture" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, avril 2023"
}

global = {
  \key g \major
  \time 6/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
 \partial 8 s8 s4.*4 s4.*4 \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  d8 g4. g8 fs g a4. r8 g a b4 a8 g fs4 g2.
  }

antiphonMusicAlto = \relative c' {
  d8 d4. e fs2. fs4 g8 e d4 d2.
  }

antiphonMusicTenor =  \relative c' {
  d8 b2. d2. ds4 e a, bf2.
  }

antiphonMusicBass =  \relative c {
  d8 g4. e d4. r8 d8 c b4 c d g,2.
  }

antiphonLyrics = \lyricmode {
  Chan -- tons pour le Sei -- gneur&nbsp;!
  É -- cla -- tan -- te~est sa gloi -- re&nbsp;!
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
  b\breve a4
  g\breve fs4
  e\breve fs1 g4
  g\breve a1 a4
  }
verseMusicSoprano = \relative c'' {
  b\breve a4
  g\breve a1 a4
  }
verseStropheMusicAlto = \relative c'' {
  g\breve fs4
  e\breve d4
  c\breve b1 e4
  e\breve e1 fs4
  }
verseMusicAlto = \relative c'' {
  g\breve fs4
  e\breve e1 fs4
  }

verseStropheMusicTenor = \relative c' {
  d\breve d4
  b\breve b4
  g\breve b1 b4
  c\breve c1 c4
  }
verseMusicTenor = \relative c' {
  d\breve d4
  c\breve c1 c4
  }

verseStropheMusicBass = \relative c {
  g\breve d'4
  e\breve b'4
  c,\breve d1 f4
  c\breve a1 d4
  }
verseMusicBass = \relative c {
  g\breve d'4
  c\breve a1 d4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \left-column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Je chanter" \underline a "i pour le Seigneur&nbsp;!"}
        \concat { \typewriter "   " "Éclat" \underline a "nte est sa gloire&nbsp;:"}
        \concat { \typewriter "   " "il a jet" \underline é " dans la mer"}
        \concat { \typewriter "   " "chev" \underline a "l et cavalier."}
      }
      \left-column {
        \concat { \typewriter "2. " "Ma force et mon ch" \underline a "nt, c’est le Seigneur&nbsp;:"}
        \concat { \typewriter "   " "il est pour m" \underline o "i le salut."}
        \concat { \typewriter "   " "Il est mon Di" \underline e "u, je le célèbre&nbsp;;"}
        \concat { \typewriter "   " "j’exalte le Di" \underline e "u de mon père."}
      }
    }
    \vspace #0.8
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Le Seigneur est le guerri" \underline e "r des combats&nbsp;;"}
        \concat { \typewriter "   " "son n" \underline o "m est «&nbsp;Le Seigneur&nbsp;»."}
        \concat { \typewriter "   " "Les chars du Pharaon et ses armées,"}
        \concat { \typewriter "   " "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;il les l" \underline a "nce dans la mer."}
        \concat { \typewriter "   " "L’élite de leurs chefs a sombr" \underline é}
        \concat { \typewriter "   " "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dans la mer Rouge."}
      }
      \column {
        \concat { \typewriter "4. " "L’ab" \underline î "me les recouvre&nbsp;:"}
        \concat { \typewriter "   " "ils descendent, comme la pi" \underline e "rre,"}
        \concat { \typewriter "   " "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;au fond des eaux."}
        \concat { \typewriter "   " "Ta droite, Seigneur, magnif" \underline i "que en sa force,"}
        \concat { \typewriter "   " "ta droite, Seigneur, écr" \underline a "se l’ennemi."}
      }
    }
    \vspace #0.8
    \fill-line {
      \column {
        \concat { \typewriter "5. " "Tu les amènes, tu les plantes sur la mont" \underline a "gne, ton héritage,"}
        \concat { \typewriter "   " "le lieu que tu as fait, Seign" \underline e "ur, pour l’habiter,"}
        \concat { \typewriter "   " "le sanctuaire, Seigneur, fond" \underline é " par tes mains."}
        \concat { \typewriter "   " "Le Seigneur régnera pour les si" \underline è "cles des siècles."}
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