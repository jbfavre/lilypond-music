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
  \key d \minor
  \time 2/4
  \set Score.tempoHideNote = ##t
  \tempo 4=70
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  \time 2/4
  s2*2
  \time 3/4
  s2.*3 \bar "|." \break
  }

antiphonMusicSoprano = \relative c' {
  d8 e f g a4 c8 b   \time 3/4 a4 r8
  a8 g a f4 e e d2. \fermata \bar "|." \break
  }

antiphonMusicAlto = \relative c' {
  d4. e8 f4 e8 d c4 r8
  e8 d e d2 d8 cs a2.\fermata
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

verseStropheRythm = {
  \markCustom "Psalmodie par strophe"
  s\breve s1 s4 s \bar "||"
  s\breve s1 s4 s \bar "||"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 \bar "|." \break
}
verseRythm = {
  \markCustom "Psalmodie par verset"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 s \bar "|."
  }
verseStropheMusicSoprano = \relative c' {
  \markCustom "Psalmodie par strophe"
  \cadenzaOn
  \tempoVerseAcelerando d\breve f1 \tempoVerseRallentando g4 a \bar "||"
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando f4 e \bar "||"
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4 \bar "||"
  \tempoVerseAcelerando g\breve f1 \tempoVerseRallentando e4 \bar "|." \break
}
verseMusicSoprano = \relative c' {
  \markCustom "Psalmodie par verset"
  \cadenzaOn
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4 \bar "||"
  \tempoVerseAcelerando f\breve e1 \tempoVerseRallentando e4 e \bar "|." \break
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
  \tempoVerseAcelerando d\breve bf1\tempoVerseRallentando  bf4 a
  \tempoVerseAcelerando d\breve g,1\tempoVerseRallentando  gs4 a
  \tempoVerseAcelerando d\breve c1\tempoVerseRallentando  f,4
  \tempoVerseAcelerando g\breve gs1\tempoVerseRallentando  a4
}
verseMusicBass = \relative f {
  \tempoVerseAcelerando d\breve c1\tempoVerseRallentando  f,4
  \tempoVerseAcelerando g\breve g1\tempoVerseRallentando  gs4 a
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
% Load Piano settings & layout
partition = <<
    % Antienne à 4 voix mixtes
    %\include "../libs/layouts/commonAntiphonFourVoices.ily"
    \new ChoirStaff = "Antophon4Voices" <<
      \new Staff = "AntiphonSopranoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Soprano"
        \clef "treble"
        \new Voice = "antiphonSoprano" { \global \antiphonMusicSoprano}
        \new Lyrics \lyricsto "antiphonSoprano" { \antiphonLyricsSoprano }
      >>
      \new Staff = "AntiphonAltoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Alto"
        \clef "treble"
        \new Voice = "antiphonAlto" { \global \antiphonMusicAlto }
        \new Lyrics \lyricsto "antiphonAlto" { \antiphonLyricsAlto }
      >>
      \new Staff = "AntiphonTenorStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Ténor"
        \clef "treble_8"
        \new Voice = "antiphonTenor" { \global \antiphonMusicTenor }
        \new Lyrics \lyricsto "antiphonTenor" { \antiphonLyricsTenor }
      >>
      \new Staff  = "AntiphonBassStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Basse"
        \clef "bass"
        \new Voice = "AntiphonBass" { \global \antiphonMusicBass }
        \new Lyrics \lyricsto "AntiphonBass" { \antiphonLyricsBass }
      >>
    >>
    %\include "../libs/layouts/commonPiano.ily"
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = #"Orgue"
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef treble
        \new Voice = "soprani" {\global \voiceOne \antiphonMusicSoprano }
        \new Voice = "alti" {\global \voiceTwo \antiphonMusicAlto }
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef bass
        \new Voice = "tenors" {\global \voiceThree \antiphonMusicTenor }
        \new Voice = "bass" {\global \voiceFour \antiphonMusicBass }
      >>
    >>
    % Psalmodie à 4 voix mixtes
    %\include "../libs/layouts/commonVerseFourVoices.ily"
    \new ChoirStaff = "versePsalmody"
    <<
      \new Staff = "verseSopranoAlto" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        \new Voice = "verseSoprano" << \voiceOne {\silence \antiphonMusicSoprano \verseMusicSoprano } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \antiphonMusicSoprano \verseMusicAlto } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Voice = "verseTenor" << \voiceOne {\silence \antiphonMusicSoprano \verseMusicTenor } >>
        \new Voice = "verseBass" << \voiceTwo {\silence \antiphonMusicSoprano \verseMusicBass } >>
      >>
    >>
  >>

%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
% PDF output
\paper {
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  markup-system-spacing = #'((basic-distance . 10)
     (minimum-distance . 10)
     (padding . 5)
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
