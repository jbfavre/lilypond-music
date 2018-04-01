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

title = "Psaume 66-2"
subtitle = "20e dimanche du Temps Ordinaire - Année A"
composer = "Jean Baptiste Favre"

global = {
  \omit Staff.TimeSignature
  \key d \minor
  \autoBeamOff
}

tempoAntiphon = {
  \set Score.tempoHideNote = ##t
  \tempo 4=80
}
tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=80
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=80
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
    f8 g a bf a4. a8 c b a4 a4 \breathe
    g8 g a bf a g f g a2 a2 \fermata
    \bar "|."
  }

altoAntiphonMusic = \relative c' {
    d8 e f d c4. c8 e e d4 cs \breathe
    e8 e f d c bf cs e f2 e2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
    a8 c c bf a4. a8 c d f4 e \breathe
    cs8 cs d f c e e cs a2 a2 \fermata
  }

bassAntiphonMusic =  \relative c {
    d8 c a d f4. f8 g gs a4 a \breathe
    a,8 a f bf f g a a d4 (cs8 b) cs2 \fermata
  }

antiphonLyrics = \lyricmode {
  Que les peu -- ples, Dieu, Te ren -- dent grâ -- ce;
  qu'ils Te ren -- dent grâ -- ce tous en -- sem -- ble
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
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando b4 \bar "||" \caesura
    \tempoVerseAcelerando b\breve c1 \tempoVerseRallentando a4 a4 \bar "||" \caesura
    \tempoVerseAcelerando b\breve g1 \tempoVerseRallentando c4 \bar "||" \caesura
    \tempoVerseAcelerando bf\breve g1 \tempoVerseRallentando f4 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    f\breve e1 d4 \caesura
    g\breve e1 d4 e4 \caesura
    g\breve e1 g4 \caesura
    d\breve e1 f4 f4
  }

tenorVerseMusic = \relative c' {
    \caesura
    a\breve g1 d'4 \caesura
    b\breve g1 a4 a4 \caesura
    g\breve b1 g4 \caesura
    bf\breve c1 a4 a4
  }

bassVerseMusic = \relative c {
    \caesura
    d\breve e1 g4 \caesura
    e\breve c1 f4 cs4 \caesura
    d\breve b1 c4 \caesura
    g'\breve c,1 c4 f4
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

  Que Dieu nous prenne en gr_â_ce et nous bénisse,
  que ton visage s’illum_i_ne pour nous ;
  et ton chemin sera conn_u_ sur la terre,
  ton salut, parmi to_u_tes les nations.

  Que les nations ch_a_ntent leur joie,
  car tu gouvernes le m_o_nde avec justice ;
  tu gouvernes les pe_u_ples avec droiture
  sur la terre, tu condu_i_s les nations.

  La terre a donn_é_ son fruit ;
  Dieu, notre Di_e_u, nous bénit.
  Que Di_e_u nous bénisse,
  et que la terre tout enti_è_re l’adore !

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Que Dieu nous prenne en " gr \underline â ce " et nous bénisse," }
      \concat { "que ton visage " s’illum \underline i ne " pour nous ;" }
      \concat { "et ton chemin sera " conn \underline u " sur la terre," }
      \concat { "ton salut, parmi " to \underline u tes " les nations." }
      " "
      \concat { "Que les nations " ch \underline a ntent " leur joie," }
      \concat { "car tu gouvernes le " m \underline o nde " avec justice ;" }
      \concat { "tu gouvernes les " pe \underline u ples " avec droiture" }
      \concat { "sur la terre, tu " condu \underline i s " les nations." }
      " "
      \concat { "La terre a " donn \underline é " son fruit;" }
      \concat { "Dieu, notre " Di \underline e u, " nous bé -- nit." }
      \concat { "Que " Di \underline e u " nous bénisse," }
      \concat { "et que la terre tout " enti \underline è re " l’adore !" }
    }
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"