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

title = "Psaume 115"
subtitle = "Deuxième dimanche de Carême, année B"
composer = "Jean Baptiste Favre"

%staffCustomSize = 15
%systemToSystemSpacing = 
%  #'((basic-distance . 3)
%     (minimum-distance . 3)
%     (padding . 3)
%     (stretchability . 3))

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key g \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \partial 8 d8[ e fs] g4 fs8[ g] a[ a g a] b4 a8[ b] c[ c b g] a2
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 8 a8[ c c] d4 fs8[ d] c[ d c e] ds4 b8[ d!] e[ c d e] fs2
  \bar "|." \break
  }

tenorAntiphonMusic =  \relative c {
  \partial 8 fs8[ g a] g4 a8[ g] e[ fs g a] fs4 g8[ fs] g[ a g g] a2
  \bar "|." \break
  }

bassAntiphonMusic =  \relative c {
  \partial 8 d8 c a b4 d8[ b] a[ c e c] b[ ds] e[ d!] c[ e d b] d2
  \bar "|." \break
  }

antiphonLyrics = \lyricmode {
    Je mar -- che -- rai en pré -- sen -- ce du Sei -- gneur sur la ter -- re des vi -- vants
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = ""

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando b\breve a1 \tempoVerseRallentando g4 \bar "||" \caesura
    \tempoVerseAcelerando c\breve \tempoVerseRallentando b4 g a \bar "||" \caesura
    \tempoVerseAcelerando a\breve b1 \tempoVerseRallentando a4 g \bar "||" \caesura
    \tempoVerseAcelerando g\breve a1 \tempoVerseRallentando a4 g \bar "||" \caesura
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando e4 \caesura
    \tempoVerseAcelerando e\breve \tempoVerseRallentando g4 e fs \caesura
    \tempoVerseAcelerando fs\breve g1 \tempoVerseRallentando e4 e \caesura
    \tempoVerseAcelerando e\breve e1 \tempoVerseRallentando fs4 d \caesura
  }

tenorVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando b\breve a1 \tempoVerseRallentando b4 \caesura
    \tempoVerseAcelerando c\breve \tempoVerseRallentando b4 c a \caesura
    \tempoVerseAcelerando b\breve b1 \tempoVerseRallentando c4 b \caesura
    \tempoVerseAcelerando c\breve c1 \tempoVerseRallentando c4 b \caesura
  }

bassVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando g\breve fs1 \tempoVerseRallentando e4 \caesura
    \tempoVerseAcelerando a\breve \tempoVerseRallentando e4 c d \caesura
    \tempoVerseAcelerando ds\breve e1 \tempoVerseRallentando g4 e \caesura
    \tempoVerseAcelerando c\breve a1 \tempoVerseRallentando d4 g, \caesura
   }

groupedVersesLyrics = <<
>>

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

  Je crois, et je p_a_rlerai,
  moi qui ai beauco_u_p souffert.
  Il en co_û_te au Seigneur
  de voir mour_i_r les siens !
  
  Ne suis-je pas, Seigne_u_r, ton serviteur,
  moi, dont tu bris_a_s les chaînes ?
  Je t’offrirai le sacrif_i_ce d’action de grâce,
  j’invoquerai le n_o_m du Seigneur.
  
  Je tiendrai mes prom_e_sses au Seigneur,
  oui, devant to_u_t son peuple,
  à l’entrée de la mais_o_n du Seigneur,
  au milie_u_ de Jérusalem !

%}

verseLyrics = \markuplist {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \column{
      \concat { "Je crois, et je p" \underline a "rlerai,"}
      \concat { "moi qui ai beauco" \underline u "p souffert."}
      \concat { "Il en co" \underline û "te au Seigneur"}
      \concat { "de voir mour" \underline i "r les siens&nbsp;!"}
      " "
      \concat { "Ne suis-je pas, Seigne" \underline u "r, ton serviteur,"}
      \concat { "moi, dont tu bris" \underline a "s les chaînes&nbsp;?"}
      \concat { "Je t’offrirai le sacrif" \underline i "ce d’action de grâce,"}
      \concat { "j’invoquerai le n" \underline o "m du Seigneur."}
      " "
      \concat { "Je tiendrai mes prom" \underline e "sses au Seigneur,"}
      \concat { "oui, devant to" \underline u "t son peuple,"}
      \concat { "à l’entrée de la mais" \underline o "n du Seigneur,"}
      \concat { "au milie" \underline u " de Jérusalem&nbsp;!"}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"