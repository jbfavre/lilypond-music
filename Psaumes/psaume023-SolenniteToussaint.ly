\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

scoreHeader = \header {
  title = "Psaume 23"
  subtitle = "Solennité de la Toussaint"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, octobre 2026"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Global  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \key g \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  \partial 8 s8 s4.*6 \bar "|." \break
  }

antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  d8 g4 g8 a8 g a b4 a8 g4 g8 a8 e g g4.
  }

antiphonMusicAlto = \relative c' {
  d8 d4 d8 fs8 fs fs fs4 fs8 e4 e8 e8 e e d4.
  }

antiphonMusicTenor =  \relative c' {
  d8 b4 b8 c8 c c b4 b8 b4 b8 c8 c c b4.
  }

antiphonMusicBass =  \relative c' {
  r8 g8 g g8 d8 d d ds4 ds8 e4 d8 c8 c c g'4.
  }

antiphonLyrics = \lyricmode {
  Voi -- ci le peu -- ple de ceux qui cherchent ta fa -- ce, Sei -- gneur.
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseRythm = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par verset"
  \cadenzaOn
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tRall s4 s s s \bar "|." \break
  \cadenzaOff
  }


verseMusicSoprano = \relative c' {
  b'\breve c1 b4
  a\breve a4 a a g4
  }

verseMusicAlto = \relative c' {
  g'\breve a1 g4
  g\breve fs4 fs fs d
  }

verseMusicTenor = \relative c' {
  d\breve e1 d4
  e\breve e4 d c b4
  }

verseMusicBass = \relative f {
  g\breve c,1 g'4
  c,\breve d4 d d g
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Au Seigneur, le m" \underline o "nde et sa richesse," }
      \concat { \typewriter "   " "la terre et to" \underline u "s ses habitants&nbsp;!" }
      \concat { \typewriter "   " "C’est lui qui l’a fond" \underline é "e sur les mers" }
      \concat { \typewriter "   " "et la garde inébranl" \underline a "ble sur les flots." }
      \vspace #1
      \concat { \typewriter "2. " "Qui peut gravir la mont" \underline a "gne du Seigneur" }
      \concat { \typewriter "   " "et se ten" \underline i "r dans le lieu saint&nbsp;?" }
      \concat { \typewriter "   " "L’homme au cœur pur, aux m" \underline a "ins innocentes," }
      \concat { \typewriter "   " "qui ne livre pas son " \underline â "me aux idoles." }
      \vspace #1
      \concat { \typewriter "3. " "Il obtient, du Seigne" \underline u "r, la bénédiction," }
      \concat { \typewriter "   " "et de Dieu son Sauve" \underline u "r, la justice." }
      \concat { \typewriter "   " "Voici le peuple de ce" \underline u "x qui le cherchent&nbsp;!" }
      \concat { \typewriter "   " "Voici Jacob qui rech" \underline e "rche ta face&nbsp;!" }

    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partition = <<
    % Antienne à 4 voix mixtes
    \new ChoirStaff = "antiphonChoirStaff"
    <<
      \new Staff = "antiphonSopranoStaff" \with {
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      }
      <<
        \clef "treble"
        \keyTime
        \antiphonRythm
        \new Voice = "antiphonSoprano" { \antiphonMusicSoprano \fermata }
        \new Lyrics \lyricsto "antiphonSoprano" \antiphonLyricsSoprano
      >>
%       \new Staff = "antiphonAltoStaff" \with {
%         instrumentName = "Alto"
%         shortInstrumentName = "A"
%       }
%       <<
%         \clef "treble"
%         \keyTime
%         \antiphonRythm
%         \new Voice = "antiphonAlto" { \antiphonMusicAlto \fermata }
%         \new Lyrics \lyricsto "antiphonAlto" \antiphonLyricsAlto
%       >>
%       \new Staff = "antiphonTenorStaff" \with {
%         instrumentName = "Ténor"
%         shortInstrumentName = "T"
%       }
%       <<
%         \clef "treble_8"
%         \keyTime
%         \antiphonRythm
%         \new Voice = "antiphonTenor" { \antiphonMusicTenor \fermata }
%         \new Lyrics \lyricsto "antiphonTenor" \antiphonLyricsTenor
%       >>
%       \new Staff  = "antiphonBassStaff" \with {
%         instrumentName = "Basse"
%         shortInstrumentName = "B"
%       }
%       <<
%         \clef "bass"
%         \keyTime
%         \antiphonRythm
%         \new Voice = "antiphonBass" { \antiphonMusicBass \fermata }
%         \new Lyrics \lyricsto "antiphonBass" \antiphonLyricsBass
%       >>
    >>
    % Accompagnement Piano / Orgue
    \new PianoStaff = "antiphonPianoStaff" \with {
      instrumentName = #"Orgue"
      shortInstrumentName = #"O"
      \hide PhrasingSlur
      \hide Slur
      \hide Hairpin
      \omit DynamicText
      \omit TextScript
    }
    <<
      \new Staff = "antiphonPianoStaffSA"
      <<
        \clef treble
        \keyTime
        \new Voice = "antiphonMusicSoprano" { \voiceOne \antiphonMusicSoprano \fermata }
        \new Voice = "antiphonMusicAlto" { \voiceTwo \antiphonMusicAlto }
      >>
      \new Staff = "antiphonPianoStaffTB"
      <<
        \clef bass
        \keyTime
        \new Voice = "antiphonMusicTenor" { \voiceThree \antiphonMusicTenor }
        \new Voice = "antiphonMusicBass" { \voiceFour \antiphonMusicBass \fermata }
      >>
    >>
    % Psalmodie à 4 voix mixtes
    \new ChoirStaff = "verseChoirStaff"
    \with { printPartCombineTexts = ##f }
    <<
      \new Staff = "verseMusicSA" \with {
        shortInstrumentName = \markup { \right-column { "S" "A" } }
      }
      <<
        \keyTime
        \clef treble
        \new Voice { \antiphonRythm \verseRythm }
        \new Voice = "verseMusicSoprano" { \voiceOne \antiphonRythm \verseMusicSoprano }
        \new Voice = "verseMusicAlto" { \voiceTwo \antiphonRythm \verseMusicAlto }
      >>
      \new Staff = "verseMusicTB" \with {
        shortInstrumentName = \markup { \right-column { "T" "B" } }
      }
      <<
        \keyTime
        \clef bass
        \new Voice { \antiphonRythm \verseRythm }
        \new Voice = "verseMusicTenor" { \voiceOne \antiphonRythm \verseMusicTenor }
        \new Voice = "verseMusicBass" { \voiceTwo \antiphonRythm \verseMusicBass }
      >>
    >>
  >>

% PDF output
\include "../libs/layouts/book-titling.ily"
\paper {
  #(include-special-characters)
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Latin Modern Roman"
     #:sans "Latin Modern Sans"
    ))
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
  top-margin = 1\cm
  bottom-margin = 1\cm
  %left-margin = 1\cm
  %right-margin = 1\cm
}

