\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=60
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

scoreHeader = \header {
  title = "Psaume 84"
  subtitle = \markup { \column { "15ème Dimanche du Temps Ordinaire" "Année B" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, juillet 2021"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Global  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70
  \time 2/4
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  \time 2/4
  s2*2
  \time 3/4
  s2.
  s2.*2 \bar "|." \break
  }

antiphonMusicSoprano = \relative c' {
  d8 e f g a4 c8 b a4 r8
  a8 g a f4 e e d2. \fermata
  }

antiphonMusicAlto = \relative c' {
  d4. e8 f4 e8 d c4 r8
  e8 d e d2 d8 cs a2.
  }

antiphonMusicTenor =  \relative c' {
  a4 c4 a4 a8 gs a4 r8
  c8 b a a4 bf? a8 (g) f2. \fermata
  }

antiphonMusicBass =  \relative f {
  d4. c8 f,8 (g) a8 e' a4
  a,4 b8 cs d8 (c) g4 a d2. \fermata
  }

antiphonLyrics = \lyricmode {
  Fais nous voir, Sei -- gneur, ton a -- mour,
  et don -- nes- -- nous ton sa -- lut.
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \lyricmode {
  Fais nous voir ton a -- mour,
  et don -- nes- -- nous ton sa -- lut.
  }
antiphonLyricsTenor = \lyricmode {
  Fais nous voir ton a -- mour,
  et don -- nes- -- nous ton sa -- lut.
  }
antiphonLyricsBass =  \lyricmode {
  Fais nous voir ton a -- mour,
  et don -- nes- -- nous ton sa -- lut.
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseStropheRythm = \relative c' {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe"
  \cadenzaOn
  s\breve s1 s4 s \bar "||"
  s\breve s1 s4 s \bar "||"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 \bar "|." \break
}
verseRythm = \relative c' {
  \markCustom "Psalmodie par verset"
  \cadenzaOn
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 s \bar "|."
  }
verseStropheMusicSoprano = \relative c' {
  \tempoVerseAcelerando d\breve f1 \tempoVerseRallentando g4 a
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando f4 e
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4
  \tempoVerseAcelerando g\breve f1 \tempoVerseRallentando e4
}
verseMusicSoprano = \relative c' {
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4
  \tempoVerseAcelerando f\breve e1 \tempoVerseRallentando e4 e
  }

verseStropheMusicAlto = \relative c' {
  \tempoVerseAcelerando a\breve d1 \tempoVerseRallentando e4 e
  \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando d4 cs
  \tempoVerseAcelerando d\breve e1 \tempoVerseRallentando f4
  \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando cs4
}
verseMusicAlto = \relative c' {
  \tempoVerseAcelerando d\breve e1 \tempoVerseRallentando f4
  \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando d4 cs
  }

verseStropheMusicTenor = \relative c {
  \tempoVerseAcelerando f\breve bf1 \tempoVerseRallentando d4 cs
  \tempoVerseAcelerando a\breve bf1 \tempoVerseRallentando b4 a
  \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando c4
  \tempoVerseAcelerando bf\breve b1 \tempoVerseRallentando a4
}
verseMusicTenor = \relative c' {
  \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando c4
  \tempoVerseAcelerando bf\breve bf1 \tempoVerseRallentando b4 a
  }

