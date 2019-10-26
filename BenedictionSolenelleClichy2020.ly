\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "libs/commonFunctions.ily"
\include "libs/settings.ily"
\include "libs/translations/fr.ily"
\include "libs/psalmody.ily"

title = "Bénédiction solennelle"
subtitle = "Vigile Pascale"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, septembre 2019"

global = {
  \key c \major
  \time 4/2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
    \set Staff.shortInstrumentName = ""
    \set Staff.instrumentName = "1"

    \cadenzaOn
    g\breve e4 \bar "|"
    g\breve a4 \bar "|"
    g\breve e4 g a g \bar "||"
    g1 g1 \bar "|." \break

    \set Staff.shortInstrumentName = "2"
    g\breve e4 \breathe
    g\breve a4 \bar "|"
    \set Staff.shortInstrumentName = ""
    g\breve a4 g\breve a4
    g\breve a4 g\breve e4 g a g \bar "||"
    g1 g1 \bar "|." \break

    \set Staff.shortInstrumentName = "3"
    g\breve e4 \bar "|"
    g\breve a4 \bar "|" \break
    \set Staff.shortInstrumentName = ""
    g\breve a4 g\breve e4 e g a g \bar "||"
    g1 g1 \bar "|." \break

    \set Staff.shortInstrumentName = "4"
    g\breve e4 \bar "|"
    g1 a4 g1 a4 g1 e4 g a g \bar "||"
    g1 g1 \bar "|." \break

    \set Staff.shortInstrumentName = "E."
    g\breve a4 g8[ f] g8[ (a)] a4 \breathe
    a8 g[ (c b a g)] f[ (g a)] a4 (g) \bar "||"
    \set Staff.shortInstrumentName = ""
    g\breve a4 g8[ f] g8[ (a)] a4 \breathe
    a8 g[ (c b a g)] f[ (g a)] a4 (g) \bar "|."
}

groupedVersesLyrics = {
  
  \lyricmode {
    \once \override LyricText.self-alignment-X = #LEFT
    "Que demeure en vous la grâce de"  Dieu,
    \once \override LyricText.self-alignment-X = #LEFT
    "la grâce pascale qu'il vous offre aujour" -- d'hui&nbsp;:
    \once \override LyricText.self-alignment-X = #LEFT
    "qu'elle vous protège de l'ou" -- bli et du doute
    A -- men&nbsp;!
  }
  \lyricmode {
    \once \override LyricText.self-alignment-X = #LEFT
    "Par la résurrection de son"  Fils,
    \once \override LyricText.self-alignment-X = #LEFT
    "il vous a fait déjà re" -- naïtre&nbsp;:
    \once \override LyricText.self-alignment-X = #LEFT
    "qu'il vous rappelle toujours à cette" joie que rien,
    \once \override LyricText.self-alignment-X = #LEFT
    "pas même la" mort,
    \once \override LyricText.self-alignment-X = #LEFT
    "ne pour" -- ra vous ra -- vir.
    A -- men&nbsp;!
  }
  \lyricmode {
    \once \override LyricText.self-alignment-X = #LEFT
    "Ils sont finis les jours de la pas" -- sion,
    \once \override LyricText.self-alignment-X = #LEFT
    "suivez maintenant les pas du Ressusci" -- té,
    \once \override LyricText.self-alignment-X = #LEFT
    "Suivez-le désormais jusqu'à son Roy" -- aume,
    \once \override LyricText.self-alignment-X = #LEFT
    "où vous posséderez en"  -- fin la joie par -- faite,
    A -- men&nbsp;!
  }
  \lyricmode {
    \once \override LyricText.self-alignment-X = #LEFT
    "Et que Dieu tout puissant vous bé" -- nisse,
    \once \override LyricText.self-alignment-X = #LEFT
    Le Père, le Fils, et le saint Es -- prit,
    A -- men&nbsp;!
  }
  \lyricmode {
    \once \override LyricText.self-alignment-X = #LEFT
    "Allez dans la paix du" Christ,
    Al -- le -- lù -- ia, Al -- le -- lù -- ia
    \once \override LyricText.self-alignment-X = #LEFT
    "Nous rendons grâce à" Dieu,
    Al -- le -- lù -- ia, Al -- le -- lù -- ia _
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Psalmody layout
\include "libs/layouts/commonLayout.ily"
\include "libs/layouts/psalmodyOnly.ily"
% Load midi output
%\include "../libs/layouts/outputMidi.ily"