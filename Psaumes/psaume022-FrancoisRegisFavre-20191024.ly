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
  title = "Psaume 22"
  subtitle = \markup { \column { "François-Régis Favre" "17 juin 1937 - &dagger; 20 octobre 2019" } }
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, 22 octobre 2019"
}

global = {
  \time 2/4
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonMusicSoprano = \relative c' {
   d8 e f4 (f8) f8 e g a2 c4 d8 c b4 a8 g a2
  }

antiphonMusicAlto = \relative c' {
   d8 cs d4 (d8) d c c f2 a4 a8 a g4 e8 e e2
  }

antiphonMusicTenor =  \relative c {
   f8 a a4 (a8)[ bf] g c c2 e4 d8 d d4 d8 b cs2
  }

antiphonMusicBass =  \relative c {
   bf8 a d8 c (bf8) d c e f2 a4 f8 f g4 e8 e a,2
  }

antiphonRythm = {
    \markCustom "Antienne"
    s2*6  \bar "|." \break
  }
antiphonLyrics = \lyricmode {
    Le Sei -- gneur est mon ber -- ger_: rien ne sau -- rait me man -- quer.
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass = \lyricmode {
    Le Sei -- gneur_ -- _ -- est mon ber -- ger_: rien ne sau -- rait me man -- quer.
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

verseStropheRythm = {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 s4 \bar "|." \break
  \markCustom "Psalmodie par verset"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 s4 \bar "|." \break
}

verseStropheMusicSoprano = \relative c' {
  g'\breve a1 f4
  f\breve e1 g4 a4
  a\breve c1 d4
  c\breve b1 a4 g4 a4

  g\breve a1 f4
  f\breve e1 g4 a4
  a\breve c1 d4
  c\breve b1 a4 g4 a4
  }

verseStropheMusicAlto = \relative c' {
  d\breve cs1 d4
  d\breve c1 c4 f4
  f\breve a1 f4
  f\breve g1 e4 e4 e4

  s\breve s1 s4
  s\breve s1 s4 s4
  s\breve s1 s4
  s\breve s1 s4 s4 s4
  }

verseStropheMusicTenor = \relative c' {
  bf\breve a1 a4
  bf\breve g1 c4 c4
  a\breve a1 bf4
  a\breve d1 d4 b4 cs4

  s\breve s1 s4
  s\breve s1 s4 s4
  s\breve s1 s4
  s\breve s1 s4 s4 s4
  }

verseStropheMusicBass = \relative c {
  g'\breve e1 d4
  bf\breve c1 e4 f4
  d\breve e1 f4
  f\breve g1 e4 e4 a,4

  bf\breve a1 d4
  bf\breve c1 e4 f4
  d\breve a1 bf4
  a\breve d1 d4 b4 cs4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Le Seigne" \underline u "r est mon berger," }
        \concat { \typewriter "   " "je ne m" \underline a "nque de rien," }
        \concat { \typewriter "   " "Sur des pr" \underline é "s d’herbe fraîche," }
        \concat { \typewriter "   " "il me f" \underline a "it reposer." }
        \vspace #1
        \concat { \typewriter "2. " "Il me mène vers les e" \underline a "ux tranquilles" }
        \concat { \typewriter "   " "et me f" \underline a "it revivre;" }
        \concat { \typewriter "   " "il me conduit par le j" \underline u "ste chemin" }
        \concat { \typewriter "   " "pour l’honn" \underline e "ur de son nom." }
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "3. " "Si je traverse les rav" \underline i "ns de la mort," }
        \concat { \typewriter "   " "je ne cr" \underline a "ins aucun mal," }
        \concat { \typewriter "   " "car tu " \underline e "s avec moi&nbsp;:" }
        \concat { \typewriter "   " "ton bâton me gu" \underline i "de et me rassure." }
        \vspace #1
        \concat { \typewriter "4. " "Tu prépares la t" \underline a "ble pour moi" }
        \concat { \typewriter "   " "dev" \underline a "nt mes ennemis;" }
        \concat { \typewriter "   " "tu répands le parf" \underline u "m sur ma tête," }
        \concat { \typewriter "   " "ma c" \underline o "upe est débordante." }
      }
    }
    \vspace #1
    \fill-line{
      \left-column {
        \concat { \typewriter "5. " "Grâce et bonh" \underline e "ur m’accompagnent" }
        \concat { \typewriter "   " "tous les j" \underline o "urs de ma vie;" }
        \concat { \typewriter "   " "j’habiterai la mais" \underline o "n du Seigneur" }
        \concat { \typewriter "   " "pour la dur" \underline é "e de mes jours." }
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