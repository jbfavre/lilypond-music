\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
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
  title = "Psaume 91"
  subtitle = \markup { \column { "8ème Dimanche du Temps Ordinaire" "Année C" } }
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, février 2025"
}

global = {
  \key d \major
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = {
    \partial 4 s4
    s2*4
    \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 e8 fs4. b8 a2 g8 fs e e d4 d
  }

antiphonMusicAlto = \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 a8 a d4 fs fs2 e8 d cs b a4 a
  }

antiphonMusicTenor =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 fs8 fs a4 d cs2 b8 b a g fs4 fs
  }

antiphonMusicBass =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 d d (cs) b4 fs'2 g8 g a a, d4 d \fermata
  }

antiphonLyrics = \lyricmode {
  Qu'il est bon, Sei -- gneur, de te ren -- dre grâ -- ce
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
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|."
}

verseStropheMusicSoprano = \relative c' {
  fs\breve a1 fs4
  fs\breve e1 fs4
  fs\breve e1 d4
  e\breve e1 d4

  fs\breve a1 fs4
  fs\breve e1 fs4
  }

verseStropheMusicAlto = \relative c' {
  d\breve e1 d4
  d\breve cs1 d4
  cs\breve cs1 b4
  d\breve cs1 a4

  d\breve e1 d4
  d\breve cs1 d4
  }

verseStropheMusicTenor = \relative c' {
  a\breve cs1 b4
  b\breve b1 a4
  fs\breve fs1 fs4
  b\breve a1 a4

  a\breve cs1 b4
  b\breve b1 a4
  }

verseStropheMusicBass = \relative c {
  d\breve a1 b4
  g\breve a1 d4
  as\breve as1 b4
  g\breve a1 d4

  d\breve a1 b4
  g\breve a1 d4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 0.5)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Qu'il est bon de rendre gr" \underline â "ce au Seigneur,"}
        \concat { \typewriter "   " "de chanter pour son n" \underline o "m, Dieu très haut,"}
        \concat { \typewriter "   " "D'annoncer dès le mat" \underline i "n ton amour,"}
        \concat { \typewriter "   " "ta fidélit" \underline é " au long des nuits."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Le juste grandir" \underline a " comme un palmier,"}
        \concat { \typewriter "   " "il poussera comme un c" \underline è "dre du Liban"}
        \concat { \typewriter "   " "planté dans les parv" \underline i "s du Seigneur,"}
        \concat { \typewriter "   " "il grandira dans la mais" \underline o "n de notre Dieu."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "3. " "Vieillissant, il fructif" \underline i "e encore,"}
        \concat { \typewriter "   " "il garde sa s" \underline è "ve et sa verdeur,"}
        \concat { \typewriter "   " "pour annoncer&nbsp;: «&nbsp;Le Seigne" \underline u "r est droit&nbsp;!"}
        \concat { \typewriter "   " "Pas de ruse en Die" \underline u ", mon rocher&nbsp;!&nbsp;»."}
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