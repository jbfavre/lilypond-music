\version "2.18.2"
\language "english"
tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=60
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "../libs/commonFunctions.ily"
\include "../libs/translations/fr.ily"
\include "../libs/settings.ily"

title = "Psaume 53"
subtitle = "25ème Dimanche du Temps Ordinaire"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, septembre 2021"

global = {
  \key f \major
  \time 3/4
  \tempo 2=70
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 d a'4. a8 bf g a4 g f e2. \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 d f4. f8 g e f4 d d cs2.
  }

tenorAntiphonMusic =  \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 d d4. d8 d c c4 bf b a2.
  }

bassAntiphonMusic =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 d d4. d8 g, c f (f,) g4 gs a2. \fermata
  }

antiphonLyrics = \lyricmode {
  Le Sei -- gneur est mon ap -- pui en -- tre tous.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4 \bar "||"
  \tempoVerseAcelerando a\breve g1 \tempoVerseRallentando a4 \bar "|." e4^\markup{\huge \roman &dagger;} \bar "|."
  }

altoVerseMusic = \relative c' {
  d\breve e1 e4
  f\breve e1 e4
  cs4
  }

tenorVerseMusic = \relative c' {
  a\breve d1 cs4
  d\breve d1 cs!4
  a4
  }

bassVerseMusic = \relative c {
  d\breve bf1 a4
  d\breve bf1 a4
  a4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Par ton nom, Die" \underline u ", sauve-moi,"}
      \concat { \typewriter "   " "par ta puissance rends-m" \underline o "i justice&nbsp;;"}
      \concat { \typewriter "   " "Dieu, ent" \underline e "nds ma prière,"}
      \concat { \typewriter "   " "écoute les par" \underline o "les de ma bouche."}
    }
    \hspace #1
    \left-column{
      \concat { \typewriter "2. " "Des étrangers se sont lev" \underline é "s contre moi," \roman \super \huge &dagger;}
      \concat { \typewriter "   " "des puissants ch" \underline e "rchent ma perte&nbsp;:"}
      \concat { \typewriter "   " "ils n’ont pas souc" \underline i " de Dieu."}
    }
  }
  \vspace #1
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line{
    \left-column {
      \concat { \typewriter "3. " "Mais voici que Die" \underline u " vient à mon aide,"}
      \concat { \typewriter "   " "le Seigneur est mon appu" \underline i " entre tous."}
      \concat { \typewriter "   " "De grand cœur, je t’offrir" \underline a "i le sacrifice,"}
      \concat { \typewriter "   " "je rendrai grâce à ton n" \underline o "m, car il est bon&nbsp;!"}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ily"
\include "../libs/layouts/commonSettings.ily"
staffCustomSize = 18
partition = {
  <<
    % Antienne à 4 voix mixtes
    %\include "../libs/layouts/commonAntiphonFourVoices.ily"
    \new ChoirStaff = "Antophon4Voices" <<
      \new Staff = "AntiphonSopranoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Soprano"
        \clef "treble"
        \new Voice = "antiphonSoprano" { \global \sopranoAntiphonMusic}
        \new Lyrics \lyricsto "antiphonSoprano" { \sopranoAntiphonLyrics }
      >>
      \new Staff = "AntiphonAltoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Alto"
        \clef "treble"
        \new Voice = "antiphonAlto" { \global \altoAntiphonMusic }
        \new Lyrics \lyricsto "antiphonAlto" { \altoAntiphonLyrics }
      >>
      \new Staff = "AntiphonTenorStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Ténor"
        \clef "treble_8"
        \new Voice = "antiphonTenor" { \global \tenorAntiphonMusic }
        \new Lyrics \lyricsto "antiphonTenor" { \tenorAntiphonLyrics }
      >>
      \new Staff  = "AntiphonBassStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Basse"
        \clef "bass"
        \new Voice = "AntiphonBass" { \global \bassAntiphonMusic }
        \new Lyrics \lyricsto "AntiphonBass" { \bassAntiphonLyrics }
      >>
    >>
    %\include "../libs/layouts/commonPiano.ily"
    \new PianoStaff \with { \pianoProperties } <<
      \set PianoStaff.instrumentName = #"Orgue"
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global \clef treble
        \new Voice = "soprani" { \voiceOne \pianoSopranoMusic }
        \new Voice = "alti" { \voiceTwo \pianoAltoMusic }s
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global \clef bass
        \new Voice = "tenors" { \voiceThree \pianoTenorMusic }
        \new Voice = "bass" { \voiceFour \pianoBassMusic }
      >>
    >>
    % Psalmodie à 4 voix mixtes
    %\include "../libs/layouts/commonVerseFourVoices.ily"
    \new ChoirStaff = "versePsalmody" <<
      \new Staff = "verseSopranoAlto" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        %\partcombine
        \new Voice = "verseSoprano" << \voiceOne {\silence \sopranoAntiphonMusic \sopranoVerseMusic } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \sopranoAntiphonMusic \altoVerseMusic } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Voice = "verseTenor" << \voiceOne {\silence \sopranoAntiphonMusic \tenorVerseMusic } >>
        \new Voice = "verseBass" << \voiceTwo {\silence \sopranoAntiphonMusic \bassVerseMusic } >>
      >>
    >>
  >>
}

% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics
partition = {
  <<
    % Antienne à 4 voix mixtes
    %\include "../libs/layouts/commonAntiphonFourVoices.ily"
    \new ChoirStaff = "Antophon4Voices" <<
      \new Staff = "AntiphonSopranoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Soprano"
        \clef "treble"
        \new Voice = "antiphonSoprano" { \global \sopranoAntiphonMusic}
      >>
      \new Staff = "AntiphonAltoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Alto"
        \clef "treble"
        \new Voice = "antiphonAlto" { \global \altoAntiphonMusic }
      >>
      \new Staff = "AntiphonTenorStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Ténor"
        \clef "treble_8"
        \new Voice = "antiphonTenor" { \global \tenorAntiphonMusic }
      >>
      \new Staff  = "AntiphonBassStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Basse"
        \clef "bass"
        \new Voice = "AntiphonBass" { \global \bassAntiphonMusic }
      >>
    >>
    % Psalmodie à 4 voix mixtes
    %\include "../libs/layouts/commonVerseFourVoices.ily"
    \new ChoirStaff = "versePsalmody" <<
      \new Staff = "verseSopranoAlto" \with { printPartCombineTexts = ##f } <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        \new Voice = "verseSoprano" << \voiceOne { \sopranoVerseMusic } >>
        \new Voice = "verseAlto" << \voiceTwo { \altoVerseMusic } >>
        \new Lyrics \lyricsto "verseSoprano" { \reponsSopAltLyrics }
      >>
      \new Staff = "verseTenorBass" \with { printPartCombineTexts = ##f } <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Voice = "verseTenor" << \voiceOne { \tenorVerseMusic } >>
        \new Voice = "verseBass" << \voiceTwo { \bassVerseMusic } >>
        \new Lyrics { \reponsTenBassLyrics }
      >>
    >>
  >>
}
\book {
\bookOutputSuffix "Verset"
\score {
  <<
    \keepWithTag #'audio \unfoldRepeats \partition
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