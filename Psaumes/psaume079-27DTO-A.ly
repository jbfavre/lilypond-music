\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

scoreHeader = \header {
  title = "Psaume 79"
  subtitle = "27ème dimanche du Temps Ordinaire, Année A"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, septembre 2026"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Global  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \time 4/4 \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  \partial 4 s4 s1*5 \bar "|." \break
  }

antiphonMusicCounterpoint = {}

antiphonMusicSoprano = \relative c' {
  d4 a' f g a bf d c bf a a g f e2 d4 c d1
  }

antiphonMusicAlto = \relative c' {
  r4 f1 g2 g f d d a4 a a1
  }

antiphonMusicTenor =  \relative c' {
  r4 d1 d2 e4 d c2 bf bf f4 e f1
  }

antiphonMusicBass =  \relative f {
  r4 d1 g,2 c f4 f, bf a g2 a4 a d1
  }

antiphonLyrics = \lyricmode {
  La vi -- gne du Sei -- gneur de l’u -- ni -- vers, c’est la mai -- son d’Is -- ra -- ël.
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
  \tAcceBreve s\breve \tRall s4 \bar "||"
  \tAcceBreve s\breve \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "|." \break
  \cadenzaOff
  \markCustom "Psalmodie par verset"
  \cadenzaOn
  \tAcceBreve s\breve \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "|." \break
  \cadenzaOff
  }

verseMusicSoprano = \relative c' {
  f\breve g4
  g\breve a4
  g\breve f1 e4
  e\breve e1 d4

  f\breve g4
  f\breve e1 d4
  }

verseMusicAlto = \relative f' {
  d\breve d4
  e\breve c4
  d\breve d1 d4
  d\breve c1 a4

  d\breve d4
  d\breve c1 a4
  }

verseMusicTenor = \relative c' {
  a\breve bf4
  bf\breve a4
  bf\breve bf1 bf4
  a\breve a1 f4

  a\breve bf4
  a\breve a1 f4
  }

verseMusicBass = \relative f {
  d\breve g,4
  c\breve f4
  bf,\breve a1 g4
  a\breve a1 d4

  d\breve g,4
  a\breve a1 d4
  }

verseLyrics = \markup {
  \override #'(font-size . 2)
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "La vigne que tu as pr" \underline i "se à l’Égypte,"}
        \concat { \typewriter "   " "tu la replantes en chass" \underline a "nt des nations."}
        \concat { \typewriter "   " "Elle étendait ses sarm" \underline e "nts jusqu’à la mer,"}
        \concat { \typewriter "   " "et ses rej" \underline e "ts, jusqu’au Fleuve."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Pourquoi as-tu perc" \underline é " sa clôture&nbsp;?"}
        \concat { \typewriter "   " "Tous les passants y grapp" \underline i "llent en chemin&nbsp;;"}
        \concat { \typewriter "   " "le sanglier des for" \underline ê "ts la ravage"}
        \concat { \typewriter "   " "et les bêtes des ch" \underline a "mps la broutent."}
      }
    }
    \vspace #2
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Dieu de l’univ" \underline e "rs, reviens&nbsp;!"}
        \concat { \typewriter "   " "Du haut des cieux, reg" \underline a "rde et vois&nbsp;:"}
        \concat { \typewriter "   " "visite cette v" \underline i "gne, protège-la,"}
        \concat { \typewriter "   " "celle qu’a plant" \underline é "e ta main puissante."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "4. " "Jamais plus nous n’ir" \underline o "ns loin de toi&nbsp;:"}
        \concat { \typewriter "   " "fais-nous vivre et invoqu" \underline e "r ton nom&nbsp;!"}
        \concat { \typewriter "   " "Seigneur, Dieu de l’univers, fais-n" \underline o "us revenir&nbsp;;"}
        \concat { \typewriter "   " "que ton visage s’éclaire, et nous ser" \underline o "ns sauvés."}
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