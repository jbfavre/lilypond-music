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

title = "Psaume 144"
subtitle = \markup { \column { "31e dimanche du temps ordinaire - Année C" "(forme directe alternée)" }}
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, octobre 2019"

global = {
  \key d \minor
  \time 2/4
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
  \partial 8 
  d8 a'4. b8 g4. a8 bf! g e g f g a f g4 f e2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 8 
  d8 f4. f8 d4. d8 g e d e d d f d d4 d cs2 \fermata
  \bar "|."
  }

tenorAntiphonMusic =  \relative c' {
  \partial 8 
  d8 d4. a8 b4. b!8 bf! bf bf bf a bf a a bf4 a a2 \fermata
  \bar "|."
  }

bassAntiphonMusic =  \relative c {
  \partial 8 
  d8 d4. d8 d4. d8 d d d d d d d d g,4 d' a2 \fermata
  \bar "|."
  }

antiphonLyrics = \lyricmode {
  Mon Dieu, mon Roi, je bé -- ni -- rai ton nom tou -- jours et à ja -- mais&nbsp;!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \tenorAntiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando a\breve \tempoVerseRallentando g1 b!4 a \bar "||" \caesura
    \tempoVerseAcelerando bf\breve \tempoVerseRallentando g1 a4 \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    f\breve d1 g4 f \caesura
    g\breve e1 f4 \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    d\breve b!1 b!4 d \caesura
    e\breve bf1 d4 \caesura
  }

bassVerseMusic = \relative f {
    \caesura
    d\breve d1 d4 d \caesura
    d\breve d1 d4 \caesura
  }

%{

Je t’exalterai, mon Die_u_, mon Roi,
je bénirai ton nom toujo_u_rs et à jamais !
Chaque jour je te b_é_nirai,
je louerai ton nom toujo_u_rs et à jamais.

Le Seigneur est tendr_e_sse et pitié,
lent à la col_è_re et plein d’amour ;
la bonté du Seigne_u_r est pour tous,
sa tendresse, pour to_u_tes ses œuvres.

Que tes œuvres, Seigne_u_r, te rendent grâce
et que tes fid_è_les te bénissent !
Ils diront la gl_o_ire de ton règne,
ils parler_o_nt de tes exploits.

Le Seigneur est vrai en t_o_ut ce qu’il dit,
fidèle en to_u_t ce qu’il fait.
Le Seigneur souti_e_nt tous ceux qui tombent,
il redresse to_u_s les accablés.

%}

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      " "
      \concat { "Je t’exalterai, mon Die" \underline u ", mon Roi," }
      \concat { "je bénirai ton nom toujo" \underline u "rs et à jamais!" }
      \concat { "Chaque jour je te b" \underline é "nirai," }
      \concat { "je louerai ton nom toujo" \underline u "rs et à jamais." }
      " "
      \concat { "Le Seigneur est tendr" \underline e "sse et pitié," }
      \concat { "lent à la col" \underline è "re et plein d’amour&nbsp;;" }
      \concat { "la bonté du Seigne" \underline u "r est pour tous," }
      \concat { "sa tendresse, pour to" \underline u "tes ses œuvres." }
      " "
      \concat { "Que tes œuvres, Seigne" \underline u "r, te rendent grâce" }
      \concat { "et que tes fid" \underline è "les te bénissent&nbsp;!" }
      \concat { "Ils diront la gl" \underline o "ire de ton règne," }
      \concat { "ils parler" \underline o "nt de tes exploits." }
      " "
      \concat { "Le Seigneur est vrai en t" \underline o "ut ce qu’il dit," }
      \concat { "fidèle en to" \underline u "t ce qu’il fait." }
      \concat { "Le Seigneur souti" \underline e "nt tous ceux qui tombent," }
      \concat { "il redresse to" \underline u "s les accablés." }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"
% Load Psalmody layout
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
% Load midi output
%\include "../libs/layouts/outputMidi.ily"