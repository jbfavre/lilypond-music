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
  title = "Psaume 95"
  subtitle = \markup { \column { "29ème Dimanche du Temps Ordinaire" "Année A" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, octobre 2023"
}

global = {
  \key d \major
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
 \partial 8 s8 s2*5 \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  d8 a'4 c8 b a4. \breathe fs8 g a g fs e2 fs2
  }

antiphonMusicAlto = \relative c' {
  d8 fs4 a8 g fs4. d8 d2 d4 d8 cs d2
  }

antiphonMusicTenor =  \relative c' {
  d8 d4 e8 d d4. a8 b2 b4 a a2
  }

antiphonMusicBass =  \relative c {
  d8 d4 a8 b d4 c b8 a g4 g4 (a) d2
  }

antiphonLyrics = \lyricmode {
  Ren -- dez au Sei -- gneur, la gloi -- re~et la puis -- san -- ce.
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
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
}
verseStropheMusicSoprano = \relative c' {
  fs\breve a1 g4
  g\breve e1 fs4
  }

verseStropheMusicAlto = \relative c' {
  d\breve e1 e4
  e\breve e1 d4
  }

verseStropheMusicTenor = \relative c' {
  a\breve a1 b4
  d\breve cs1 a4
  }

verseStropheMusicBass = \relative c {
  d\breve a1 e'4
  g,\breve a1 d4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 1.5)
  \column {
    \fill-line {
      \column{
        \concat { \typewriter "1. " "Chantez au Seigneur un ch" \underline a "nt nouveau,"}
        \concat { \typewriter "   " "chantez au Seigne" \underline u "r, terre entière,"}
        \concat { \typewriter "   " "racontez à tous les pe" \underline u "ples sa gloire,"}
        \concat { \typewriter "   " "à toutes les nati" \underline o "ns ses merveilles&nbsp;!"}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "2. " "Il est grand, le Seigneur, hautem" \underline e "nt loué,"}
        \concat { \typewriter "   " "redoutable au-dess" \underline u "s de tous les dieux&nbsp;:"}
        \concat { \typewriter "   " "néant, tous les die" \underline u "x des nations&nbsp;!"}
        \concat { \typewriter "   " "Lui, le Seigne" \underline u "r, a fait les cieux."}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "3. " "Rendez au Seigneur, fam" \underline i "lles des peuples,"}
        \concat { \typewriter "   " "rendez au Seigneur la gl" \underline o "ire et la puissance,"}
        \concat { \typewriter "   " "rendez au Seigneur la gl" \underline o "ire de son nom."}
        \concat { \typewriter "   " "Apportez votre offrande, entr" \underline e "z dans ses parvis."}
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "4. " "Adorez le Seigneur, éblouiss" \underline a "nt de sainteté&nbsp;:"}
        \concat { \typewriter "   " "tremblez devant lu" \underline i ", terre entière."}
        \concat { \typewriter "   " "Allez dire aux nations&nbsp;: «&nbsp;Le Seigne" \underline u "r est roi&nbsp;!&nbsp;»"}
        \concat { \typewriter "   " "Il gouverne les pe" \underline u "ples avec droiture."}
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
        \new Voice = "verseSoprano" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicSoprano } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicAlto } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm}
        \new Voice = "verseTenor" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicTenor } >>
        \new Voice = "verseBass" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicBass } >>
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