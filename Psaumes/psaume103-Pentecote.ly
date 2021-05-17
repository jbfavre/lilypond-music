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
  \time 6/4 \key g \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne Alleluiatique"
  \time 3/8
  s4.*6
  s4.*3 \bar "|." \break
  }

antiphonMusicCounterpoint = \relative c'' {
  }

antiphonMusicSoprano = \relative c'' {
    \autoBeamOff
    \repeat volta 2 {
      g8. b16 g8 a4. b8. a16 b8 g4 g8
    } \alternative {
      { c4 b8 a4. }
      { g8 fs4 g4. (g4.) }
    }
  }

antiphonMusicAlto = \relative c' {
    \autoBeamOff
    \repeat volta 2 {
      d8. d16 d8 fs4. fs8. fs16 fs8 e4 e8
    } \alternative {
      { e4 e8 d4. }
      { e8 d4 d4. (d4.) }
    }
  }

antiphonMusicTenor =  \relative c' {
    \autoBeamOff
    \repeat volta 2 {
      b8. b16 b8 c4. b8. b16 b8 b4 b8
    } \alternative {
      { a4 g8 fs4. }
      { a8 c c c b a b4. }
    }
  }

antiphonMusicBass =  \relative f {
    \autoBeamOff
    \repeat volta 2 {
      g8. g16 g8 d4. ds8. ds16 ds8 e4 d8
    } \alternative {
      { c8 cs4 d4. }
      { c8 d4 g,4. (g4.) }
    }
  }

antiphonLyrics = \lyricmode {
  Al -- le -- lu -- ia, Al -- le -- lu -- ia, Al -- le -- lu -- ia&nbsp;!
        le -- lu -- ia&nbsp;!
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
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 s \bar "||"
  \cadenzaOff
  s8^"Tous" s4 s4. \bar "||" \break
  \cadenzaOn
  s\breve s1 s4 s \bar "||"
  s\breve s1 s4 \bar "||"
  \cadenzaOff
  s8^"Tous" s4 s4. s4. s4. \bar "||"
  \cadenzaOn
  }
verseMusicSoprano = \relative c'' {
  \antiphonRythm
  b\breve a1 g4
  g\breve c1 b4 a
  \cadenzaOff
  g8. b16 g8 a4.
  \cadenzaOn
  b\breve a1 b4 g
  g\breve a1 a4
  \cadenzaOff
  g8. b16 g8 a4 a8
  g8 fs4 g4.
  \cadenzaOn
  }

verseMusicAlto = \relative c'' {
  \antiphonRythm
  g\breve fs1 e4
  e\breve e1 e4 d
  d8. d16 d8 fs4.
  g\breve fs1 fs4 e
  e\breve e1 fs4
  d8. d16 d8 fs4 e8
  d8 d4 d4.
  }

verseMusicTenor = \relative c' {
  \antiphonRythm
  d\breve d1 d4
  c\breve a1 g4 fs
  b8. b16 b8 a4.
  d\breve d1 b4 b
  c\breve c1 c4
  b8. b16 b8 c4 c8
  a8 c4 b4.
  }

verseMusicBass = \relative f, {
  \antiphonRythm
  g\breve d'1 e4
  c\breve c1 cs4 d
  g8. g16 g8 d4.
  g,\breve d'1 ds4 e
  c\breve a1 d4
  g8. g16 g8 d4 c8
  d8 d4 g,4.
  }

