\version "2.22.0"
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
%staffCustomSize = 16
%#(set-global-staff-size staffCustomSize)

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
stanceReponRhythms = { s2*4 \bar "||" \break }
stanceReponSopranoMusic = \relative c'' { a4. a8 a4. a8 a4 a gs2 }
stanceReponAltoMusic = \relative c' { e4. e8 e4. e8 e4 f e2 }
stanceReponTenorMusic = \relative c' { c4. c8 d4. d8 c4 c b2 }
stanceReponBassMusic = \relative c { a4. a8 b4. b8 c4 d e2 }
stanceReponLyrics = \lyricmode { Ô mon peu -- ple, ré -- ponds- -- moi. }
StanceReponPartition = {
  <<
    % Répons pour chœur à 4 voix mixtes
    \new ChoirStaff = "stanceRepon2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "stanceReponHighStaff" <<
        \clef "treble"
        \new Voice = "stanceReponRhythms" \stanceReponRhythms
        \new Voice = "stanceReponSoprano" { \voiceOne \stanceReponSopranoMusic }
        \new Voice = "stanceReponAlto" { \voiceTwo \stanceReponAltoMusic }
      >>
      \new Lyrics \lyricsto "stanceReponSoprano" { \stanceReponLyrics }
      \new Staff  = "stanceReponLowStaff" <<
        \clef "bass"
        \new Voice = "stanceReponRhythms" \stanceReponRhythms
        \new Voice = "stanceReponTenor" { \voiceOne \stanceReponTenorMusic }
        \new Voice = "stanceReponBass" { \voiceTwo \stanceReponBassMusic }
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
antienneRhythms = { \markCustom "Repons" s2*8 \bar "||" \break }
antienneSopranoMusic = \relative c'' { a4 a4 gs2 a4 b8 (a) gs4 gs8 gs a4 b c c8 b a4 gs a2 }
antienneAltoMusic = \relative c' { e4 f e2 e4 f e e8 e e4 f4 a4 f8 f e4 e e2 }
antienneTenorMusic = \relative c' { c4 c4 b2 c4 b b4 b8 b c4 d4 e4 d8 d c4 b c2 }
antienneBassMusic = \relative c { a4 d e2 c4 d e4 e8 d c4 b4 a d8 d e4 e a,2 }

antienneSopranoLyrics = \lyricmode {
  Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous.
  }
AntiennePartition = {
  <<
    % Refrain pour chœur à 4 voix mixtes
    \new ChoirStaff = "antienne2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "antienneHighStaff" <<
        \clef "treble"
        \new Voice = "antienneRhythms" { \antienneRhythms }
        \new Voice = "antienneSoprano" { \voiceOne \antienneSopranoMusic }
        \new Voice = "antienneAlto" { \voiceTwo \antienneAltoMusic }
      >>
        \new Lyrics \lyricsto "antienneSoprano" { \antienneSopranoLyrics }
      \new Staff  = "antienneLowStaff" <<
        \clef "bass"
        \new Voice = "antienneRhythms" \antienneRhythms
        \new Voice = "antienneTenor" { \voiceOne \antienneTenorMusic }
        \new Voice = "antienneBass" { \voiceTwo \antienneBassMusic }
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
chorusOneRhythms = { \global \markCustom "Chorus" s2*7 }
chorusOneSopranoMusic = \relative c'' { a4 g!8 a b4 c b a gs a b4. a8 g!4 fs e2 }
chorusOneAltoMusic =  \relative c' { e4 e8 e g4 g g e e e g4. e8 e4 ds e2 }
chorusOneTenorMusic = \relative c' { c4 d8 c d4 e d c b c d4. c8 b4 b8 (a) gs2 }
chorusOneBassMusic = \relative c' { a4 b8 a g4 c, g' a e a,4 g4. a8 b4 b e2 }

chorusReponRhythms = { s2*2 s2*3 \bar "||" }
chorusReponSopranoMusic = \relative c'' { a4 a a r8 a8 a4 a8 a a4 a gs2 }
chorusReponAltoMusic = \relative c' { e4 e e4 r8 e8 e4 e8 e f4 fs gs2 }
chorusReponTenorMusic = \relative c' { c4 c d4 r8 d8 c4 c8 c c4 b b2 }
chorusReponBassMusic = \relative c { a4 a b4 r8 b8 c4 c8 c d4 ds e2 }

chorusTwoRhythms = { s2*7 }
chorusTwoSopranoMusic = \relative c'' { a8 g!8 a8 b c4 b a a gs a d8 d c b a4 a8 gs a2 }
chorusTwoAltoMusic =  \relative c' { e8 e e g g4 g f f e e b'8 b a f e4 e8 e e2 }
chorusTwoTenorMusic = \relative c' { c8 d8 c d e4 d c c b c f8 f e d c4 c8 b c2 }
chorusTwoBassMusic = \relative c' { a8 b8 a g c,4 g' d8 (e) f (d) e4 a,4 b8 b c d e (f) d e a,2 }

