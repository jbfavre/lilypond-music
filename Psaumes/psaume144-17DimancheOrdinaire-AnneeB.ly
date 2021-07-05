\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

scoreHeader = \header {
  title = "Psaume 144"
  subtitle = \markup { \column { "17ème Dimanche du Temps Ordinaire" "Année B" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, juillet 2021"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Global  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \time 2/4 \key f \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  \time 2/4
  s2*7 \bar "|." \break
  }

antiphonMusicSoprano = \relative c' {
  f8 g a bf a4 g f2
  r8 g8 a bf a2 g f2 \fermata
  }

antiphonMusicAlto = \relative c' {
  c8 c8 f8 f e4 e4 d2
  f4 f8 f f2 f4 (e) c2
  }

antiphonMusicTenor =  \relative c' {
  a8 g8 a8 d c4 g8 (a) a2
  d4 d8 d c2 c4 (bf) a2
  }

antiphonMusicBass =  \relative f {
  f8 e d bf c4 c8 (cs) d4 (c)
  bf a8 g c2 c f \fermata
  }

antiphonLyrics = \lyricmode {
  Tu ou -- vres les mains, Sei -- gneur,
  Nous voi -- ci ras -- sa -- siés.
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
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 \bar "||" \break
  \markCustom "Psalmodie par verset"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 s \bar "||"
  }
verseMusicSoprano = \relative c' {
  \antiphonRythm
  d\breve d1 d4
  d\breve d1 d4
  d\breve d1 d4
  d\breve d1 d4

  f\breve g1 a4
  f\breve e1 e4 e
  }

verseMusicAlto = \relative c' {
  \antiphonRythm
  d\breve d1 d4
  d\breve d1 d4
  d\breve d1 d4
  d\breve d1 d4

  d\breve e1 f4
  d\breve d1 d4 cs
  }

verseMusicTenor = \relative c {
  \antiphonRythm
  d\breve d1 d4
  d\breve d1 d4
  d\breve d1 d4
  d\breve d1 d4

  a'\breve c1 c4
  bf\breve bf1 a4 a
  }

verseMusicBass = \relative f {
  \antiphonRythm
  d\breve d1 d4
  d\breve d1 d4
  d\breve d1 d4
  d\breve d1 d4

  d\breve c1 f,4
  g\breve g1 a4 a
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
        \new Voice = "verseSoprano" { \voiceOne \verseMusicSoprano }
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