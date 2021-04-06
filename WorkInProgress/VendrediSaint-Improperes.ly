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
%{
  Since defined in libs/translations/fr.ly
  Following variables must be overrided after file include
%}
sopranoVoiceTitle = "F."
bassVoiceTitle = "H."
antiphonText = "Intonation"
verseText = "Couplets"

\include "../libs/psalmody.ily"

%{
  Composition details
%}
title = "Impropères"
real_poet = ""
subtitle = "Vendredi saint - Chant des reproches"
composer = "Jean Baptiste Favre"

global = {
  \key a \minor
  \time 2/4
  }
stanceRhythms = {
  \mark "Stance"
  s4 s s2
  s4 s s s s2
  s4 s %s s s s s2 \bar "||" \break
}
stanceMelody = {
  a4 a gs2 gs4 gs a b gs2 a4 b c c b2 a gs! \break
  }
stanceLyrics = \lyricmode {
  Ô mon peu -- ple, que t'ai- -- je fait&nbsp;?
  En quoi t'ai- -- je con -- tris -- té&nbsp;?
}
stanceSopranoMusic = \relative c'' { \stanceMelody }
stanceAltoMusic = \relative c' { e4 e e2 e4 e e f  e2 e4 g g g d2 e4 f e2 }
stanceTenorMusic = \relative c' { c4 c b2 b4 b c d b2 c4 d e e d2 c4 b b2 }
stanceBassMusic = \relative c' { a4 a e2 e4 e a d, e2 a4 g c, c g'2 a4 d, e2 }
StancePartition = {
  <<
    % Stance pour soliste et orgue
    \new ChoirStaff = "stance2Voices" \with { instrumentName = "Soliste" } <<
      \new Staff = "stanceHighStaff" <<
        \clef "bass"
        \new Voice = "stanceRhythms" { \stanceRhythms }
        \new Voice = "stanceMelody" { \global \relative c' { \stanceMelody } }
        \new Lyrics \lyricsto "stanceMelody" { \stanceLyrics }
      >>
    >>
    \new ChoirStaff = "stance2Voices" \with { instrumentName = "Clavier" } <<
      \new Staff = "stanceHighStaff" <<
        \clef "treble"
        \new Voice = "stanceRhythms" { \stanceRhythms }
        \new Voice = "stanceSoprano" { \voiceOne \global \stanceSopranoMusic }
        \new Voice = "stanceAlto" { \voiceTwo \global \stanceAltoMusic }
      >>
      \new Staff  = "stanceLowStaff" <<
        \clef "bass"
        \new Voice = "stanceRhythms" \antiphonRhythms
        \new Voice = "stanceTenor" { \voiceOne \global \stanceTenorMusic }
        \new Voice = "stanceBass" { \voiceTwo \global \stanceBassMusic }
      >>
    >>
  >>
}




reponRhythms = {s2*5 \break}
reponSopranoMusic = \relative c'' { a4. a8 a8 a4. a2 a gs }
reponAltoMusic = \relative c' { e4. e8 f8 f4. e2 f e }
reponTenorMusic = \relative c' { c4. c8 d8 d4. c4 b a2 b }
reponBassMusic = \relative c { a4. a8 b8 b4. c2 d e }
reponLyrics = \lyricmode { Ô mon peu -- ple, ré -- ponds- -- moi. }
ReponPartition = {
  <<
    % Répons pour chœur à 4 voix mixtes
    \new ChoirStaff = "repon2Voices" \with { instrumentName = "Clavier" } <<
      \new Staff = "reponHighStaff" <<
        \clef "treble"
        \new Voice = "reponRhythms" \reponRhythms
        \new Voice = "reponSoprano" { \voiceOne \global \reponSopranoMusic }
        \new Voice = "reponAlto" { \voiceTwo \global \reponAltoMusic }
      >>
      \new Lyrics \lyricsto "reponSoprano" { \reponLyrics }
      \new Staff  = "reponLowStaff" <<
        \clef "bass"
        \new Voice = "reponRhythms" \reponRhythms
        \new Voice = "reponTenor" { \voiceOne \global \reponTenorMusic }
        \new Voice = "reponBass" { \voiceTwo \global \reponBassMusic }
      >>
    >>
  >>
}





sopranoAntiphonMusic = \relative c'' {
  a4 a4 gs2 a4 b gs4 gs8 gs a4 b c c8 b a2 gs2 a2 \bar "||"
}
altoAntiphonMusic = \relative c' {
  e4 f e2 e4 f e e8 e e4 f4 a4 f e2 e2 e2
  }
