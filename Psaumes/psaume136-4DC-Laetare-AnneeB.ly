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
  title = "Psaume 136"
  subtitle = \markup { \column { "4ème Dimanche de Carême - Lætare" "Année B" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, mars 2024"
}

global = {
  \key g \minor
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antiphonRythm = {
  \markCustom "Antienne"
 \partial 4 s4 s2*8 \bar "|." \break
}
antiphonMusicSoprano = \relative c' {
  d8 d g4 a8 bf c4. d8 d4 bf g4
  g8 g c4. bf8 bf4 a g2 (g)
  }

antiphonMusicAlto = \relative c' {
  d8 d d4 d8 d f4. f8 f4 f ef
  ef8 ef ef4. g8 fs4 fs d2 (d)
  }

antiphonMusicTenor =  \relative c' {
  d8 d bf4 bf8 bf a4. a8 bf4 bf bf
  bf8 bf c4. c8 c4 c c a b2
  }

antiphonMusicBass =  \relative c {
  d8 d g,4 g'8 g f4. f8 bf,4 d ef
  d8 d  c4. ef8 d4 d g2 (g)
  }

antiphonLyrics = \lyricmode {
  Que ma lan -- gue s’at -- ta -- che~à mon pa -- lais
  si je perds ton sou -- ve -- nir&nbsp;!
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
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  s4 \bar "|."
}
verseStropheMusicSoprano = \relative c'' {
  bf\breve a1 g4
  a\breve g1 fs4
  g\breve a1 bf4
  a\breve g1 fs4
  a4^\markup { &dagger; \italic flexe}
  }
verseMusicSoprano = \relative c'' {
  }
verseStropheMusicAlto = \relative c'' {
  g\breve fs1 ef4
  ef\breve d1 d4
  d\breve f1 f4
  ef\breve ef1 d4
  fs4
  }
verseMusicAlto = \relative c'' {
  }

verseStropheMusicTenor = \relative c' {
  d\breve c1 bf4
  c\breve bf1 c4
  bf\breve c1 d4
  c\breve c1 c4
  c4
  }
verseMusicTenor = \relative c' {
  }

verseStropheMusicBass = \relative c {
  g\breve d'1 ef4
  c\breve g'1 d4
  g\breve f1 bf,4
  c\breve c1 d4
  d4
  }
verseMusicBass = \relative c' {
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \fill-line {
    \left-column {
      \left-column{
        \concat { \typewriter "1. " "Au bord des fleuves de Babyl" \underline o "ne" \super &dagger;}
        \concat { \typewriter "     " "nous étions ass" \underline i "s et nous pleurions,"}
        \concat { \typewriter "   " "nous souven" \underline a "nt de Sion ;"}
        \concat { \typewriter "   " "aux sa" \underline u "les des alentours"}
        \concat { \typewriter "   " "nous avions pend" \underline u " nos harpes."}
      }
    }
    \left-column{
      \left-column {
        \concat { \typewriter "2. " "C’est là que nos vainque" \underline u "rs" \super &dagger;}
        \concat { \typewriter "        " "nous demand" \underline è "rent des chansons,"}
        \concat { \typewriter "   " "et nos bourre" \underline a "ux, des airs joyeux :"}
        \concat { \typewriter "   " "« Chantez-no" \underline u "s, disaient-ils,"}
        \concat { \typewriter "   " "quelque ch" \underline a "nt de Sion. »"}
      }
    }
  }
  \vspace #0.8
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \fill-line {
    \left-column {
      \left-column {
        \concat { \typewriter "3. " "Comment chanterions-no" \underline u "s un chant"}
        \concat { \typewriter "        " "du Seigneur"}
        \concat { \typewriter "   " "sur une t" \underline e "rre étrangère ?"}
        \concat { \typewriter "   " "Si je t’oubl" \underline i "e, Jérusalem,"}
        \concat { \typewriter "   " "que ma main dr" \underline o "ite m’oublie !"}
      }
    }
    \left-column{
      \left-column {
        \concat { \typewriter "4. " "Je veux que ma langue s’att" \underline a "che à mon"}
        \concat { \typewriter "        " "palais"}
        \concat { \typewriter "   " "si je p" \underline e "rds ton souvenir,"}
        \concat { \typewriter "   " "si je n’él" \underline è "ve Jérusalem"}
        \concat { \typewriter "   " "au somm" \underline e "t de ma joie."}
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