chorusOneLyrics = \lyricmode {
  Peu -- ple~é -- ga -- ré par l'a -- mer -- tu -- me,
  Peu -- ple~au cœur fer -- mé,
}
chorusReponLyrics = \lyricmode { sou -- viens- -- toi&nbsp;! Le Maî -- tre t'a li -- bé -- ré }
chorusTwoLyrics = \lyricmode {
  Tant d'a -- mour se -- rait- -- il sans ré -- pon -- se,
  tant d'a -- mour d'un Dieu cru -- ci -- fié&nbsp;?
}

ChorusOnePartition = {
  <<
    % Refrain pour chœur à 4 voix mixtes
    \new ChoirStaff = "chorus2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "chorusHighStaff" <<
        \clef "treble"
        \new Voice = "chorusRhythms" { \chorusOneRhythms \break \chorusReponRhythms \break \chorusTwoRhythms \break }
        \new Voice = "chorusSoprano" { \voiceOne \chorusOneSopranoMusic \chorusReponSopranoMusic \chorusTwoSopranoMusic }
        \new Voice = "chorusAlto" { \voiceTwo \chorusOneAltoMusic \chorusReponAltoMusic \chorusTwoAltoMusic }
      >>
      \new Lyrics \lyricsto "chorusSoprano" { \chorusOneLyrics \chorusReponLyrics \chorusTwoLyrics }
      \new Staff  = "chorusLowStaff" <<
        \clef "bass"
        \new Voice = "chorusRhythms" { \chorusOneRhythms \chorusReponRhythms \chorusTwoRhythms }
        \new Voice = "chorusTenor" { \voiceOne \chorusOneTenorMusic \chorusReponTenorMusic \chorusTwoTenorMusic }
        \new Voice = "chorusBass" { \voiceTwo \chorusOneBassMusic \chorusReponBassMusic \chorusTwoBassMusic }
      >>
    >>
  >>
}

chorusOneRhythms = { \global \markCustom "Chorus" s2*7 }
chorusOneSopranoMusic = \relative c'' { a4 c8 b a2 gs4 a b c d4 e8 d c4 b8 a gs2 }
chorusOneAltoMusic =  \relative c' { s2*7 }
chorusOneTenorMusic = \relative c' { s2*7 }
chorusOneBassMusic = \relative c' { s2*7 }

chorusReponRhythms = { s2*2 s2*3 \bar "||" }
chorusReponSopranoMusic = \relative c'' { a4 a a r8 a8 a4 a8 a a4 a gs2 }
chorusReponAltoMusic = \relative c' { e4 e e4 r8 e8 e4 e8 e f4 fs gs2 }
chorusReponTenorMusic = \relative c' { c4 c d4 r8 d8 c4 c8 c c4 b b2 }
chorusReponBassMusic = \relative c { a4 a b4 r8 b8 c4 c8 c d4 ds e2 }

chorusTwoRhythms = { s2*7 }
chorusTwoSopranoMusic = \relative c'' { c4 d b c8 d e4 d8 c b4 a4 c8 d c b a4 a8 gs a2 }
chorusTwoAltoMusic =  \relative c' { s2*7 }
chorusTwoTenorMusic = \relative c' { s2*7 }
chorusTwoBassMusic = \relative c' { s2*6 a,2 }
chorusOneLyrics = \lyricmode {
  Vi -- gne~aux rai -- sins d'a -- mer -- tu -- me,
  Vi -- gne~aux sar -- ments des -- sé -- chés
}
chorusReponLyrics = \lyricmode { sou -- viens- -- toi&nbsp;! La Grap -- pe fut ven -- dan -- gée&nbsp;; }
chorusTwoLyrics = \lyricmode {
  Ce Fruit mûr se -- rait- -- il sans par -- ta -- ge,
  ce Fruit mûr que Dieu a pres -- sé&nbsp;?
}
ChorusTwoPartition = {
  <<
    % Refrain pour chœur à 4 voix mixtes
    \new ChoirStaff = "chorus2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "chorusHighStaff" <<
        \clef "treble"
        \new Voice = "chorusRhythms" { \chorusOneRhythms \break \chorusReponRhythms \break \chorusTwoRhythms \break }
        \new Voice = "chorusSoprano" { \voiceOne \chorusOneSopranoMusic \chorusReponSopranoMusic \chorusTwoSopranoMusic }
        \new Voice = "chorusAlto" { \voiceTwo \chorusOneAltoMusic \chorusReponAltoMusic \chorusTwoAltoMusic }
      >>
      \new Lyrics \lyricsto "chorusSoprano" { \chorusOneLyrics \chorusReponLyrics \chorusTwoLyrics }
      \new Staff  = "chorusLowStaff" <<
        \clef "bass"
        \new Voice = "chorusRhythms" { \chorusOneRhythms \chorusReponRhythms \chorusTwoRhythms }
        \new Voice = "chorusTenor" { \voiceOne \chorusOneTenorMusic \chorusReponTenorMusic \chorusTwoTenorMusic }
        \new Voice = "chorusBass" { \voiceTwo \chorusOneBassMusic \chorusReponBassMusic \chorusTwoBassMusic }
      >>
    >>
  >>
}

chorusOneRhythms = { \global \markCustom "Chorus" s2*7 }
chorusOneSopranoMusic = \relative c'' { a4 c8 b a2 gs4 a b c e4. d8 c4 b8 a gs2 }
chorusOneAltoMusic =  \relative c' { s2*7 }
chorusOneTenorMusic = \relative c' { s2*7 }
chorusOneBassMusic = \relative c' { s2*7 }

chorusReponRhythms = { s2*2 s2*3 \bar "||" }
chorusReponSopranoMusic = \relative c'' { a4 a a r8 a8 a4 a8 a a4 a gs2 }
chorusReponAltoMusic = \relative c' { e4 e e4 r8 e8 e4 e8 e f4 fs gs2 }
chorusReponTenorMusic = \relative c' { c4 c d4 r8 d8 c4 c8 c c4 b b2 }
chorusReponBassMusic = \relative c { a4 a b4 r8 b8 c4 c8 c d4 ds e2 }

chorusTwoRhythms = { s2*8 }
chorusTwoSopranoMusic = \relative c' { e4 g a4. g8 a c b a gs4 a4 d8 e c a b2 d4 d cs2 }
chorusTwoAltoMusic =  \relative c' { s2*8 }
chorusTwoTenorMusic = \relative c' { s2*8 }
chorusTwoBassMusic = \relative c' { s2*4 gs8 e a f d2 d4 gs, a2 }
chorusOneLyrics = \lyricmode {
  Frè -- re se -- vré d'a -- mer -- tu --me,
  frè -- re~au cœur des -- sé -- ché
}
chorusReponLyrics = \lyricmode { sou -- viens- -- toi&nbsp;! Ton frè -- re t'as re -- le -- vé&nbsp;; }
chorusTwoLyrics = \lyricmode {
  Jé -- sus- -- Christ, le Ver -- be~et la Ré -- pon -- se,
  Jé -- sus- -- Christ, l'A -- mour ré -- vé -- lé.
}
ChorusThreePartition = {
  <<
    % Refrain pour chœur à 4 voix mixtes
    \new ChoirStaff = "chorus2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "chorusHighStaff" <<
        \clef "treble"
        \new Voice = "chorusRhythms" { \chorusOneRhythms \break \chorusReponRhythms \break \chorusTwoRhythms \break }
        \new Voice = "chorusSoprano" { \voiceOne \chorusOneSopranoMusic \chorusReponSopranoMusic \chorusTwoSopranoMusic }
        \new Voice = "chorusAlto" { \voiceTwo \chorusOneAltoMusic \chorusReponAltoMusic \chorusTwoAltoMusic }
      >>
      \new Lyrics \lyricsto "chorusSoprano" { \chorusOneLyrics \chorusReponLyrics \chorusTwoLyrics }
      \new Staff  = "chorusLowStaff" <<
        \clef "bass"
        \new Voice = "chorusRhythms" { \chorusOneRhythms \chorusReponRhythms \chorusTwoRhythms }
        \new Voice = "chorusTenor" { \voiceOne \chorusOneTenorMusic \chorusReponTenorMusic \chorusTwoTenorMusic }
        \new Voice = "chorusBass" { \voiceTwo \chorusOneBassMusic \chorusReponBassMusic \chorusTwoBassMusic }
      >>
    >>
  >>
}

chorusPsalmRhythms = { \markCustom "Psalmodie" \cadenzaOn \repeat unfold 4 { s\breve s4 \bar "|" } \cadenzaOff \bar"||" \break }
chorusPsalmSoprano = \relative c'' { a\breve gs4 b\breve a4 c\breve b4 a\breve gs!4 }
chorusPsalmAlto = \relative c' { e\breve e4 f\breve e4 a\breve f4 e\breve e4 }
chorusPsalmTenor = \relative c' {c\breve b4 d\breve c4 e\breve d4 c\breve b4 }
chorusPsalmBass = \relative c { a\breve b4 b\breve c4 c\breve d4 e\breve e4}
ChorusPsalmPartition = {
  <<
    % Refrain pour chœur à 4 voix mixtes
    \new ChoirStaff = "chorus2Voices" \with { instrumentName = "Chœur" } <<
      \new Staff = "chorusHighStaff" <<
        \clef "treble"
        \new Voice = "chorusRhythms" { \chorusPsalmRhythms }
        \new Voice = "chorusSoprano" { \voiceOne \chorusPsalmSoprano }
        \new Voice = "chorusAlto" { \voiceTwo \chorusPsalmAlto }
      >>
      \new Staff  = "chorusLowStaff" <<
        \clef "bass"
        \new Voice = "chorusRhythms" { \chorusPsalmRhythms }
        \new Voice = "chorusTenor" { \voiceOne \chorusPsalmTenor }
        \new Voice = "chorusBass" { \voiceTwo \chorusPsalmBass }
      >>
    >>
  >>
}

%%%%%%%%%%%%% PARTITION VISUELLE %%%%%%%%%%%%%
\bookpart {
  \score {
    { \StancePartition \StanceReponPartition \AntiennePartition }
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

\bookpart {
  \score {
    { \ChorusOnePartition \AntiennePartition }
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
          \concat { \typewriter "Chorus I. " "Peuple égar" \underline é " par l'amertume," }
          \concat { \typewriter "          " "Peuple au cœ" \underline u "r fermé, souviens-toi&nbsp;!" }
          \concat { \typewriter "          " "Le M" \underline a "ître t'a libéré" }
          \concat { \typewriter "          " "Tant d'am" \underline o "ur serait-il sans réponse," }
          \concat { \typewriter "          " "tant d'amour d'un Di" \underline e "u crucifié&nbsp;?" }
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
    }
  }
}
\bookpart {
  \score {
    { \ChorusPsalmPartition \StanceReponPartition \AntiennePartition }
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
    { \ChorusTwoPartition \AntiennePartition }
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
          \concat { \typewriter "Chorus II. " "Vigne aux rais" \underline i "ns d'amertume," }
          \concat { \typewriter "           " "Vigne aux sarm" \underline e "nts dessechés, souviens-toi&nbsp;!" }
          \concat { \typewriter "           " "La Gr" \underline a "ppe fut vendangée&nbsp;;" }
          \concat { \typewriter "           " "Ce Fruit m" \underline û "r serait-il sans partage," }
          \concat { \typewriter "           " "ce Fruit mûr que Di" \underline e "u a pressé&nbsp;?" }
        }
      }
      \vspace #1
      \fill-line {
        \column {
          \column {
            \concat { \with-color #red { \typewriter "℟. " } \italic { "Ô Dieu saint, ô Dieu fort, ô Dieu immortel prends pitié de nous." } }
          }
        }
      }
    }
  }
}
\bookpart {
  \score {
    { \ChorusPsalmPartition \StanceReponPartition \AntiennePartition }
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
  }
}
\bookpart {
  \score {
    { \ChorusThreePartition }
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
          \concat { \typewriter "Chorus III. " "Frère sevr" \underline é " d'amertume," }
          \concat { \typewriter "            " "frère au cœ" \underline u "r desséché, souviens-toi&nbsp;!" }
          \concat { \typewriter "            " "Ton fr" \underline è "re t'a relevé," }
          \concat { \typewriter "            " "Jésus-Christ, le V" \underline e "rbe et la Réponse," }
          \concat { \typewriter "            " "Jésus-Christ, l'Am" \underline o "ur révélé." }
        }
      }
    }
  }
}
