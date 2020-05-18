\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "../libs/commonFunctions.ily"
\include "../libs/translations/fr.ily"
\include "../libs/settings.ily"

title = "Psaume 103"
subtitle = "Pentecôte"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, mai 2020"

global = {
  \time 6/4 \key a \major \tempo 2. = 50
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterpointAntiphonMusic = \relative c'' {
  \markCustom "Antienne Alleluiatique"
  r2. e8 (fs) e (d) cs b cs2 cs4 fs8 (gs) fs (e) d e fs4 a gs a2.\fermata
  }
sopranoAntiphonMusic = \relative c'' {
  a4. cs8 a4 b2. cs4. b8 a4 b2. d4 d b cs2.\fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  e4. a8 e4 e2. fs4. fs8 fs4 fs2. fs4 fs gs e2.
  }

tenorAntiphonMusic =  \relative c' {
  cs4. e8 cs4 b2. a4. a8 a4 b2. b4 b d cs2.
  }

bassAntiphonMusic =  \relative f {
  a4. a8 a4 gs2. fs4. fs8 e4 d2. b4 b e a,2.
  }

antiphonLyrics = \lyricmode {
  %Ô Sei -- gneur, en -- voie ton Es -- prit
  %qui re -- nou -- vel -- le la fa -- ce de la ter -- re!
  Al -- le -- lu -- ia, Al -- le -- lu -- ia, Al -- le -- lu -- ia&nbsp;!
  }

counterpointAntiphonLyrics = \lyricmode {
  Al -- le -- lu -- ia, A -- men, Al -- le -- lu -- ia, Al -- le -- lu -- ia&nbsp;!
  }
sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  cs\breve b1 a4 \bar "||"
  fs\breve gs4 a b \bar "||"
  d\breve cs1 b4 \bar "||"
  b\breve a1 a4 gs a \bar "||"
  %g\breve bf1 c4 \bar "||"
  %bf\breve a1 g4 \bar "|." \break
  }

altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  a\breve gs1 fs4
  d\breve d4 e e
  fs\breve fs1 d4
  fs\breve e1 e4 e e
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  e\breve e1 cs4
  a\breve b4 cs b
  b\breve as1 b4
  a\breve b1 b4 d cs
  }

bassVerseMusic = \relative f {
  \silence \sopranoAntiphonMusic
  a\breve e1 fs4
  d\breve b4 b e
  b\breve fs1 b4
  d\breve e1 e4 e a,
  }

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Bénis le " Seigne \underline u r, " ô mon âme," }
        \concat { \typewriter "   " "Seigneur mon " Die \underline u, " tu es si grand&nbsp;!" }
        \concat { \typewriter "   " "Quelle profusion dans tes " œ \underline u vres, " Seigneur&nbsp;!" }
        \concat { \typewriter "   " "la terre " s’empl \underline i t " de tes biens." }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Tu reprends leur " so \underline u ffle, " ils expirent" }
        \concat { \typewriter "   " "et " reto \underline u rnent " à leur poussière." }
        \concat { \typewriter "   " "Tu envoies ton " so \underline u ffle&nbsp;: " ils sont créés&nbsp;;" }
        \concat { \typewriter "   " "tu renouvelles la " f \underline a ce " de la terre." }
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Gloire au " Seigne \underline u r " à tout jamais&nbsp;!" }
        \concat { \typewriter "   " "Que Dieu se " réjou \underline i sse " en ses œuvres&nbsp;!" }
        \concat { \typewriter "   " "Que mon poème lui " s \underline o it " agréable&nbsp;;" }
        \concat { \typewriter "   " "moi, je me " réjou \underline i s " dans le Seigneur." }
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ily"
\include "../libs/layouts/commonSettings.ily"

partition = {
  <<
    % Antienne à 4 voix mixtes
    \include "../libs/layouts/commonAntiphonFourVoicesWithCounterpoint.ily"
    \include "../libs/layouts/commonPiano.ily"
    % Psalmodie à 4 voix mixtes
    \include "../libs/layouts/commonVerseFourVoices.ily"
    %\new FiguredBass { \figuredBass \verseFiguredBass }
    %\new FiguredBass { \harmony \verseHarmony }
  >>
}

% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\score {
\new PianoStaff \with { \pianoProperties } <<
  \set PianoStaff.instrumentName = #"Orgue"
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \once \override Staff.VerticalAxisGroup.remove-first = ##t
    \global \clef treble
    \new Voice = "soprani" { \voiceOne \pianoCounterpointMusic }
    \new Voice = "soprani" { \voiceOne \pianoSopranoMusic }
    \new Voice = "alti" { \voiceTwo \pianoAltoMusic }s
  >>
  \new Staff <<
    \set Staff.printPartCombineTexts = ##f
    \once \override Staff.VerticalAxisGroup.remove-first = ##t
    \global \clef bass
    \new Voice = "tenors" { \voiceOne \pianoTenorMusic }
    \new Voice = "bass" { \voiceTwo \pianoBassMusic }
  >>
>>
  \midi {
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}
\verseLyrics