\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "libs/settings.ly"
% Ajust this setting to get a single page psalm
staffCustomSize = 18

title = "Psaume 42"
subtitle = ""
composer = "Jean Baptiste Favre"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key e \major
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  e8 fs gs4 a fs2 \breathe
  gs8 a b4 c4 c4 gs2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
  }

antiphonLyrics = \lyricmode {
  Il est mon Sau -- veur,
  mon sau -- veur et mon Dieu!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
  gs\breve gs1 fs4 e2 \bar "||"
  a\breve gs1 e4 fs2 \bar "||"
  gs\breve b1 c4 c gs2 \bar "||"
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
  }


verseOneLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"1. "
  }
verseTwoLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"2. "
  }
verseThreeLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"3. "
  }
verseFourLyrics =  \lyricmode {
    \override LyricText.self-alignment-X = #-1
    \set stanza = #"4. "
  }

groupedVersesLyrics = <<
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "libs/layouts/fr.ly"
\include "libs/common.ly"
%\include "libs/layouts/dualPsalmody.ly"
\include "libs/layouts/singlePsalmody.ly"
\include "libs/layouts/outputMidi.ly"