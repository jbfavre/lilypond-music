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
  gs8 bs cs4 b8 a4 gs2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
    e8 ds cs (b) a (fs) b2 \breathe
    cs8 gs a4 b8 ds8 e2 \fermata
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
    \cadenzaOn \caesura
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
%{
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
%}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"