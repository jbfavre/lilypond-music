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

% Global staff size.
% Other sizes will be relative.
% Good to customize to get a "one page only" psalm, when possible
staffCustomSize = 16
#(set-global-staff-size staffCustomSize)

topToMarkupSpacing =
  #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))

markupToSystemSpacing =
  #'((basic-distance . 10)
     (minimum-distance . 10)
     (padding . 10)
     (stretchability . 10))

systemToSystemSpacing =
  #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))

%{
  Default margins in millimeters (equal to 1\cm)
%}
leftMargin = 20
rightMargin = 20
topMargin = 10
bottomMargin = 10

%{
  Margin for two-sided printed scores
  Should be set to false for conductor's score, since it's usualy better
  to have conductor's score printed on one side only when possible
%}
twoSided = ##t
innerMargin = 10
outerMargin = 10

%{
  Fonts settings
%}
fontMusic = "emmentaler"            % default
fontBrace = "emmentaler"            % default
fontRoman = "Latin Modern Roman"
fontSans = "Latin Modern Sans"
fontTypewriter = "Monospace Regular"
fontFactor = 20 % unnecessary if the staff size is default

scoreTitleMarkupSetting = \markup \columns {
  \fill-line {
      \column {
        \line {
          \left-column {
            \vspace #1.1
            \fontsize #7 \sans \fromproperty #'header:title
            \fontsize #1 \typewriter \fromproperty #'header:subtitle
          }
        }
      }
      \column {
        \line {
          \fontsize #-2
          \left-column {
            \line { \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
            \line { \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
            " "
            \typewriter \italic \fromproperty #'header:dedication
          }
        }
      }
    }
}
oddFooterMarkupSetting = \markup {}
\paper {
  markup-system-spacing = \markupToSystemSpacing
  scoreTitleMarkup = \scoreTitleMarkupSetting
  oddFooterMarkup = \oddFooterMarkupSetting
  #(include-special-characters)
}

%%%%%
%%%%% Composition details
%%%%%
title = "Impropères"
real_poet = ""
subtitle = "Vendredi saint - Chant des reproches"
composer = "Jean Baptiste Favre"

global = {
  \key a \minor
  \time 2/4
  }
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Stance pour soliste et orgue
%%%%%
stanceRhythms = {
  \global
  \markCustom "Stance" \partial 4 s4 \time 3/4 s2. \time 2/4 s2 \time 3/4 s2. \time 2/4 s2 \break
}
stanceMelody = {
  \partial 4 a8 a gs4 gs8 gs a b gs4 a8 b c8 b8 a4 a gs!2 \breathe
  }
stanceLyrics = \lyricmode {
  Ô mon peu -- ple, que t'ai- -- je fait&nbsp;?
  En quoi t'ai- -- je con -- tris -- té&nbsp;?
}
stanceSopranoMusic = \relative c'' { \stanceMelody }
stanceAltoMusic = \relative c' { e8 e e4 e8 e e f  e4 e8 g g8 d8 e4 f e2 }
stanceTenorMusic = \relative c' { c8 c b4 b8 b c d b4 c8 d e8 d8 c4 c4 b2 }
stanceBassMusic = \relative c' { a8 a e4 e8 e a, d e4 a8 g c,8 g'8 a4 d, e2 }
StancePartition = {
  <<
    % Stance pour soliste et orgue
    \new ChoirStaff = "stance2Voices" \with { instrumentName = "Soliste" } <<
      \new Staff = "stanceHighStaff" <<
        \clef "bass"
        \new Voice = "stanceRhythms" { \stanceRhythms }
        \new Voice = "stanceMelody" { \relative c' { \stanceMelody } }
        \new Lyrics \lyricsto "stanceMelody" { \stanceLyrics }
      >>
    >>
    \new ChoirStaff = "stance2Voices" \with { instrumentName = "Clavier" } <<
      \new Staff = "stanceHighStaff" <<
        \clef "treble"
        \new Voice = "stanceRhythms" { \stanceRhythms }
        \new Voice = "stanceSoprano" { \voiceOne  \stanceSopranoMusic }
        \new Voice = "stanceAlto" { \voiceTwo \stanceAltoMusic }
      >>
      \new Staff  = "stanceLowStaff" <<
        \clef "bass"
        \new Voice = "stanceRhythms" \stanceRhythms
        \new Voice = "stanceTenor" { \voiceOne \stanceTenorMusic }
        \new Voice = "stanceBass" { \voiceTwo \stanceBassMusic }
      >>
    >>
  >>
}
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Répons pour chœur à 4 voix mixtes
%%%%%
reponRhythms = { s2*4 \bar "||" \break }
reponSopranoMusic = \relative c'' { a4. a8 a4. a8 a4 a gs2 }
reponAltoMusic = \relative c' { e4. e8 e4. e8 e4 f e2 }
reponTenorMusic = \relative c' { c4. c8 d4. d8 c4 c b2 }
reponBassMusic = \relative c { a4. a8 b4. b8 c4 d e2 }
reponLyrics = \lyricmode { Ô mon peu -- ple, ré -- ponds- -- moi. }
ReponPartition = {
  <<
    % Répons pour chœur à 4 voix mixtes
    \new ChoirStaff = "repon2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "reponHighStaff" <<
        \clef "treble"
        \new Voice = "reponRhythms" \reponRhythms
        \new Voice = "reponSoprano" { \voiceOne \reponSopranoMusic }
        \new Voice = "reponAlto" { \voiceTwo \reponAltoMusic }
      >>
      \new Lyrics \lyricsto "reponSoprano" { \reponLyrics }
      \new Staff  = "reponLowStaff" <<
        \clef "bass"
        \new Voice = "reponRhythms" \reponRhythms
        \new Voice = "reponTenor" { \voiceOne \reponTenorMusic }
        \new Voice = "reponBass" { \voiceTwo \reponBassMusic }
      >>
    >>
  >>
}
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Antienne pour chœur à 4 voix mixtes
%%%%%
antienneRhythms = \relative c { \markCustom "Repons" s2*8 \bar "||" \break }
sopranoAntienneMusic = \relative c'' {
  a4 a4 gs2 a4 b8 (a) gs4 gs8 gs a4 b c c8 b a4 gs a2
}
altoAntienneMusic = \relative c' {
  e4 f e2 e4 f e e8 e e4 f4 a4 f8 f e4 e e2
  }
tenorAntienneMusic = \relative c' {
  c4 c4 b2 c4 b b4 b8 b c4 d4 e4 d8 d c4 b c2
  }
