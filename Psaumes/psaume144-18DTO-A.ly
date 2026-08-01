\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

scoreHeader = \header {
  title = "Psaume 144"
  subtitle = "18ème dimanche du Temps Ordinaire, Année A"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, juillet 2026"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Global  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \time 2/4 \key d \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  \partial 8 s2*6 \bar "|." \break
  }

antiphonMusicCounterpoint = {}

antiphonMusicSoprano = \relative c' {
  d8 fs4 g8 a b4 b4 a2
  r8 a8 g fs e4 e4 d2
  }

antiphonMusicAlto = \relative c' {
  r8 d4 d d d cs2
  d4 d d d8 cs a2
  }

antiphonMusicTenor =  \relative c' {
  r8 a4 g4 g g a2
  b4 b b a8 g fs2
  }

antiphonMusicBass =  \relative f {
  r8 d4 b8 a g4 e' fs2
  b,4 e8 fs g4 a8 a, d2
  }

antiphonLyrics = \lyricmode {
  Tu ou -- vres tes mains, Sei -- gneur&nbsp;: nous voi -- ci ras -- sa -- siés
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
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 s4\bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "|." \break
  \cadenzaOff
  \markCustom "Psalmodie par verset"
  \cadenzaOn
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "|." \break
  \cadenzaOff
  }

verseMusicSoprano = \relative c' {
  fs\breve fs1 e4 d
  e\breve fs1 e4
  fs\breve fs1 e4 d4
  d\breve cs1 d4

  fs\breve fs1 e4 d
  e\breve fs1 e4
  }

verseMusicAlto = \relative f' {
  d\breve cs1 cs4 b
  d\breve cs1 cs4
  d\breve d1 cs4 b
  b\breve a1 a4

  d\breve cs1 cs4 b
  d\breve cs1 cs4
  }

verseMusicTenor = \relative c' {
  a\breve a1 g4 fs4
  b\breve a1 a4
  a\breve fs1 fs4 fs
  g\breve g1 fs4

  a\breve a1 g4 fs4
  b\breve a1 a4
  }

verseMusicBass = \relative f {
  d\breve a1 a4 b4
  g\breve fs1 a4
  a\breve as1 as!4 b4
  g\breve a1 d4

  d\breve a1 a4 b4
  g\breve fs1 a4
  }

verseLyrics = \markup {
  \override #'(font-size . 2)
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Le Seigneur est tendr" \underline e "sse et pitié," }
        \concat { \typewriter "   " "lent à la col" \underline è "re et plein d’amour&nbsp;;" }
        \concat { \typewriter "   " "la bonté du Seign" \underline e "ur est pour tous," }
        \concat { \typewriter "   " "sa tendresse, pour t" \underline o "utes ses œuvres." }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Les yeux sur toi, t" \underline o "us, ils espèrent&nbsp;:" }
        \concat { \typewriter "   " "tu leur donnes la nourrit" \underline u "re au temps voulu&nbsp;;" }
        \concat { \typewriter "   " "tu " \underline o "uvres ta main&nbsp;:" }
        \concat { \typewriter "   " "tu rassasies avec bont" \underline é " tout ce qui vit." }
      }
    }
    \vspace #2
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Le Seigneur est juste en t" \underline o "utes ses voies," }
        \concat { \typewriter "   " "fidèle en t" \underline o "ut ce qu’il fait." }
        \concat { \typewriter "   " "Il est proche de tous c" \underline e "ux qui l’invoquent," }
        \concat { \typewriter "   " "de tous ceux qui l’inv" \underline o "quent en vérité." }
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