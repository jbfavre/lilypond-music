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
  title = "Psaume 145"
  subtitle = \markup { \column { "3e dimanche de l'Avent" "Gaudete" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, décembre 2022"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antienne %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \key d \minor
  \time 2/4
  \tempo "Pas trop lent" 4 = 65
}

antiphonRythm = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  s2*8 \bar "|." \break
  }

antiphonMusicSoprano = \relative c'' {
  d4 cs d bf g g a2 \breathe
  a4 g f f e e d2
}

antiphonMusicAlto = \relative g' {
  f4 e d d e e e2
  e4 e4 d4 d4 d8 b d cs d2
  }

antiphonMusicTenor =  \relative c' {
  a4 a a bf d d d8 b cs4
  cs4 d4 a4 a4 a4 a4 d2
  }

antiphonMusicBass =  \relative f {
  d4 e f g8 (a) bf4 bf, a2 \breathe
  a4 b8 cs \breathe d e f g a4 a,4 d2
  }

antiphonLyricsSoprano = \lyricmode {
  Viens, Sei -- gneur, et sau -- ve nous&nbsp;!
  Viens, Sei -- gneur, et sau -- ve nous&nbsp;!
  }
antiphonLyricsAlto = \lyricmode {
  Viens, Sei -- gneur, et sau -- ve nous&nbsp;!
  Viens, Sei -- gneur, et sau -- ve, sau -- ve nous&nbsp;!
  }
antiphonLyricsTenor = \lyricmode {
  Viens, Sei -- gneur, et sau -- ve, sau -- ve nous&nbsp;!
  Viens, Sei -- gneur, et sau -- ve nous&nbsp;!
  }
antiphonLyricsBass =  \lyricmode {
  Viens, Sei -- gneur, et sau -- ve nous&nbsp;!
  Viens, Sei -- gneur, Viens, Sei -- gneur, et sau -- ve nous&nbsp;!
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%     Versets     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseRythm = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie"
  \cadenzaOn
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "|." \break
  \cadenzaOff
  }

verseMusicSoprano = \relative c' {
  d\breve d1 e4
  fs\breve fs1 g4
  g\breve g1 f4
  f\breve e1 e4
  }

verseMusicAlto = \relative f {
  a\breve a1 a4
  d\breve d1 d4
  e\breve e1 e4
  d\breve d1 d4
  }

verseMusicTenor = \relative c {
  f\breve f1 g4
  a\breve a1 g4
  bf\breve bf1 a4
  g\breve bf1 a4
  }

verseMusicBass = \relative f {
  d\breve d1 cs4
  c\breve c1 bf4
  g\breve g1 d'4
  bf\breve g1 a4
  }

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 1.8)
  {
    \column {
      \fill-line{
        \center-column {
          "Pour la forme directe avec alternance par verset,"
          "on ne prendra que les première et dernière mesures de la psalmodie"}
      }
      \vspace #2
      \fill-line {
        \column{
          \concat { \typewriter "1. " "Le Seigneur fait just" \underline i "ce aux opprimés," }
          \concat { \typewriter "   " "aux affamés, il d" \underline o "nne le pain," }
          \concat { \typewriter "   " "Le Seigneur dél" \underline i "e les enchaînés." }
        }
        \left-column{
          \concat { \typewriter "2. " "Le Seigneur ouvre les y" \underline e "ux des aveugles," }
          \concat { \typewriter "   " "le Seigneur redr" \underline e "sse les accablés," }
          \concat { \typewriter "   " "Le Seigneur a" \underline i "me les justes." }
        }
      }
      \vspace #1
      \fill-line {
        \column{
          \concat { \typewriter "3. " "Le Seigneur prot" \underline è "ge l'étranger," }
          \concat { \typewriter "   " "il soutient la v" \underline e "uve et l'orphelin." }
          \concat { \typewriter "   " "D'âge en âge, le Seigne" \underline u "r régnera." }
        }
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
    #(layout-set-staff-size 16.7)
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
        \keyTime \tempo 4 = 50 \clef treble
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