\score {
  \partition
  \layout {
    short-indent = 0.8\cm
    \context {
      \Score
      \override RehearsalMark.font-family = #'typewriter
    }
    \context {
      \Staff
      \RemoveEmptyStaves
    }
    \context {
      \ChoirStaff
      \override VerticalAxisGroup.remove-first = ##t
      \override InstrumentName.font-family = #'sans
    }
    \context {
      \PianoStaff
      \override InstrumentName.font-family = #'sans
    }
  }
  \scoreHeader
}

% Midi output
\score {
  <<
    \new PianoStaff = "antiphonMusic" <<
      \new Staff <<
        \keyTime \tempo 4. = 70 \clef treble
        \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
        \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
      >>
      \new Staff <<
        \keyTime \clef bass
        \new Voice = "antiphonMusicTenor" \antiphonMusicTenor
        \new Voice = "antiphonMusicBass" \antiphonMusicBass
      >>
    >>
    \new ChoirStaff = "verseMusic" <<
      \new Staff = "verseMusicSA" <<
        \keyTime
        \clef treble
        \new Voice { \antiphonRythm \verseRythm \verseRythm }
        \new Voice = "verseMusicSoprano" { \voiceOne \antiphonRythm \verseMusicSoprano \verseMusicSoprano }
        \new Voice = "verseMusicAlto" { \voiceTwo \antiphonRythm \verseMusicAlto \verseMusicAlto }
      >>
      \new Staff = "verseMusicTB" <<
        \keyTime
        \clef bass
        \new Voice { \antiphonRythm \verseRythm \verseRythm }
        \new Voice = "verseMusicTenor" { \voiceOne \antiphonRythm \verseMusicTenor \verseMusicTenor }
        \new Voice = "verseMusicBass" { \voiceTwo \antiphonRythm \verseMusicBass \verseMusicBass }
      >>
    >>
  >>
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}
\verseLyrics