bassAntienneMusic = \relative c {
  a4 d e2 c4 d e4 e8 d c4 b4 a d8 d e4 e a,2
}

sopranoAntienneLyrics = \lyricmode {
  Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous.
  }
AntiennePartition = {
  <<
    % Refrain pour chœur à 4 voix mixtes
    \new ChoirStaff = "antienne2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "antienneHighStaff" <<
        \clef "treble"
        \new Voice = "antienneRhythms" { \antienneRhythms }
        \new Voice = "antienneSoprano" { \voiceOne \sopranoAntienneMusic }
        \new Voice = "antienneAlto" { \voiceTwo \altoAntienneMusic }
      >>
        \new Lyrics \lyricsto "antienneSoprano" { \sopranoAntienneLyrics }
      \new Staff  = "antienneLowStaff" <<
        \clef "bass"
        \new Voice = "antienneRhythms" \antienneRhythms
        \new Voice = "antienneTenor" { \voiceOne \tenorAntienneMusic }
        \new Voice = "antienneBass" { \voiceTwo \bassAntienneMusic }
      >>
    >>
  >>
}
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Chorus pour chœur à 4 voix mixtes
%%%%%
chorusRhythms = \relative c' { \global \markCustom "Chorus" s2*8 \break s2*8 \break s2*8 \break }
sopranoChorusMusic = \relative c'' { a2 s2*7 a2 s2*7 a2 s2*7 }
altoChorusMusic = \relative c' { e2 s2*7 e2 s2*7 e2 s2*7 }
tenorChorusMusic = \relative c' { c2 s2*7 c2 s2*7 c2 s2*7 }
bassChorusMusic = \relative c' { a2 s2*7 a2 s2*7 a2 s2*7 }
chorusLyrics = \lyricmode {
  Peu -- ple~é -- ga -- ré par l'a -- mer -- tu -- me,
  Peu -- ple~au cœur fer -- mé, sou -- viens- -- toi&nbsp;!
  Le Maî -- tre t'a li -- bé -- ré
  Tant d'a -- mour se -- rait- -- il sans ré -- pon -- se,
  tant d'a -- mour d'un Dieu cru -- ci -- fié&nbsp;?
}
ChorusPartition = {
  <<
    % Refrain pour chœur à 4 voix mixtes
    \new ChoirStaff = "chorus2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "chorusHighStaff" <<
        \clef "treble"
        \new Voice = "chorusRhythms" { \chorusRhythms }
        \new Voice = "chorusSoprano" { \voiceOne \sopranoChorusMusic }
        \new Voice = "chorusAlto" { \voiceTwo \altoChorusMusic }
      >>
      %\new Lyrics \lyricsto "chorusSoprano" { \chorusLyrics }
      \new Staff  = "chorusLowStaff" <<
        \clef "bass"
        \new Voice = "chorusRhythms" \chorusRhythms
        \new Voice = "chorusTenor" { \voiceOne \tenorChorusMusic }
        \new Voice = "chorusBass" { \voiceTwo \bassChorusMusic }
      >>
    >>
  >>
}


