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
  title = "Psaume 21"
  subtitle = \markup { \column { "Dimanche des Rameaux" "Passion du Seigneur" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, mars 2019"
}

global = {
  \key g \minor
  \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
  \markCustom "Antienne"
 \partial 4 s4 s1*4 \bar "|." \break
}
antiphonMusicSoprano = \relative c'' {
  \partial 4 d4 d2 r4 df4 c2 r4 c4 bf a g a g fs g2
  }

antiphonMusicAlto = \relative c' {
  \partial 4 d4 e2 r4 g4 a2 r4 a4 g ef ef c a a d2
  }

antiphonMusicTenor =  \relative c' {
  \partial 4 d4 bf2 r4 bf4 d2 \breathe d4 (d) df4 (c) bf (ef) d4. c8 bf2
  }

antiphonMusicBass =  \relative c {
  \partial 4 d4 g2 r4 e4 fs2 \breathe d4 (fs?) ef?4 (c) d (a) d d <g g,>2
  }

antiphonLyrics = \lyricmode {
  Mon Dieu, mon Dieu, pour -- quoi m'as -- tu a -- ban -- don -- né&nbsp;?
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \lyricmode {
  E -- loï, E -- loï, la -- ma sa -- bach -- tha -- ni&nbsp;?
}
antiphonLyricsBass = \antiphonLyricsTenor

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
}
verseRythm = {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 \bar "|."
}

verseStropheMusicSoprano = \relative c'' {
  bf\breve g1 a4
  a\breve c1 bf4
  d\breve bf1 c4
  c\breve bf1 d4

  }
verseMusicSoprano = \relative c'' {
  bf\breve g1  a4
  a\breve a1  bf4 g4
  }

verseStropheMusicAlto = \relative c'' {
  g\breve e1 ef4
  fs\breve fs1 d4
  g\breve g1 a4
  fs\breve g1 fs4
  }
verseMusicAlto = \relative c' {
  d\breve d1 c4
  ef\breve fs1 fs4 d4
  }

verseStropheMusicTenor = \relative c' {
  d\breve bf1 c4
  c\breve a1 bf4
  bf\breve d1 ef4
  a,\breve df1 a4
  }
verseMusicTenor = \relative c' {
  bf\breve bf1 g4
  c\breve c1 c4 bf4
  }

verseStropheMusicBass = \relative c' {
  g\breve g1 g4
  d\breve d1 g4
  g\breve ef1 g4
  d\breve ef1 d4
  }
verseMusicBass = \relative c' {
  g\breve e1 ef4
  fs\breve d1 d4 g4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Tous ceux qui me v" \underline o "ient me bafouent&nbsp;;" }
      \concat { \typewriter "   " "ils ricanent et h" \underline o "chent la tête&nbsp;:" }
      \concat { \typewriter "   " "«&nbsp;Il comptait sur le Seigne" \underline u "r&nbsp;: qu’il le délivre&nbsp;!" }
      \concat { \typewriter "   " "Qu’il le sauve, puisqu’il " \underline e "st son ami&nbsp;!&nbsp;»" }
      \vspace #1
      \concat { \typewriter "2. " "Oui, des chi" \underline e "ns me cernent," }
      \concat { \typewriter "   " "une bande de vauri" \underline e "ns m’entoure&nbsp;;" }
      \concat { \typewriter "   " "Ils me percent les ma" \underline i "ns et les pieds," }
      \concat { \typewriter "   " "je peux compt" \underline e "r tous mes os." }
    }
    \left-column {
      \concat { \typewriter "3. " "Ils partagent entre "  \underline e "ux mes habits" }
      \concat { \typewriter "   " "et tirent au s" \underline o "rt mon vêtement." }
      \concat { \typewriter "   " "Mais toi, Seigne" \underline u "r, ne sois pas loin&nbsp;:" }
      \concat { \typewriter "   " "ô ma force, viens v" \underline i "te à mon aide&nbsp;!" }
      \vspace #1
      \concat { \typewriter "4. " "Mais tu m’" \underline a "s répondu&nbsp;!" }
      \concat { \typewriter "   " "Et je proclame ton n" \underline o "m devant mes frères," }
      \concat { \typewriter "   " "je te loue en pl" \underline e "ine assemblée." }
      \concat { \typewriter "   " "Vous qui le craignez, lou" \underline e "z le Seigneur." }
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