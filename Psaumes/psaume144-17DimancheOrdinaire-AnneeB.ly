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
  title = "Psaume 144"
  subtitle = \markup { \column { "17ème Dimanche du Temps Ordinaire" "Année B" }}
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
  \key f \major
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

verseStropheRythm = \relative c' {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe"
  \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||" \break
}
verseRythm = \relative c' {
  \markCustom "Psalmodie par verset"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s \bar "||"
  }
verseStropheMusicSoprano = \relative c' {
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4
  \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando b4 a
  \tempoVerseAcelerando a\breve g1 \tempoVerseRallentando a4 f
  \tempoVerseAcelerando g\breve f1 \tempoVerseRallentando e4
}
verseMusicSoprano = \relative c' {
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4
  \tempoVerseAcelerando f\breve e1 \tempoVerseRallentando e4 e
  }

verseStropheMusicAlto = \relative c' {
  \tempoVerseAcelerando d\breve e1 \tempoVerseRallentando f4
  \tempoVerseAcelerando c\breve e1 \tempoVerseRallentando d4 e
  \tempoVerseAcelerando f\breve e1 \tempoVerseRallentando e4 d
  \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando cs4
}
verseMusicAlto = \relative c' {
  \tempoVerseAcelerando d\breve e1 \tempoVerseRallentando f4
  \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando d4 cs
  }

verseStropheMusicTenor = \relative c' {
  \tempoVerseAcelerando a\breve a1 \tempoVerseRallentando c4
  \tempoVerseAcelerando c\breve a1 \tempoVerseRallentando gs4 cs
  \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando cs4 a
  \tempoVerseAcelerando bf\breve b!1 \tempoVerseRallentando a4
}
verseMusicTenor = \relative c {
  \tempoVerseAcelerando a'\breve c1 \tempoVerseRallentando c4
  \tempoVerseAcelerando bf\breve bf1 \tempoVerseRallentando a4 a
  }

verseStropheMusicBass = \relative f {
  \tempoVerseAcelerando d\breve c1 \tempoVerseRallentando f,4
  \tempoVerseAcelerando f\breve a1 \tempoVerseRallentando e'4 a
  \tempoVerseAcelerando d,\breve bf1 \tempoVerseRallentando a4 d
  \tempoVerseAcelerando g,\breve gs1 \tempoVerseRallentando a4
}
verseMusicBass = \relative f {
  \tempoVerseAcelerando d\breve c1 \tempoVerseRallentando f,4
  \tempoVerseAcelerando g\breve g1 \tempoVerseRallentando a4 a
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
        \new Voice = "verseSoprano" {\voiceOne {\key d \minor \verseStropheMusicSoprano \cadenzaOn \verseMusicSoprano }}
        \new Voice = "verseAlto" {\voiceTwo {\key d \minor \verseStropheMusicAlto \cadenzaOn \verseMusicAlto }}
      >>
      \new Staff = "verseChoirStaffTB"
      \with { shortInstrumentName = \markup { \right-column { "T" "B" } } }
      <<
        \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef bass
        \new Voice { \verseStropheRythm \verseRythm }
        \new Voice = "verseTenor" {\voiceOne {\key d \minor \verseStropheMusicTenor \cadenzaOn \verseMusicTenor }}
        \new Voice = "verseBass" {\voiceTwo {\key d \minor \verseStropheMusicBass \cadenzaOn \verseMusicBass }}
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