tenorAntiphonMusic = \relative c' {
  c4 c4 b2 c4 b b4 b8 b c4 d4 e4 d c2 b c
  }
bassAntiphonMusic = \relative c {
  a4 d e2 c4 d e4 e8 d c4 b4 a d8 d e2 e2 a,2
}

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \cadenzaOn
   f\breve g1  a4 \bar "|"
   f\breve g1  g4 g a \bar "|" \break
   bf\breve bf1  a4 g g \bar "|"
  }
altoVerseMusic= \relative c' {
  \silence \sopranoAntiphonMusic
  c\breve e1 d4
  d\breve e1 e4 e e
  g\breve f1 f4 f f8[ e]
  }
tenorVerseMusic= \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve g1 f4
  a\breve c1 c4 c cs
  df\breve df!1 df!4 d bf
  }
bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  f\breve c1 d4
  d\breve c1 c4 bf a
  bf\breve g1 bf4 b8[ d] c4
  }

sopranoAntiphonLyrics = \lyricmode {
  Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous.
  }
altoAntiphonLyrics = \lyricmode {
  }
tenorAntiphonLyrics = \lyricmode {
  }
bassAntiphonLyrics = \lyricmode {
  Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous.
  }

\include "../libs/defaultPianoSettings.ily"
%\include "../libs/layouts/commonPiano.ily"

