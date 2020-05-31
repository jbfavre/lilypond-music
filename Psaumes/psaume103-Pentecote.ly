\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

scoreHeader = \header {
  title = "Psaume 103"
  subtitle = "Pentecôte"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, mai 2020"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Global  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \time 6/4 \key a \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne Alleluiatique"
  \time 6/4
  s2. s2. s2. s2.
  \time 4/4 s1 s1 \bar "|." \break
  }

antiphonMusicCounterpoint = \relative c'' {
  r2. e8 (fs) e (d) cs b cs2 cs4 fs8 (gs) fs (e) d e
  fs4 a gs2 a1
  }
%antiphonMusicCounterpoint = \relative c'' {
%  r2. b4. cs8 d e cs2 cs4 b4. cs8 d e
%  fs4 fs e2 e1
%  }

antiphonMusicSoprano = \relative c'' {
  a4. cs8 a4 b2. cs4. b8 a4 b2.
  b4 a gs2 a1
  }

antiphonMusicPianoSoprano = \relative c'' {
  a4. cs8 a4 b4. cs8 d e cs4. b8 a4 b4. cs8 d e
  b4 a gs2 a1
  }
antiphonMusicAlto = \relative c' {
  e4. a8 e4 e2. fs4. fs8 fs4 fs2.
  fs4 fs e2 e1
  }

antiphonMusicTenor =  \relative c' {
  cs4. e8 cs4 b2. a4. cs8 cs4 b2.
  d4 d d2 cs1
  }

antiphonMusicBass =  \relative f {
  a4. a8 a4 gs2. fs4. fs8 e4 d2.
  b4 b e2 a,1
  }

antiphonLyrics = \lyricmode {
  Al -- le -- lu -- ia, Al -- le -- lu -- ia, Al -- le -- lu -- ia&nbsp;!
  }

antiphonLyricsCounterpoint = \lyricmode {
  Al -- le -- lu -- ia, A -- men, Al -- le -- lu -- ia, Al -- le -- lu -- ia&nbsp;!
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseRythm = \relative c' {
  \antiphonRythm \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe"
  \cadenzaOn
  s\breve s1 s4 s \bar "||"
  s\breve s1 s4 s s \bar "||"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 s s \bar "|."
  }
verseMusicSoprano = \relative c' {
  \antiphonRythm
  e\breve fs1 gs4 a
  a\breve b1 b4 b cs
  cs\breve b1 a4
  b\breve a1 a4 gs a
  }

verseMusicAlto = \relative c' {
  \antiphonRythm
  cs\breve d1 es4 fs
  fs\breve fs1 gs4 fs es!
  e\breve e1 fs4
  fs\breve e1 e4 e e
  }

verseMusicTenor = \relative f {
  \antiphonRythm
  a\breve a1 cs4 cs
  d\breve b1 b4 b gs
  a\breve gs1 cs4
  b\breve b1 b4 d cs
  }

verseMusicBass = \relative f, {
  \antiphonRythm
  a\breve d1 cs4 fs
  d\breve d1 d4 d cs
  a\breve e'1 fs4
  d\breve e1 e4 e a,
  }

verseLyrics = \markup {
  \override #'(font-size . 2)
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Bénis le Seigne" \underline u "r, ô mon âme," }
        \concat { \typewriter "   " "Seigneur mon Die" \underline u ", tu es si grand !" }
        \concat { \typewriter "   " "Quelle profusion dans tes œ" \underline u "vres, Seigneur !" }
        \concat { \typewriter "   " "La terre s’empl" \underline i "t de tes biens." }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Tu reprends leur so" \underline u "ffle, ils expirent" }
        \concat { \typewriter "   " "et reto" \underline u "rnent à leur poussière." }
        \concat { \typewriter "   " "Tu envoies ton so" \underline u "ffle : ils sont créés ;" }
        \concat { \typewriter "   " "tu renouvelles la f" \underline a "ce de la terre." }
      }
    }
    \vspace #2
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Gloire au Seigne" \underline u "r à tout jamais !" }
        \concat { \typewriter "   " "Que Dieu se réjou" \underline i "sse en ses œuvres !" }
        \concat { \typewriter "   " "Que mon poème lui s" \underline o "it agréable ;" }
        \concat { \typewriter "   " "moi, je me réjou" \underline i "s dans le Seigneur." }
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
      \new Staff = "antiphonCounterpointStaff" \with {
        instrumentName = "Ctre-chant"
        shortInstrumentName = "C"
      }
      <<
        \clef "treble"
        \keyTime
        \antiphonRythm
        \new Voice = "antiphonCounterpoint" { \antiphonMusicCounterpoint \fermata }
        \new Lyrics \lyricsto "antiphonCounterpoint" \antiphonLyricsCounterpoint
      >>
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
    }
    <<
      \new Staff = "antiphonPianoStaffSA"
      <<
        \clef treble
        \keyTime
        \new Voice = "antiphonMusicSoprano" { \voiceOne \antiphonMusicPianoSoprano }
        \new Voice = "antiphonMusicAlto" { \voiceTwo \antiphonMusicAlto }
      >>
      \new Staff = "antiphonPianoStaffTB"
      <<
        \clef bass
        \keyTime
        \new Voice = "antiphonMusicTenor" { \voiceThree \antiphonMusicTenor }
        \new Voice = "antiphonMusicBass" { \voiceFour \antiphonMusicBass }
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
        \keyTime \tempo 2. = 80 \clef treble
        \new Voice = "antiphonMusicCounterpoint" \antiphonMusicCounterpoint
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
