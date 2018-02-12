\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "../libs/commonFunctions.ily"
\include "../libs/settings.ily"
\include "../libs/translations/fr.ily"
\include "../libs/psalmody.ily"

title = "Psaume 137"
subtitle = "21e dimanche ordinaire (année A)"
composer = "Jean Baptiste Favre"
dedicace="Psalmodie par strophe"

systemToSystemSpacing = 
  #'((basic-distance . 10)
     (minimum-distance . 10)
     (padding . 4)
     (stretchability . 10))

tempoAntiphon = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70
}
tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=70
}

global = {
    \time 2/4
    \key d \minor
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  a'4 a2 \breathe a8 g c b a g a2 \breathe
  \tuplet 3/2 { a8 g a } f4 d8 d g bf a2 \fermata
  \bar "|." \break
}

altoAntiphonMusic = \relative c' {
  e4 f2 \breathe e8 e8 g8 f8 d8 e8 e2 \breathe
  e4 d4 bf8 bf c e c2 \fermata
}

tenorAntiphonMusic =  \relative c' {
  cs4 d2 \breathe d8 d e d b b cs2 \breathe
  cs4 bf4 g8 g  bf g a2 \fermata
}

bassAntiphonMusic =  \relative c {
  a4 d2 b8 b c d e e a,2 \breathe
  a4 bf4 g'8 f e c f,2 \fermata
}

antiphonLyrics = \lyricmode {
  Sei -- gneur, é -- ter -- nel est ton a -- mour:
  n’ar -- rê -- te pas l’œu -- vre de tes mains.
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
    \cadenzaOn \caesura
    \tempoVerseAcelerando a\breve f1 \tempoVerseRallentando g4 b a4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando b4 g a4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve a1 \tempoVerseRallentando a4 g4 f g4 \bar "||" \caesura
    \tempoVerseAcelerando f\breve d1 \tempoVerseRallentando f4 g a4 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    c\breve d1 e4 d4 e4 \caesura
    f\breve e1 g4 e4 f4 \caesura
    e\breve f1 f4 e4 f4 e4 \caesura
    d\breve bf1 d4 d4 e4
  }

tenorVerseMusic = \relative c' {
    \caesura
    a\breve a1 g4 b4 cs4 \caesura
    a\breve c1 d4 d4 c4 \caesura
    cs\breve d1 c4 c4 d4 d8[ \parenthesizeAll c8] \caesura
    bf\breve g1 a4 bf4 cs4
  }

bassVerseMusic = \relative c {
    \caesura
    f,\breve d'1 c4 g4 a4 \caesura
    d\breve a1 b4 b4 f4 \caesura
    a\breve d1 f4 c d c4 \caesura
    bf\breve g1 d'4 e4 a,4
  }

figuredBass = \figuremode {
  }
harmony = \figuremode {
  }

verseFiguredBass = \figuremode {
  }
verseHarmony = \figuremode {
  }

\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"

%{

  De tout mon cœur, Seign_e_ur, je te rends grâce:
  tu as entendu les par_o_les de ma bouche.
  Je te ch_a_nte en présence des anges,
  vers ton temple sacr_é_, je me prosterne.

  Je rends grâce à ton nom pour ton am_o_ur et ta vérité,
  car tu élèves, au-dessus de t_o_ut, ton nom et ta parole.
  Le j_o_ur où tu répondis à mon appel,
  tu fis grandir en mon _â_me la force.

  Si haut que soit le Seign_e_ur, il voit le plus humble.
  de l_o_in, il reconnaît l’orgueilleux.
  Seigneur, _é_ternel est ton amour:
  n’arrête p_a_s l’œuvre de tes mains.

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "De tout mon cœur, " Seign \underline e ur," "je" "te" "rends" "grâce:}
      \concat { "tu as entendu les " par \underline o les" "de" "ma" "bouche.}
      \concat { "Je te " ch \underline a nte" "en" "présence" "des" "anges,}
      \concat { "vers ton temple " sacr \underline é ," "je" "me" "prosterne.}
      " "
      \concat { "Je rends grâce à ton nom pour ton " am \underline o ur" "et" "ta" "vérité,}
      \concat { "car tu élèves, au-dessus de " t \underline o ut," "ton" "nom" "et" "ta" "parole.}
      \concat { "Le " j \underline o ur" "où" "tu" "répondis" "à" "mon" "appel,}
      \concat { "tu fis grandir en mon " \underline â me" "la" "force.}
      " "
      \concat { "Si haut que soit le " Seign \underline e ur," "il" "voit" "le" "plus" "humble.}
      \concat { "de " l \underline o in," "il" "reconnaît" "l’orgueilleux.}
      \concat { "Seigneur, " \underline é ternel" "est" "ton" "amour:}
      \concat { "n’arrête " p \underline a s" "l’œuvre" "de" "tes" "mains.}
    }
  }
}

groupedVersesLyrics = <<
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"

dedicace="Psalmodie par verset"

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando a\breve f1 \tempoVerseRallentando \slurSolid g4 b a4 \bar "||" \caesura
    \tempoVerseAcelerando f\breve d1 \tempoVerseRallentando f4 g a4 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    e\breve d1 \slurDown \slurSolid e4 g e4 \caesura
    d\breve bf1 d4 e e4
  }

tenorVerseMusic = \relative c' {
    \caesura
    cs\breve a1 \slurSolid c4 d cs4 \caesura
    bf\breve g1 a4 c4 cs4
  }

bassVerseMusic = \relative c {
    \caesura
    a\breve d1 \slurDown \slurSolid c4 g a4 \caesura
    bf\breve g1 d'4 c4 a4
  }

groupedVersesLyrics = <<
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"