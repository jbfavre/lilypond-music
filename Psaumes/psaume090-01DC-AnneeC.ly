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
  title = "Psaume 90"
  subtitle = \markup { \column { "1er Dimanche de Carême" "Année C" } }
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, mars 2025"
}

global = {
  \key e \minor
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = {
    s4.*6
    \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  e8 g fs e4 g8 a4. a8 g fs e4. e4.
  }

antiphonMusicAlto = \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  b4. c4 e8 e4. ds4. e4. e4.
  }

antiphonMusicTenor =  \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  g4. g4 d'8 c4. b4. g4. g4.
  }

antiphonMusicBass =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  e4 d8 c4 b8 a4. b8 cs ds e4. e4.
  }

antiphonLyrics = \lyricmode {
  Sois a -- vec moi, Sei -- gneur, dans mon é -- preu -- ve
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
  \accidentalStyle forget
  g\breve a1 e4
  e\breve d1 e4
  g\breve a1 b4
  a\breve g1 fs4

  g\breve a1 e4
  e\breve d1 e4
  }

verseStropheMusicAlto = \relative c' {
  \accidentalStyle forget
  e\breve e1 c4
  c\breve b1 b4
  e\breve fs1 g4
  e\breve e1 ds4

  e\breve e1 c4
  c\breve b1 b4
  }

verseStropheMusicTenor = \relative c' {
  \accidentalStyle forget
  b\breve c1 g4
  g\breve fs1 g4
  b\breve d1 d4
  c\breve cs1 b4

  b\breve c1 g4
  g\breve fs1 g4
  }

verseStropheMusicBass = \relative c {
  \accidentalStyle forget
  e\breve a,1 c4
  g\breve b1 e4
  e\breve d1 g,4
  a\breve as1 b4

  e\breve a,1 c4
  g\breve b1 e4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 0.5)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Quand je me tiens sous l’abr" \underline i " du Très-Haut"}
        \concat { \typewriter "   " "et repose à l’" \underline o "mbre du Puissant,"}
        \concat { \typewriter "   " "je dis au Seigne" \underline u "r&nbsp;: «&nbsp;Mon refuge,"}
        \concat { \typewriter "   " "mon rempart, mon Die" \underline u ", dont je suis sûr&nbsp;!&nbsp;»"}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Le malheur ne pourr" \underline a " te toucher,"}
        \concat { \typewriter "   " "ni le danger, approch" \underline e "r de ta demeure&nbsp;:"}
        \concat { \typewriter "   " "il donne missi" \underline o "n à ses anges"}
        \concat { \typewriter "   " "de te gard" \underline e "r sur tous tes chemins."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "3. " "Ils te porter" \underline o "nt sur leurs mains"}
        \concat { \typewriter "   " "pour que ton pied ne he" \underline u "rte les pierres&nbsp;;"}
        \concat { \typewriter "   " "tu marcheras sur la vip" \underline è "re et le scorpion,"}
        \concat { \typewriter "   " "tu écraseras le li" \underline o "n et le Dragon."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "4. " "«&nbsp;Puisqu’il s’attache à m" \underline o "i, je le délivre&nbsp;"}
        \concat { \typewriter "   " "je le défends, car il conn" \underline a "ît mon nom."}
        \concat { \typewriter "   " "Il m’appelle, et m" \underline o "i, je lui réponds&nbsp;"}
        \concat { \typewriter "   " "je suis avec l" \underline u "i dans son épreuve.&nbsp;»"}
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