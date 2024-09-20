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
  title = "Psaume 18"
  subtitle = \markup { \column { "26e dimanche du Temps Ordinaire" "Année B" } }
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, septembre 2024"
}

global = {
  \time 4/4
  \key g \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonMusicSoprano = \relative c'' {
   bf4 a g g a bf c2 bf a1
   r4 a4 a bf a2 g4 f! g1
  }

antiphonMusicAlto = \relative c'' {
  g4 f ef ef ef g g2 g fs1
  fs2 fs4 fs  g2 d4 d d1
  }

antiphonMusicTenor =  \relative c' {
  d4 d bf bf c4 d ef2 d d1
  d2 d4 d ef2 c4 c bf1
  }

antiphonMusicBass =  \relative c {
  g4 d' ef d c bf a2 bf4 (c) d1
  d2 d4 d c2 d4 d g,1
  }

antiphonRythm = {
    \markCustom "Antienne"
    \partial 2 s2
    s1*6  \bar "|." \break
  }

antiphonLyrics = \lyricmode {
  Les pré -- ce -- ptes du Sei -- gneur sont droits,
  Ils ré -- jou -- is -- sent le cœur.
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass = \antiphonLyrics

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
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|." \break
  \markCustom "Psalmodie par verset"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "|." \break
}

verseStropheMusicSoprano = \relative c'' {
  bf\breve a1 g4
  a\breve bf1 a4
  bf\breve a1 g4
  g\breve f!1 g4

  bf\breve a1 g4
  a\breve bf1 a4
  }

verseStropheMusicAlto = \relative c'' {
  g\breve f!1 ef4
  ef\breve g1 fs4
  g\breve f1 ef4
  d\breve d1 d4

  g\breve f!1 ef4
  ef\breve g1 fs4
  }

verseStropheMusicTenor = \relative c' {
  d\breve d1 bf4
  c\breve d1 c4
  d\breve d1 bf4
  c\breve c1 bf4

  d\breve d1 bf4
  c\breve d1 c4
  }

verseStropheMusicBass = \relative c {
  g\breve d'1 ef4
  c\breve bf1 d4
  g,\breve d'1 ef4
  d\breve d1 g,4

  g\breve d'1 ef4
  c\breve bf1 d4
  }

verseLyrics = \markuplist {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 1.5)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "La loi du Seigne" \underline u "r est parfaite,"}
        \concat { \typewriter "   " "qui red" \underline o "nne vie&nbsp;;"}
        \concat { \typewriter "   " "la charte du Seigne" \underline u "r est sûre,"}
        \concat { \typewriter "   " "qui rend s" \underline a "ges les simples."}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "2. " "La crainte qu’il insp" \underline i "re est pure,"}
        \concat { \typewriter "   " "elle est l" \underline à " pour toujours&nbsp;;"}
        \concat { \typewriter "   " "les décisions du Seigne" \underline u "r sont justes"}
        \concat { \typewriter "   " "et vraim" \underline e "nt équitables."}
      }
    }
    \vspace #1
    \fill-line{
      \left-column {
        \concat { \typewriter "3. " "Aussi ton serviteur en " \underline e "st illuminé&nbsp;;"}
        \concat { \typewriter "   " "à les garder, il tro" \underline u "ve son profit."}
        \concat { \typewriter "   " "Qui peut discern" \underline e "r ses erreurs&nbsp;?"}
        \concat { \typewriter "   " "Purifie-moi de c" \underline e "lles qui m’échappent."}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "4. " "Préserve aussi ton servite" \underline u "r de l’orgueil&nbsp;:"}
        \concat { \typewriter "   " "qu’il n’ait sur m" \underline o "i aucune emprise."}
        \concat { \typewriter "   " "Alors je ser" \underline a "i sans reproche,"}
        \concat { \typewriter "   " "pur d’un gr" \underline a "nd péché."}

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