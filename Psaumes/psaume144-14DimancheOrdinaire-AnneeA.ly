\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "../libs/commonFunctions.ily"
\include "../libs/translations/fr.ily"
\include "../libs/settings.ily"

scoreHeader = \header {
  title = "Psaume 144"
  subtitle = \markup { \column { "14e dimanche du temps ordinaire" "Année A" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, mai 2020"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antienne %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \key g \minor
  \time 2/4
  \tempo "Pas trop lent" 4 = 60
}

antiphonRythm = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  \partial 8 s8
  s2*6 \bar "|." \break
  }

antiphonMusicSoprano = \relative c'' {
  \partial 8 g8 bf4. g8 c4. a8 c bf bf a a g g f g4 g g2
}

antiphonMusicAlto = \relative g' {
  \partial 8 r8 r8 g8 g g g4. g8 a bf g a f g ef f d4 ef d2
  }

antiphonMusicTenor =  \relative c' {
  \partial 8 r8 r8 d8 d d d4 c8 ef8 d4 d8 (c) c (bf) a c c4 c8 (a) b2
  }

antiphonMusicBass =  \relative f {
  \partial 8 r8 r8 g8 f f ef4. c8 g'4 f ef d g g g2
  }

antiphonLyricsSoprano = \lyricmode {
  Mon Dieu, mon Roi, je bé -- ni -- rai ton nom tou -- jours et à ja -- mais&nbsp;!
  }
antiphonLyricsAlto = \lyricmode {
  Mon Dieu, mon Roi, je bé -- ni -- rai ton nom tou -- jours et à ja -- mais&nbsp;!
  }
antiphonLyricsTenor = \lyricmode {
  Mon Dieu, mon Roi, je bé -- nis ton nom tou -- jours, à ja -- mais&nbsp;!
  }
antiphonLyricsBass = \lyricmode {
  Mon Dieu, mon Roi, je bé -- nis ton nom, à ja -- mais&nbsp;!
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%     Versets     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseRythm = {
  \antiphonRythm
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par verset"
  \cadenzaOn
  s\breve s1 s4 s \bar "||"
  s\breve s1 s4 s s \bar "|." \break
  }

verseMusicSoprano = \relative c'' {
  \antiphonRythm
  bf\breve bf1 bf4 c
  a\breve a1 a4 bf g
  }

verseMusicAlto = \relative f' {
  \antiphonRythm
  g\breve f1 e4 ef
  g\breve fs1 fs4 fs4 d
  }

verseMusicTenor = \relative c' {
  \antiphonRythm
  d\breve d1 d4 c
  ef\breve ef1 d4 c bf
  }

verseMusicBass = \relative f {
  \antiphonRythm
  g\breve g1 g4 g
  c,\breve d1 d4 fs g
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 1.8)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Je t’exalterai, mon Die" \underline u ", mon Roi," }
      \concat { \typewriter "   " "je bénirai ton nom toujo" \underline u "rs et à jamais&nbsp;!" }
      \concat { \typewriter "   " "Chaque jour je te b" \underline é "nirai," }
      \concat { \typewriter "   " "je louerai ton nom toujo" \underline u "rs et à jamais." }
      \vspace #1
      \concat { \typewriter "2. " "Le Seigneur est tendr" \underline e "sse et pitié," }
      \concat { \typewriter "   " "lent à la col" \underline è "re et plein d’amour&nbsp;;" }
      \concat { \typewriter "   " "la bonté du Seigne" \underline u "r est pour tous," }
      \concat { \typewriter "   " "sa tendresse, pour to" \underline u "tes ses œuvres." }
    }
    \hspace #1
    \left-column {
      \concat { \typewriter "3. " "Que tes œuvres, Seigne" \underline u "r, te rendent grâce" }
      \concat { \typewriter "   " "et que tes fid" \underline è "les te bénissent&nbsp;!" }
      \concat { \typewriter "   " "Ils diront la gl" \underline o "ire de ton règne," }
      \concat { \typewriter "   " "ils parler" \underline o "nt de tes exploits." }
      \vspace #1
      \concat { \typewriter "4. " "Le Seigneur est vrai en t" \underline o "ut ce qu’il dit," }
      \concat { \typewriter "   " "fidèle en to" \underline u "t ce qu’il fait." }
      \concat { \typewriter "   " "Le Seigneur souti" \underline e "nt tous ceux qui tombent," }
      \concat { \typewriter "   " "il redresse to" \underline u "s les accablés." }
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
      \new Staff = "antiphonAltoStaff" \with {
        instrumentName = "Alto"
        shortInstrumentName = "A"
      }
      <<
        \clef "treble"
        \keyTime
        \antiphonRythm
        \new Voice = "antiphonAlto" { \antiphonMusicAlto \fermata }
        \new Lyrics \lyricsto "antiphonAlto" \antiphonLyricsAlto
      >>
      \new Staff = "antiphonTenorStaff" \with {
        instrumentName = "Ténor"
        shortInstrumentName = "T"
      }
      <<
        \clef "treble_8"
        \keyTime
        \antiphonRythm
        \new Voice = "antiphonTenor" { \antiphonMusicTenor \fermata }
        \new Lyrics \lyricsto "antiphonTenor" \antiphonLyricsTenor
      >>
      \new Staff  = "antiphonBassStaff" \with {
        instrumentName = "Basse"
        shortInstrumentName = "B"
      }
      <<
        \clef "bass"
        \keyTime
        \antiphonRythm
        \new Voice = "antiphonBass" { \antiphonMusicBass \fermata }
        \new Lyrics \lyricsto "antiphonBass" \antiphonLyricsBass
      >>
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
      \new Staff = "verseChoirStaffSA"
      \with { shortInstrumentName = \markup { \right-column { "S" "A" } } }
      <<
        \clef treble
        \keyTime
        \verseRythm
        \partcombine
        \verseMusicSoprano
        \verseMusicAlto
      >>
      \new Staff = "verseChoirStaffTB"
      \with { shortInstrumentName = \markup { \right-column { "T" "B" } } }
      <<
        \clef bass
        \keyTime
        \verseRythm
        \partcombine
        \verseMusicTenor
        \verseMusicBass
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
    \new PianoStaff = "antiphonMusic" \with {
      instrumentName = #"Orgue"
      shortInstrumentName = #"O"
    }
    <<
      \new Staff <<
        \keyTime \tempo 4 = 60 \clef treble
        \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
        \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
      >>
      \new Staff <<
        \keyTime \clef bass
        \new Voice = "antiphonMusicTenor" \antiphonMusicTenor
        \new Voice = "antiphonMusicBass" \antiphonMusicBass
      >>
    >>
    \new ChoirStaff = "verseMusic"
    <<
      \new Staff = "verseMusicSA" \with {
        shortInstrumentName = \markup { \right-column { "S" "A" } }
      }
      <<
        \keyTime
        \clef treble
        \verseRythm
        \partcombine
        \new Voice = "verseMusicSoprano" \verseMusicSoprano
        \new Voice = "verseMusicAlto" \verseMusicAlto
      >>
      \new Staff = "verseMusicTB" \with {
        shortInstrumentName = \markup { \right-column { "T" "B" } }
      }
      <<
        \keyTime
        \clef bass
        \verseRythm
        \new Voice = "verseMusicTenor" \verseMusicTenor
        \new Voice = "verseMusicBass" \verseMusicBass
      >>
    >>
  >>
  \midi {}
}
\verseLyrics