%{
  Moi je t’ai fait sortir d’Égypte, j’ai englouti le Pharaon&nbsp;:
  Toi, tu m’as livré aux grands prêtres !

  Pour toi je m’avançai dans la colonne de nuée&nbsp;:
  Toi tu m’as conduit à Pilate&nbsp;!

  Moi, dans ta main j’ai mis un sceptre, je t’ai promu peuple royal&nbsp;:
  Toi, tu as placé sur ma tête la couronne d’épines&nbsp;!

  Moi, je t’ai par ma toute puissance exalté&nbsp;:
  Toi, tu m’as pendu au gibet de la Croix&nbsp;!
%}

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \column {
        \concat { \bold "Ô mon peuple, que t'ai-je fait ?" }
        \concat { \bold "En quoi t'ai-je contristé ? Réponds-moi." }
      }
    }
  }
  \vspace #2
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \column {
        \concat { \typewriter "I. " "Peuple égar" \underline é " par l'amertume," }
        \concat { \typewriter "   " "Peuple au cœ" \underline u "r fermé, souviens-toi&nbsp;!" }
        \concat { \typewriter "   " "Le M" \underline a "ître t'a libéré" }
        \concat { \typewriter "   " "Tant d'am" \underline o "ur serait-il sans réponse," }
        \concat { \typewriter "   " "tant d'amour d'un Di" \underline e "u crucifié&nbsp;?" }
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Moi, depuis l'aur" \underline o "re des mondes," }
        \concat { \typewriter "   " "j'ai prépar" \underline é " ton aujourd'hui&nbsp;;" }
        \concat { \typewriter "   " "toi, tu rej" \underline e "ttes la vraie Vie" }
        \concat { \typewriter "   " "qui peut donner la j" \underline o "ie sans ombre," }
        \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" }
        \vspace #1
        \concat { \typewriter "3. " "Moi, j'ai pris p" \underline a "rt à ton exode," }
        \concat { \typewriter "   " "par la nu" \underline é "e je t'ai conduit&nbsp;;" }
        \concat { \typewriter "   " "toi, tu m'enf" \underline e "rmes dans ta nuit," }
        \concat { \typewriter "   " "tu ne sais pl" \underline u "s où va ma gloire," }
        \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Moi, j'ai brisé tes l" \underline i "ens d'esclave," }
        \concat { \typewriter "   " "j'ai fait sombr" \underline e "r tes ennemis&nbsp;;" }
        \concat { \typewriter "   " "toi, tu me l" \underline i "vres à l'ennemi," }
        \concat { \typewriter "   " "tu me prép" \underline a "res une autre Pâque," }
        \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" }
        \vspace #1
        \concat { \typewriter "4. " "Moi, j'ai envoy" \underline é " mes prophètes," }
        \concat { \typewriter "   " "ils ont cri" \underline é " dans ton exil&nbsp;;" }
        \concat { \typewriter "   " "toi, t" \underline u " ne veux pas revenir" }
        \concat { \typewriter "   " "tu deviens s" \underline o "urd quand je t'appelle," }
        \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" }
      }
    }
    \vspace #1
    \fill-line {
      \column {
        \concat { \typewriter "5. " "Moi, j'ai voul" \underline u ", vivante Sève," }
        \concat { \typewriter "   " "jeter l'esp" \underline o "ir de fruits nouveaux&nbsp;;" }
        \concat { \typewriter "   " "toi, tu te c" \underline o "upes de mes eaux" }
        \concat { \typewriter "   " "mais pour all" \underline e "r vers quelle sève&nbsp;?" }
        \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" }
      }
    }
  }
  \vspace #2
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \column {
        \concat { \typewriter "II. " "Vigne aux rais" \underline i "ns d'amertume," }
        \concat { \typewriter "    " "Vigne aux sarm" \underline e "nts dessechés, souviens-toi&nbsp;!" }
        \concat { \typewriter "    " "La Gr" \underline a "ppe fut vendangée&nbsp;;" }
        \concat { \typewriter "    " "Ce Fruit m" \underline û "r serait-il sans partage," }
        \concat { \typewriter "    " "ce Fruit mûr que Di" \underline e "u a pressé&nbsp;?" }
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "6. " "Moi, j'ai porté le p" \underline o "ids des chaînes," }
        \concat { \typewriter "   " "j'ai courbé le d" \underline o "s sous les fouets&nbsp;;" }
        \concat { \typewriter "   " "toi, tu me bl" \underline e "sses en l'opprimé," }
        \concat { \typewriter "   " "l'innocent tomb" \underline é " sous la haine," }
        \concat { \typewriter "   " "    ô mon frère, réponds-moi&nbsp;!" }
        \vspace #1
        \concat { \typewriter "8. " "Moi, j'ai march" \underline é " vers le calvaire," }
        \concat { \typewriter "   " "où mes deux br" \underline a "s furent cloués&nbsp;;" }
        \concat { \typewriter "   " "toi, tu ref" \underline u "ses la montée," }
        \concat { \typewriter "   " "quand meurt en cr" \underline o "ix l'un de mes frères," }
        \concat { \typewriter "   " "    ô mon frère, réponds-moi&nbsp;!" }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "7. " "Moi, j'ai porté sc" \underline e "ptre et couronne" }
        \concat { \typewriter "   " "et mante" \underline a "u royal empourpré&nbsp;;" }
        \concat { \typewriter "   " "toi, tu roug" \underline i "s de confesser" }
        \concat { \typewriter "   " "le Fils de Di" \underline e "u parmi les hommes&nbsp;?," }
        \concat { \typewriter "   " "    ô mon frère, réponds-moi&nbsp;!" }
        \vspace #1
        \concat { \typewriter "9. " "Moi, je rev" \underline i "s depuis l'Aurore" }
        \concat { \typewriter "   " "où le Viv" \underline a "nt m'a réveillé&nbsp;;" }
        \concat { \typewriter "   " "toi, le tém" \underline o "in de ma clarté," }
        \concat { \typewriter "   " "es-tu viv" \underline a "nt parmi les hommes&nbsp;?" }
        \concat { \typewriter "   " "    ô mon frère, réponds-moi&nbsp;!" }
      }
    }
  }
  \vspace #2
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \column {
      \concat { \typewriter "III. " "Frère sevr" \underline é " d'amertume," }
      \concat { \typewriter "     " "frère au cœ" \underline u "r desséché, souviens-toi&nbsp;!" }
      \concat { \typewriter "     " "Ton fr" \underline è "re t'a relevé," }
      \concat { \typewriter "     " "Jésus-Christ, le V" \underline e "rbe et la Réponse," }
      \concat { \typewriter "     " "Jésus-Christ, l'Am" \underline o "ur révélé." }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
%\include "../libs/defaultPianoSettings.ily"
\include "../libs/layouts/commonSettings.ily"
%staffCustomSize = 16.5
RefrainPartition = {
  <<
    % Refrain pour chœur à 4 voix mixtes
    \new ChoirStaff = "Antophon2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "AntiphonHighStaff" <<
        \clef "treble"
        \new Voice = "antiphonRhythms" { \antiphonRhythms }
        \new Voice = "antiphonSoprano" { \voiceOne \global \sopranoAntiphonMusic }
        \new Voice = "antiphonAlto" { \voiceTwo \global \altoAntiphonMusic }
        \new Lyrics \lyricsto "antiphonSoprano" { \sopranoAntiphonLyrics }
      >>
      \new Staff  = "AntiphonLowStaff" <<
        \clef "bass"
        \new Voice = "antiphonRhythms" \antiphonRhythms
        \new Voice = "antiphonTenor" { \voiceOne \global \tenorAntiphonMusic }
        \new Voice = "antiphonBass" { \voiceTwo \global \bassAntiphonMusic }
        \new Lyrics \lyricsto "antiphonBass" { \bassAntiphonLyrics }
      >>
    >>
  >>
}
GlobalPartition = {
  \StancePartition
  \ReponPartition
  \RefrainPartition
}
    % Psalmodie à 4 voix mixtes
    %{\new ChoirStaff = "versePsalmody" <<
      \new Staff = "verseSopranoAlto" \with { printPartCombineTexts = ##f } <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef treble
        %\partcombine
        \new Voice = "verseSoprano" << \voiceOne { \sopranoVerseMusic } >>
        \new Voice = "verseAlto" << \voiceTwo { \altoVerseMusic } >>
        \new Lyrics \lyricsto "verseSoprano" { \reponsSopAltLyrics }
      >>
      \new Staff = "verseTenorBass" \with { printPartCombineTexts = ##f } <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \global
        \clef bass
        \new Voice = "verseTenor" << \voiceOne { \tenorVerseMusic } >>
        \new Voice = "verseBass" << \voiceTwo { \bassVerseMusic } >>
        \new Lyrics { \reponsTenBassLyrics }
      >>
    >>%}

% Load PDF output
%\include "../libs/layouts/outputPDF.ily"
%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
#(set-global-staff-size staffCustomSize)
\score {
  \GlobalPartition
  \layout {
      ragged-last = ##f
      short-indent = 0.8\cm
      \context {
          \FiguredBass
          \override BassFigure #'font-size = #-1
      }
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \Score
          \omit BarNumber
      }
      \context {
          \Voice
          \consists "Horizontal_bracket_engraver"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
  \header {
    title = \title
    subtitle = \subtitle
    composer = \composer
    composerPrefix = \composerPrefix
    poet = \poet
    poetPrefix = \poetPrefix
    dedication = \dedicace
  }
}

\pageBreak
\verseLyrics