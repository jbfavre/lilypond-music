\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

scoreHeader = \header {
  title = "Psaume 118"
  subtitle = "17ème dimanche du Temps Ordinaire, Année A"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, juillet 2026"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Global  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \time 3/4 \key g \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  s2.*8 \bar "|." \break
  }

antiphonMusicCounterpoint = {}

antiphonMusicSoprano = \relative c' {
  d4 e fs a2. b4 g fs e2.
  d4 e fs fs2. e2. d2.
  }

antiphonMusicAlto = \relative c' {
  d4 e fs fs2. d d2 cs4 b2. b cs2 b4 a2.
  }

antiphonMusicTenor =  \relative c' {
  d2. d b b4 a g fs2. g g4 fs e fs2.
  }

antiphonMusicBass =  \relative f {
  d2. c g a b2 a4 g2. a d
  }

antiphonLyrics = \lyricmode {
  Dans ton a -- mour j'ai -- me ta loi, j'ai -- me ta loi Sei -- gneur&nbsp;!
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
  \markCustom "Psalmodie par strophe"
  \cadenzaOn
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 s \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "|." \break
  \cadenzaOff
  }

verseMusicSoprano = \relative c' {
  fs\breve a1 fs4
  fs\breve e1 fs4
  fs\breve fs1 e4 d
  d\breve e1 e4
  }

verseMusicAlto = \relative f' {
  d\breve e1 d4
  d\breve d1 d4
  cs\breve cs!1 cs!4 b4
  b\breve b1 cs4
  }

verseMusicTenor = \relative c' {
  a\breve a1 b4
  b\breve b1 a4
  a\breve fs1 fs4 fs4
  g\breve g1 g4
  }

verseMusicBass = \relative f {
  d\breve cs1 b4
  g\breve a1 d4
  a\breve as1 as!4 b
  g\breve e1 a?4
  }

verseLyrics = \markup {
  \override #'(font-size . 2)
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Mon partage, Seigne" \underline u "r, je l’ai dit," }
        \concat { \typewriter "   " "c’est d’observ" \underline e "r tes paroles." }
        \concat { \typewriter "   " "Mon bonheur, c’est la l" \underline o "i de ta bouche," }
        \concat { \typewriter "   " "plus qu’un monceau d’" \underline o "r ou d’argent." }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Que j’aie pour consolati" \underline o "n ton amour" }
        \concat { \typewriter "   " "selon tes promess" \underline e "s à ton serviteur !" }
        \concat { \typewriter "   " "Que vienne à moi ta tendr" \underline e "sse, et je vivrai :" }
        \concat { \typewriter "   " "ta loi f" \underline a "it mon plaisir." }
      }
    }
    \vspace #2
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Aussi j’" \underline a "ime tes volontés," }
        \concat { \typewriter "   " "plus que l’" \underline o "r le plus précieux." }
        \concat { \typewriter "   " "Je me règle sur chac" \underline u "n de tes préceptes," }
        \concat { \typewriter "   " "je hais tout chem" \underline i "n de mensonge." }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "4. " "Quelle merv" \underline e "ille, tes exigences," }
        \concat { \typewriter "   " "aussi mon " \underline â "me les garde !" }
        \concat { \typewriter "   " "Déchiffrer ta par" \underline o "le illumine" }
        \concat { \typewriter "   " "et les s" \underline i "mples comprennent." }
      }
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