verseLyrics = \markup {
  \vspace #2
  \override #'(font-family . sans)
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
    \vspace #1
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
      %\new Staff = "antiphonCounterpointStaff" \with {
      %  instrumentName = "Ctre-chant"
      %  shortInstrumentName = "C"
      %}
      %<<
      %  \clef "treble"
      %  \keyTime
      %  \antiphonRythm
      %  \new Voice = "antiphonCounterpoint" { \antiphonMusicCounterpoint \fermata }
      %  \new Lyrics \lyricsto "antiphonCounterpoint" \antiphonLyricsCounterpoint
      %>>
      \new Staff = "antiphonSopranoStaff" \with { instrumentName = "S." shortInstrumentName = "S" }
      <<
        \clef "treble"
        \keyTime
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonSoprano" { \antiphonMusicSoprano }
        \new Lyrics \lyricsto "antiphonSoprano" \antiphonLyricsSoprano
      >>
      \new Staff = "antiphonAltoStaff" \with { instrumentName = "A." shortInstrumentName = "A" }
      <<
        \clef "treble"
        \keyTime
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonAlto" { \antiphonMusicAlto }
        \new Lyrics \lyricsto "antiphonAlto" \antiphonLyricsAlto
      >>
      \new Staff = "antiphonTenorStaff" \with { instrumentName = "T." shortInstrumentName = "T" }
      <<
        \clef "treble_8"
        \keyTime
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonTenor" { \antiphonMusicTenor }
        \new Lyrics \lyricsto "antiphonTenor" { \antiphonLyricsTenor \lyricmode { Al -- le -- lu -- ia&nbsp;! } }
      >>
      \new Staff  = "antiphonBassStaff" \with { instrumentName = "B." shortInstrumentName = "B" }
      <<
        \clef "bass"
        \keyTime
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonBass" { \antiphonMusicBass }
        \new Lyrics \lyricsto "antiphonBass" \antiphonLyricsBass
      >>
    >>
%{
    % Accompagnement Piano / Orgue
    \new PianoStaff = "antiphonPianoStaff" \with {
      instrumentName = #"O."
      shortInstrumentName = #"O"
      printPartCombineTexts = ##f
    }
    <<
      \new Staff = "antiphonPianoStaffSA"
      <<
        \clef treble
        \keyTime
        \new Voice = "antiphonMusicSoprano" { \voiceOne \antiphonMusicSoprano }
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
%}
    % Psalmodie à 4 voix mixtes
    \new ChoirStaff = "verseChoirStaff" \with { printPartCombineTexts = ##f }
    <<
      \new Staff = "verseChoirStaffSA"
      \with { shortInstrumentName = \markup { \right-column { "S" "A" } } }
      <<
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef treble
        \keyTime
        \new Voice \verseRythm
        \new Voice { \voiceOne \verseMusicSoprano }
        \new Voice { \voiceTwo \verseMusicAlto }
      >>
      \new Staff = "verseChoirStaffTB"
      \with { shortInstrumentName = \markup { \right-column { "T" "B" } } }
      <<
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef bass
        \keyTime
        \new Voice \verseRythm
        \new Voice { \voiceOne \verseMusicTenor }
        \new Voice { \voiceTwo \verseMusicBass }
      >>
    >>
  >>

% PDF output
\paper {
  top-margin = 2\cm
  bottom-margin = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  markup-system-spacing = #'((basic-distance . 17)
     (minimum-distance . 17)
     (padding . 7)
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

% Midi output
\score {
  <<
    \unfoldRepeats {
    \new PianoStaff = "antiphonMusic"
    <<
      \new Staff <<
        \keyTime \tempo 4. = 60 \clef treble
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
        \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
      >>
      \new Staff <<
        \keyTime \clef bass
        \new Dynamics \antiphonRythm
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
        \new Dynamics \antiphonRythm
        \new Voice = "verseMusicSoprano" \verseMusicSoprano
        \new Voice = "verseMusicAlto" \verseMusicAlto
      >>
      \new Staff = "verseMusicTB" \with {
        shortInstrumentName = \markup { \right-column { "T" "B" } }
      }
      <<
        \keyTime
        \clef bass
        \new Dynamics \antiphonRythm
        \new Voice = "verseMusicTenor" \verseMusicTenor
        \new Voice = "verseMusicBass" \verseMusicBass
      >>
    >>
    }
  >>
  \midi {}
}
\verseLyrics
