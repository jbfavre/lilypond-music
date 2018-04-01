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

title = "Psaume 103"
subtitle = "Pentecôte"
composer = "Magnificat, juin 2017"
dedicace = "Psalmodie par strophe"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key ef \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  ef8 ef d4. d8 f4 f8 f ef4.  \breathe
  ef8 f g af4 af8 af c c bf af bf4 bf \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
  }

antiphonLyrics = \lyricmode {
    Ô Sei -- gneur, en -- voie ton Es -- prit
    qui re -- nou -- vel -- le la fa -- ce de la ter -- re!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando g\breve bf1 \tempoVerseRallentando ef,4 \bar "||" \caesura
    \tempoVerseAcelerando ef\breve af1 \tempoVerseRallentando f4 \bar "||" \caesura
    \tempoVerseAcelerando g\breve bf1 \tempoVerseRallentando c4 \bar "||" \caesura
    \tempoVerseAcelerando bf\breve a1 \tempoVerseRallentando g4 \bar "|."
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
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

  Bénis le Seigne_u_r, ô mon âme ;
  Seigneur mon Die_u_, tu es si grand !
  Quelle profusion dans tes œ_u_vres, Seigneur !
  la terre s’empl_i_t de tes biens.

  Tu reprends leur so_u_ffle, ils expirent
  et reto_u_rnent à leur poussière.
  Tu envoies ton so_u_ffle : ils sont créés ;
  tu renouvelles la f_a_ce de la terre.

  Gloire au Seigne_u_r à tout jamais !
  Que Dieu se réjou_i_sse en ses œuvres !
  Que mon poème lui s_o_it agréable ;
  moi, je me réjou_i_s dans le Seigneur.

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Bénis le " Seigne \underline u r, " ô mon âme," }
      \concat { "Seigneur mon " Die \underline u, " tu es si grand&nbsp;!" }
      \concat { "Quelle profusion dans tes " œ \underline u vres, " Seigneur&nbsp;!" }
      \concat { "la terre " s’empl \underline i t " de tes biens." }
      " "
      \concat { "Tu reprends leur " so \underline u ffle, " ils expirent" }
      \concat { "et " reto \underline u rnent " à leur poussière." }
      \concat { "Tu envoies ton " so \underline u ffle&nbsp;: " ils sont créés&nbsp;;" }
      \concat { "tu renouvelles la " f \underline a ce " de la terre." }
      " "
      \concat { "Gloire au " Seigne \underline u r " à tout jamais&nbsp;!" }
      \concat { "Que Dieu se " réjou \underline i sse " en ses œuvres&nbsp;!" }
      \concat { "Que mon poème lui " s \underline o it " agréable&nbsp;;" }
      \concat { "moi, je me " réjou \underline i s " dans le Seigneur." }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%      Alternate Psalmody      %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dedicace = "Psalmodie par verset"
sopranoVerseMusic = \relative c'' {
    g\breve bf1 f4 \bar "||"
    ef\breve af f4 \bar "|."
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"