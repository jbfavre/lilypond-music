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

title = "Psaume 95"
subtitle = "29e dimanche ordinaire (année A)"
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
  gs'4 b b8 a8 gs4. \breathe
  e8 fs gs a gs fs2 gs2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  b4 ds ds8 fs e4 \breathe
  b4 cs8 e e e cs4 (ds) e2
  }

tenorAntiphonMusic =  \relative c' {
  e,4 fs fs8 ds8 gs4 \breathe
  gs4 a8 b cs cs a4 <a cs> <gs b>2
  }

bassAntiphonMusic =  \relative c {
  e4 b b8 bs8 cs4 \breathe
  b4 a8 gs fs16 a cs8 a4 (b) e,2 \fermata
  }

antiphonLyrics = \lyricmode {
  Ren -- dez au Sei -- gneur
  La gloi -- re~et la puis -- san -- ce
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
    \tempoVerseAcelerando b\breve cs1 \tempoVerseRallentando b2 \bar "||" \caesura
    \tempoVerseAcelerando b\breve a1 \tempoVerseRallentando gs4 gs fs2 \bar "||" \caesura
    \tempoVerseAcelerando gs\breve a1 \tempoVerseRallentando gs4 fs e2 \bar "||" \caesura
    \tempoVerseAcelerando e\breve a1 \tempoVerseRallentando gs4 e fs2 \bar "||" \caesura
  }

altoVerseMusic = \relative c'' {
    \caesura
    gs\breve e1 es2 \bar "||" \caesura
    es!\breve cs1 e4 e ds2 \bar "||" \caesura
    ds\breve ds1 ds4 ds cs2 \bar "||" \caesura
    cs\breve e1 e4 cs4 ds2 \bar "||" \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    b\breve a1 cs2 \bar "||" \caesura
    gs\breve a1 b4 cs4 b2 \bar "||" \caesura
    gs\breve bs1 bs4 gs gs2 \bar "||" \caesura
    a\breve cs1 b4 gs4 b2 \bar "||" \caesura
  }

bassVerseMusic = \relative c {
    \caesura
    e\breve a1 gs2 \bar "||" \caesura
    cs,\breve fs1 e!4 e4 b2 \bar "||" \caesura
    bs\breve gs1 gs4 bs cs b \bar "||" \caesura
    a\breve fs'1 e4 cs b2 \bar "||" \caesura
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

  Chantez au Seigne_u_r un chant nouveau,
  chantez au Seigne_u_r, terre entière,
  racontez à tous les pe_u_ples sa gloire,
  à toutes les nati_o_ns ses merveilles !

  Il est grand, le Seigne_u_r, hautement loué,
  redoutable au-dess_u_s de tous les dieux :
  néant, tous les die_u_x des nations !
  Lui, le Seigne_u_r, a fait les cieux.

  Rendez au Seigne_u_r, familles des peuples,
  rendez au Seigneur la glo_i_re et la puissance,
  rendez au Seigneur la glo_i_re de son nom.
  Apportez votre offr_a_nde, entrez dans ses parvis.

  Adorez le Seigne_u_r, éblouissant de sainteté :
  tremblez devant lu_i_, terre entière.
  Allez dire aux nations : « Le Seigne_u_r est roi ! »
  Il gouverne les pe_u_ples avec droiture.

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Chantez au " Seigne \underline u r " un chant nouveau,"}
      \concat { "chantez au " Seigne \underline u r, " terre entière,"}
      \concat { "racontez à tous les " pe \underline u ples " sa gloire,"}
      \concat { "à toutes les " nati \underline o ns " ses merveilles&nbsp;!"}
      " "
      \concat { "Il est grand, le " Seigne \underline u r, " hautement loué,"}
      \concat { "redoutable " au-dess \underline u s " de tous les dieux&nbsp;:"}
      \concat { "néant, tous les " die \underline u x " des nations&nbsp;!"}
      \concat { "Lui, le " Seigne \underline u r, " a fait les cieux."}
      " "
      \concat { "Rendez au " Seigne \underline u r, " familles des peuples,"}
      \concat { "rendez au Seigneur la " glo \underline i re " et la puissance,"}
      \concat { "rendez au Seigneur la "glo \underline i re " de son nom."}
      \concat { "Apportez votre " offr \underline a nde, " entrez dans ses parvis."}
      " "
      \concat { "Adorez le " Seigne \underline ur, " éblouissant de sainteté&nbsp;:"}
      \concat { "tremblez devant " lu \underline i, " terre entière."}
      \concat { "Allez dire aux nations&nbsp;: «&nbsp;Le " Seigne \underline u r " est roi&nbsp;!&nbsp;»"}
      \concat { "Il gouverne les " pe \underline u ples " avec droiture."}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
%\include "../libs/layouts/dualPsalmody.ily"
\include "../libs/layouts/singlePsalmody.ily"
\include "../libs/layouts/outputMidi.ily"