%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
\bookpart {
  \score {
    { \StancePartition \ReponPartition \AntiennePartition }
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
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
  \markuplist {
    \override #'(font-family . sans)
    \override #'(font-size . 2)
    \column {
      \fill-line {
        \column {
          \concat { \bold { \typewriter "Stance. " "Ô mon peuple, que t'ai-je fait ?" } }
          \concat { \bold { \typewriter "        " "En quoi t'ai-je contristé ?" } }
          \concat { \bold { \typewriter "        " "Ô mon peuple, réponds-moi." } }
        }
      }
    }
    \vspace #1
    \override #'(font-family . sans)
    \override #'(font-size . 2)
    \column {
      \fill-line {
        \column {
          \concat {  \with-color #red { \typewriter "   ℟." } \italic "Ô Dieu saint, ô Dieu fort, ô Dieu immortel prends pitié de nous." }
        }
      }
    }
  }
}
sopranoVerseMusic = \relative c' {
  \cadenzaOn
   f\breve g1  a4 \bar "|"
   f\breve g1  g4 g a \bar "|"
   bf\breve bf1  a4 g g \bar "|"
  }
altoVerseMusic= \relative c' {
  c\breve e1 d4
  d\breve e1 e4 e e
  g\breve f1 f4 f f8[ e]
  }
tenorVerseMusic= \relative c' {
  a\breve g1 f4
  a\breve c1 c4 c cs
  df\breve df!1 df!4 d bf
  }
bassVerseMusic = \relative c {
  f\breve c1 d4
  d\breve c1 c4 bf a
  bf\breve g1 bf4 b8[ d] c4
  }


