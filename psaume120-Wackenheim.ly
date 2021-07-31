\version "2.18.2"
\language "english"
\include "libs/commonFunctions.ily"

scoreHeader = \header {
  title = "Psaume 120"
  subtitle = \markup {}
  composer = "Wackenheim"
  poet = "AELF"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Global  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \time 6/8 \key ef \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  s4.*8 \bar "|." \break
  }

antiphonMusicSoprano = \relative c'' {
  r8 g af bf bf af g g c bf4.
  r8 g bf g4 ef8 f f f ef4. \fermata
  }

antiphonMusicAlto = \relative c'' {
  r8 g af g g f ef ef ef d4.
  r8 g g ef4 c8 d d d ef4.
  }

antiphonMusicTenor =  \relative f {
  }

antiphonMusicBass =  \relative f {
  r8 g8 af ef ef ef ef d c g'4.
  r8 ef d d4 c8 bf bf bf ef4.
  }

antiphonLyrics = \lyricmode {
  Le se -- cours me vien -- dra du Sei -- gneur,
  qui a fait le ciel et la terre
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass =  \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseRythm = \relative c' {
  \antiphonRythm \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe"
  \cadenzaOn
  s\breve s4 s \bar "||"
  s\breve s4 s \bar "||"
  s\breve s4 s \bar "||"
  s\breve s4 s \bar "||" \break
  }
verseMusicSoprano = \relative c'' {
  \antiphonRythm
  g\breve af4 bf
  af\breve ef4 g
  ef\breve f4 g
  f\breve c4 ef

  }

verseMusicAlto = \relative c' {
  }

verseMusicTenor = \relative c {
  }

verseMusicBass = \relative f {
  }

verseLyrics = \markup {
  \vspace #2
  \override #'(font-family . sans)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Je lève les yeux vers les montagnes&nbsp;:"}
        \concat { \typewriter "   " "d'où le secours me viendra-t-il&nbsp;?"}
        \concat { \typewriter "   " "Le secours me viendra du Seigneur"}
        \concat { \typewriter "   " "qui a fait le ciel et la terre."}
        \vspace #1
        \concat { \typewriter "2. " "Qu'il empêche ton pied de glisser,"}
        \concat { \typewriter "   " "qu'il ne dorme pas, ton gardien."}
        \concat { \typewriter "   " "Non, il ne dort pas, ne sommeille pas,"}
        \concat { \typewriter "   " "le gardien d'Israël."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "3. " "Le Seigneur, ton gardien, le Seigneur, ton ombrage,"}
        \concat { \typewriter "   " "se tient près de toi."}
        \concat { \typewriter "   " "Le soleil, pendant le jour, ne pourra te frapper,"}
        \concat { \typewriter "   " "ni la lune, durant la nuit."}
      \hspace #1
        \concat { \typewriter "4. " "Le Seigneur te gardera de tout mal,"}
        \concat { \typewriter "   " "il gardera ta vie."}
        \concat { \typewriter "   " "Le Seigneur te gardera, au départ et au retour,"}
        \concat { \typewriter "   " "maintenant, à jamais."}
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
      \new Staff = "antiphonSopranoStaff"
      <<
        \clef "treble"
        \keyTime
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonSoprano" { \antiphonMusicSoprano }
        \new Lyrics \lyricsto "antiphonSoprano" \antiphonLyricsSoprano
      >>
      \new Staff = "antiphonAltoStaff"
      <<
        \clef "trebel"
        \keyTime
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonAlto" { \antiphonMusicAlto }
        \new Lyrics \lyricsto "antiphonAlto" \antiphonLyricsAlto
      >>
%{      \new Staff = "antiphonTenorStaff"
      <<
        \clef "treble_8"
        \keyTime
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonTenor" { \antiphonMusicTenor }
        \new Lyrics \lyricsto "antiphonTenor" \antiphonLyricsTenor
      >>
%}      \new Staff = "antiphonBasseStaff"
      <<
        \clef "bass"
        \keyTime
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonBasse" { \antiphonMusicBass }
        \new Lyrics \lyricsto "antiphonBasse" \antiphonLyricsBass
      >>
    >>
    % Psalmodie à 4 voix mixtes
    \new ChoirStaff = "verseChoirStaff" \with { printPartCombineTexts = ##f }
    <<
      \new Staff = "verseChoirStaffSA"
      <<
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef treble
        \keyTime
        \new Voice \verseRythm
        \new Voice = "verseSoprano" { \voiceOne \verseMusicSoprano }
        \new Voice { \voiceTwo \verseMusicAlto }
      >>
    >>
  >>

% PDF output
\paper {
  top-margin = 2\cm
  bottom-margin = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  markup-system-spacing = #'((basic-distance . 5)
     (minimum-distance . 5)
     (padding . 1)
     (stretchability . 5))
  system-system-spacing = #'((basic-distance . 5)
     (minimum-distance . 5)
     (padding . 1)
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
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
  \scoreHeader
}
\verseLyrics