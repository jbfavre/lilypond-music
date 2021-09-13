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

title = "Psaume 29"
subtitle = "13ème Dimanche du Temps Ordinaire"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, juin 2021"

global = {
  \key g \major
  \time 2/4
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
  \partial 4 d8 d e4 fs8 fs g4. b8 a g g fs g2 (g2) \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d4 d4 ds4 e4. e8 e e d d d2~ d
  }

tenorAntiphonMusic =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 d g4 b8 b b4. g8 a c c c c4 b8 a b2
  }

bassAntiphonMusic =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d4 c b e8 d c b c a d <d d,> g,2 (g2) \fermata
  }

antiphonLyrics = \lyricmode {
  Je t'e -- xal  -- te, Sei -- gneur&nbsp;! Toi qui m'a re -- le -- vé&nbsp;!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  Je t'e -- xal  -- te, Toi qui m'a re -- le -- vé&nbsp;!
  }
tenorAntiphonLyrics = \lyricmode {
  Je t'e -- xal  -- te, Sei -- gneur&nbsp;! Toi qui m'a re -- le -- vé, re -- le -- vé&nbsp;!
  }
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseStropheMusic = \relative c'' {
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \tempoVerseAcelerando g\breve fs1 \tempoVerseRallentando g4 \bar "||"
  \tempoVerseAcelerando a\breve a1 \tempoVerseRallentando g4 \bar "||"
  \tempoVerseAcelerando b\breve as1 \tempoVerseRallentando b4 \bar "||"
  \tempoVerseAcelerando g\breve a?1 \tempoVerseRallentando a4 \bar "|." \break
}
sopranoVerseMusic = \relative c'' {
  \markCustom "Psalmodie par verset" \cadenzaOn
  \tempoVerseAcelerando g\breve fs1 \tempoVerseRallentando g4 \bar "||"
  \tempoVerseAcelerando g\breve a1 \tempoVerseRallentando a4 \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseStropheMusic = \relative c' {
  e\breve e1 e4
  e\breve ef1 d4
  g\breve g1 g4
  e?\breve g1 fs4
}
altoVerseMusic = \relative c' {
  e\breve e1 e4
  e\breve g1 fs4
  }

tenorVerseStropheMusic = \relative c' {
  b\breve c1 b4
  a\breve g1 b4
  d\breve ef1 d4
  b\breve c1 c4
}
tenorVerseMusic = \relative c' {
  b\breve c1 b4
  b\breve c1 c4
  }

bassVerseStropheMusic = \relative c {
  e\breve a,1 e'4
  c\breve c1 g'4
  g\breve c,1 g'4
  e?\breve ef1 d4
}
bassVerseMusic = \relative c {
  e\breve a,1 e'4
  e\breve ef1 d4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Je t’exalte, Seigne" \underline u "r : tu m’as relevé,"}
      \concat { \typewriter "   " "tu m’épargnes les r" \underline i "res de l’ennemi."}
      \concat { \typewriter "   " "Seigneur, tu m’as fait remont" \underline e "r de l’abîme"}
      \concat { \typewriter "   " "et revivre quand je descend" \underline a "is à la fosse."}
      \vspace #1
      \concat { \typewriter "3. " "Avec le soir, vi" \underline e "nnent les larmes,"}
      \concat { \typewriter "   " "mais au mat" \underline i "n, les cris de joie."}
      \concat { \typewriter "   " "Tu as changé mon de" \underline u "il en une danse,"}
      \concat { \typewriter "   " "mes habits funèbres en par" \underline u "re de joie."}
    }
    \hspace #1
    \left-column{
      \concat { \typewriter "2. " "Fêtez le Seigneur, vo" \underline u "s, ses fidèles,"}
      \concat { \typewriter "   " "rendez grâce en rappel" \underline a "nt son nom très saint."}
      \concat { \typewriter "   " "Sa colère ne d" \underline u "re qu’un instant,"}
      \concat { \typewriter "   " "sa bont" \underline é ", toute la vie."}
      \vspace #1
      \concat { \typewriter "4. " "Que mon cœur ne se t" \underline a "ise pas,"}
      \concat { \typewriter "   " "qu’il soit en f" \underline ê "te pour toi,"}
      \concat { \typewriter "   " "et que sans fin, Seigne" \underline u "r, mon Dieu,"}
      \concat { \typewriter "   " "je te r" \underline e "nde grâce !"}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ily"
\include "../libs/layouts/commonSettings.ily"
staffCustomSize = 16
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
        \new Voice = "verseSoprano" << \voiceOne {\silence \sopranoAntiphonMusic \sopranoVerseStropheMusic \sopranoVerseMusic } >>
        \new Voice = "verseAlto" << \voiceTwo {\silence \sopranoAntiphonMusic \altoVerseStropheMusic \altoVerseMusic } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Voice = "verseTenor" << \voiceOne {\silence \sopranoAntiphonMusic \tenorVerseStropheMusic \tenorVerseMusic } >>
        \new Voice = "verseBass" << \voiceTwo {\silence \sopranoAntiphonMusic \bassVerseStropheMusic \bassVerseMusic } >>
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
partitionStrophe = {
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
      \new Staff = "verseSopranoAlto" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        \new Voice = "verseSoprano" << \voiceOne { \sopranoVerseStropheMusic } >>
        \new Voice = "verseAlto" << \voiceTwo { \altoVerseStropheMusic } >>
      >>
      \new Staff = "verseTenorBass" <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Voice = "verseTenor" << \voiceOne { \tenorVerseStropheMusic } >>
        \new Voice = "verseBass" << \voiceTwo { \bassVerseStropheMusic } >>
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
