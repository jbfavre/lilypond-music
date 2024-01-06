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
  title = "Psaume 71"
  subtitle = \markup { "Épiphanie du Seigneur" }
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, janvier 2024"
}

global = {
  \time 2/4
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = {
    \markCustom "Antienne"
    s2*7  \bar "|." \break
  }
antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  d8 f a bf a4. g8 a2 bf8 a g f e2 c4 e d2
  }

antiphonMusicAlto = \relative c' {
  a8 d f e f4 f4 e2 g8 f d a c2 c4 c a2
  }

antiphonMusicTenor =  \relative c' {
  f,8 a c c d4 d d4 (cs) d8[ c] bf f g2 a4. g8 f2
  }

antiphonMusicBass =  \relative c {
  d8 d c c b4 bf a2 g8[ a] bf d c2 a4 a <d d,>2
  }

antiphonLyrics = \lyricmode {
  Tou -- tes les na -- tions, Sei -- gneur, se pro -- ster -- ne -- ront de -- vant toi.
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseStropheRythm = {
  \accidentalStyle forget
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 \bar "||"
  \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 s4 \bar "|." \break
}

verseStropheMusicSoprano = \relative c' {
  d\breve a'1 g4 a \bar "||"
  a\breve c1 b!4 a \bar "||" \break
  a\breve f1 f4 e \bar "||"
  e\breve f1 e4 d \bar "|."
  }

verseStropheMusicAlto = \relative c' {
  a\breve f'1 f4 e
  f\breve g1 g4 e
  f\breve d1 d4 d
  cs\breve d1 cs!4 a4
  }

verseStropheMusicTenor = \relative c' {
  f,\breve c'1 d4 cs
  d\breve e1 d4 cs!
  a\breve a1 g4 bf
  a\breve a1 a4 f
  }

verseStropheMusicBass = \relative c {
  d\breve c1 b4 a
  d\breve c1 g4 a
  d\breve c1 bf4 g
  a\breve d1 a4 d
  }

verseLyrics = \markup {
  \vspace #3
  \override #'(font-family . sans)
  \override #'(font-size . 1)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Dieu, donne au r" \underline o "i tes pouvoirs,"}
      \concat { \typewriter "   " "à ce fils de r" \underline o "i ta justice."}
      \concat { \typewriter "   " "Qu’il gouverne ton pe" \underline u "ple avec justice,"}
      \concat { \typewriter "   " "qu’il fasse dr" \underline o "it aux malheureux !"}
      \vspace #1
      \concat { \typewriter "2. " "En ces jours-là, fleurir" \underline a " la justice,"}
      \concat { \typewriter "   " "grande pa" \underline i "x jusqu’à la fin des lunes !"}
      \concat { \typewriter "   " "Qu’il domine de la m" \underline e "r à la mer,"}
      \concat { \typewriter "   " "et du Fleuve jusqu’au bo" \underline u "t de la terre !"}
    }
    \left-column {
      \concat { \typewriter "3. " "Les rois de Tarsis et des Îles apporter" \underline o "nt des"}
      \concat { \typewriter "   " "  présents."}
      \concat { \typewriter "   " "Les rois de Saba et de Seba fer" \underline o "nt leur"}
      \concat { \typewriter "   " "  offrande."}
      \concat { \typewriter "   " "Tous les rois se prosterner" \underline o "nt devant lui,"}
      \concat { \typewriter "   " "tous les " pa \underline y s " le serviront."}
      \vspace #1
      \concat { \typewriter "4. " "Il délivrera le pa" \underline u "vre qui appelle"}
      \concat { \typewriter "   " "et le malheure" \underline u "x sans recours."}
      \concat { \typewriter "   " "Il aura souci du f" \underline a "ible et du pauvre,"}
      \concat { \typewriter "   " "du pauvre dont il sa" \underline u "ve la vie."}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
partition = {
  <<
    % Antienne à 4 voix mixtes
    %\include "../libs/layouts/commonAntiphonFourVoices.ily"
    \new ChoirStaff = "Antophon4Voices" <<
      \new Staff = "AntiphonSopranoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Soprano"
        \clef "treble"
        \new Dynamics \antiphonRythm
        \new Voice = "antiphonSoprano" { \global \antiphonMusicSoprano \fermata }
        \new Lyrics \lyricsto "antiphonSoprano" { \antiphonLyricsSoprano }
      >>
    >>
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = #"Orgue"
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef treble
        \new Voice = "soprani" {\global \voiceOne \antiphonMusicSoprano \fermata }
        \new Voice = "alti" {\global \voiceTwo \antiphonMusicAlto \fermata }
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \clef bass
        \new Voice = "tenors" {\global \voiceThree \antiphonMusicTenor \fermata }
        \new Voice = "bass" {\global \voiceFour \antiphonMusicBass \fermata }
      >>
    >>
    \new ChoirStaff = "versePsalmody"
    <<
      \new Staff = "verseSopranoAlto" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        \new Dynamics { \silence \antiphonMusicSoprano \verseStropheRythm }
        \new Voice = "verseSoprano" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicSoprano } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicAlto } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Dynamics {\silence \antiphonMusicSoprano \verseStropheRythm}
        \new Voice = "verseTenor" << \voiceOne {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicTenor } >>
        \new Voice = "verseBass" << \voiceTwo {\silence \antiphonMusicSoprano \cadenzaOn \verseStropheMusicBass } >>
      >>
    >>
  >>
}
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
          \override NoteHead.style = #'altdefault
          \override InstrumentName.font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead.style = #'altdefault
          \override InstrumentName.font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead.style = #'altdefault
          \override InstrumentName.font-name = #"Monospace Regular"
      }
      \override LyricText.font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
  \scoreHeader
}
\verseLyrics