verseStropheMusicBass = \relative f {
  d\breve bf1 bf4 a
  d\breve g,1 gs4 a
  d\breve c1 f,4
  g\breve gs1 a4
}
verseMusicBass = \relative f {
  d\breve c1 f,4
  g\breve g1 gs4 a
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

partition = {
  % Antienne à 4 voix mixtes
  <<
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
        \global
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonSoprano" { \antiphonMusicSoprano }
        \new Lyrics \lyricsto "antiphonSoprano" \antiphonLyricsSoprano
      >>
      \new Staff = "antiphonAltoStaff" \with { instrumentName = "A." shortInstrumentName = "A" }
      <<
        \clef "treble"
        \global
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonAlto" { \antiphonMusicAlto }
        \new Lyrics \lyricsto "antiphonAlto" \antiphonLyricsAlto
      >>
      \new Staff = "antiphonTenorStaff" \with { instrumentName = "T." shortInstrumentName = "T" }
      <<
        \clef "treble_8"
        \global
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonTenor" { \antiphonMusicTenor }
        \new Lyrics \lyricsto "antiphonTenor" { \antiphonLyricsTenor \lyricmode { Al -- le -- lu -- ia&nbsp;! } }
      >>
      \new Staff  = "antiphonBassStaff" \with { instrumentName = "B." shortInstrumentName = "B" }
      <<
        \clef "bass"
        \global
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
        \new Voice = "antiphonMusicSoprano" { \voiceOne \antiphonMusicSoprano }
        \new Voice = "antiphonMusicAlto" { \voiceTwo \antiphonMusicAlto }
      >>
      \new Staff = "antiphonPianoStaffTB"
      <<
        \clef bass
        \new Voice = "antiphonMusicTenor" { \voiceThree \antiphonMusicTenor }
        \new Voice = "antiphonMusicBass" { \voiceFour \antiphonMusicBass }
      >>
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
        \new Voice { \verseStropheRythm \verseRythm }
        \new Voice = "verseSoprano" {\voiceOne {\verseStropheMusicSoprano \cadenzaOn \verseMusicSoprano }}
        \new Voice = "verseAlto" {\voiceTwo {\verseStropheMusicAlto \cadenzaOn \verseMusicAlto }}
      >>
      \new Staff = "verseChoirStaffTB"
      \with { shortInstrumentName = \markup { \right-column { "T" "B" } } }
      <<
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef bass
        \new Voice { \verseStropheRythm \verseRythm }
        \new Voice = "verseTenor" {\voiceOne {\verseStropheMusicTenor \cadenzaOn \verseMusicTenor }}
        \new Voice = "verseBass" {\voiceTwo {\verseStropheMusicBass \cadenzaOn \verseMusicBass }}
      >>
    >>
}

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

#(set-global-staff-size 18)
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
% Midi output
partitionStrophe = {
      \new PianoStaff = "antiphonMusic"
      <<
        \new Staff <<
          \global \clef treble
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
          \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
        >>
        \new Staff <<
          \global \clef bass
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
          \global
          \clef treble
          \new Dynamics \antiphonRythm
          \new Voice = "verseMusicSoprano" \verseStropheMusicSoprano
          \new Voice = "verseMusicAlto" \verseStropheMusicAlto
        >>
        \new Staff = "verseMusicTB" \with {
          shortInstrumentName = \markup { \right-column { "T" "B" } }
        }
        <<
          \global
          \clef bass
          \new Dynamics \antiphonRythm
          \new Voice = "verseMusicTenor" \verseStropheMusicTenor
          \new Voice = "verseMusicBass" \verseStropheMusicBass
        >>
      >>
    }
partitionVerset = {
      \new PianoStaff = "antiphonMusic"
      <<
        \new Staff <<
          \global \clef treble
          \new Dynamics \antiphonRythm
          \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
          \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
        >>
        \new Staff <<
          \global \clef bass
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
          \global
          \clef treble
          \new Dynamics \antiphonRythm
          \new Voice = "verseMusicSoprano" \verseMusicSoprano
          \new Voice = "verseMusicAlto" \verseMusicAlto
        >>
        \new Staff = "verseMusicTB" \with {
          shortInstrumentName = \markup { \right-column { "T" "B" } }
        }
        <<
          \global
          \clef bass
          \new Dynamics \antiphonRythm
          \new Voice = "verseMusicTenor" \verseMusicTenor
          \new Voice = "verseMusicBass" \verseMusicBass
        >>
      >>
    }

\book {
\bookOutputSuffix "Verset"
\score {
  <<
    \keepWithTag #'audio \unfoldRepeats \partitionVerset
    \context Staff = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
    \context Voice = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
  >>
  \midi { \set midiMergeUnisons = ##t }
}
}
\book {
\bookOutputSuffix "Strophe"
\score {
  <<
    \keepWithTag #'audio \unfoldRepeats \partitionStrophe
    \context Staff = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
    \context Voice = "Soprano" {
      \set Score.midiMinimumVolume = #0.5
      \set Score.midiMaximumVolume = #0.7
      \set Staff.midiMinimumVolume = #0.8
      \set Staff.midiMaximumVolume = #1
    }
  >>
  \midi { \set midiMergeUnisons = ##t }
}
}