\bookpart {
  \score {
    { \ChorusPartition \AntiennePartition }
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
    }
    \header {
      title = ##f
      subtitle = ##f
      composer = ##f
      composerPrefix = ##f
      poet = ##f
      poetPrefix = ##f
      dedication = ##f
    }
  }
  \markuplist {
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
      \column {
        \fill-line {
          \column {
            \concat { \with-color #red { \typewriter "℟. " } \italic { "Ô Dieu saint, ô Dieu fort, ô Dieu immortel prends pitié de nous." } }
          }
        }
      }
      \vspace #1
      \fill-line {
        \left-column{
          \concat { \typewriter "1. " "Moi, depuis l'aur" \underline o "re des mondes," }
          \concat { \typewriter "   " "j'ai prépar" \underline é " ton aujourd'hui&nbsp;;" }
          \concat { \typewriter "   " "toi, tu rej" \underline e "ttes la vraie Vie" }
          \concat { \typewriter "   " "qui peut donner la j" \underline o "ie sans ombre," }
          \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" \with-color #red { \typewriter "   ℟." } }
          \vspace #1
          \concat { \typewriter "3. " "Moi, j'ai pris p" \underline a "rt à ton exode," }
          \concat { \typewriter "   " "par la nu" \underline é "e je t'ai conduit&nbsp;;" }
          \concat { \typewriter "   " "toi, tu m'enf" \underline e "rmes dans ta nuit," }
          \concat { \typewriter "   " "tu ne sais pl" \underline u "s où va ma gloire," }
          \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" \with-color #red { \typewriter "   ℟." } }
        }
        \hspace #1
        \left-column {
          \concat { \typewriter "2. " "Moi, j'ai brisé tes l" \underline i "ens d'esclave," }
          \concat { \typewriter "   " "j'ai fait sombr" \underline e "r tes ennemis&nbsp;;" }
          \concat { \typewriter "   " "toi, tu me l" \underline i "vres à l'ennemi," }
          \concat { \typewriter "   " "tu me prép" \underline a "res une autre Pâque," }
          \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" \with-color #red { \typewriter "   ℟." } }
          \vspace #1
          \concat { \typewriter "4. " "Moi, j'ai envoy" \underline é " mes prophètes," }
          \concat { \typewriter "   " "ils ont cri" \underline é " dans ton exil&nbsp;;" }
          \concat { \typewriter "   " "toi, t" \underline u " ne veux pas revenir" }
          \concat { \typewriter "   " "tu deviens s" \underline o "urd quand je t'appelle," }
          \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" \with-color #red { \typewriter "   ℟." } }
        }
      }
      \vspace #1
      \fill-line {
        \column {
          \concat { \typewriter "5. " "Moi, j'ai voul" \underline u ", vivante Sève," }
          \concat { \typewriter "   " "jeter l'esp" \underline o "ir de fruits nouveaux&nbsp;;" }
          \concat { \typewriter "   " "toi, tu te c" \underline o "upes de mes eaux" }
          \concat { \typewriter "   " "mais pour all" \underline e "r vers quelle sève&nbsp;?" }
          \concat { \typewriter "   " "    ô mon peuple, réponds-moi&nbsp;!" \with-color #red { \typewriter "   ℟." } }
        }
      }
    }
  }
}
\bookpart {
  \score {
    { \ChorusPartition \AntiennePartition }
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
    }
    \header {
      title = ##f
      subtitle = ##f
      composer = ##f
      composerPrefix = ##f
      poet = ##f
      poetPrefix = ##f
      dedication = ##f
    }
  }
  \markuplist {
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
      \column {
        \fill-line {
          \column {
            \concat { \with-color #red { \typewriter "℟. " } \italic { "Ô Dieu saint, ô Dieu fort, ô Dieu immortel prends pitié de nous." } }
          }
        }
      }
      \vspace #1
      \fill-line {
        \left-column{
          \concat { \typewriter "6. " "Moi, j'ai porté le p" \underline o "ids des chaînes," }
          \concat { \typewriter "   " "j'ai courbé le d" \underline o "s sous les fouets&nbsp;;" }
          \concat { \typewriter "   " "toi, tu me bl" \underline e "sses en l'opprimé," }
          \concat { \typewriter "   " "l'innocent tomb" \underline é " sous la haine," }
          \concat { \typewriter "   " "    ô mon frère, réponds-moi&nbsp;!" \with-color #red { \typewriter "   ℟." } }
          \vspace #1
          \concat { \typewriter "8. " "Moi, j'ai march" \underline é " vers le calvaire," }
          \concat { \typewriter "   " "où mes deux br" \underline a "s furent cloués&nbsp;;" }
          \concat { \typewriter "   " "toi, tu ref" \underline u "ses la montée," }
          \concat { \typewriter "   " "quand meurt en cr" \underline o "ix l'un de mes frères," }
          \concat { \typewriter "   " "    ô mon frère, réponds-moi&nbsp;!" \with-color #red { \typewriter "   ℟." } }
        }
        \hspace #1
        \left-column {
          \concat { \typewriter "7. " "Moi, j'ai porté sc" \underline e "ptre et couronne" }
          \concat { \typewriter "   " "et mante" \underline a "u royal empourpré&nbsp;;" }
          \concat { \typewriter "   " "toi, tu roug" \underline i "s de confesser" }
          \concat { \typewriter "   " "le Fils de Di" \underline e "u parmi les hommes&nbsp;?," }
          \concat { \typewriter "   " "    ô mon frère, réponds-moi&nbsp;!" \with-color #red { \typewriter "   ℟." } }
          \vspace #1
          \concat { \typewriter "9. " "Moi, je rev" \underline i "s depuis l'Aurore" }
          \concat { \typewriter "   " "où le Viv" \underline a "nt m'a réveillé&nbsp;;" }
          \concat { \typewriter "   " "toi, le tém" \underline o "in de ma clarté," }
          \concat { \typewriter "   " "es-tu viv" \underline a "nt parmi les hommes&nbsp;?" }
          \concat { \typewriter "   " "    ô mon frère, réponds-moi&nbsp;!" \with-color #red { \typewriter "   ℟." } }
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
}