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
%%%%% Définitions de la partition
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
%%%%%
stanceRhythms = { \partial 4 s4 \time 3/4 s2. \time 2/4 s2 \time 3/4 s2. \time 2/4 s2 \break }
stanceMelody = { \partial 4 a8 a gs4 gs8 gs a b gs4 a8 b c8 b8 a4 a gs!2 \breathe }
stanceSopranoMusic = \relative c'' { \stanceMelody }
stanceAltoMusic = \relative c' { e8 e e4 e8 e e f  e4 e8 g g8 d8 e4 f e2 }
stanceTenorMusic = \relative c' { c8 c b4 b8 b c d b4 c8 d e8 d8 c4 c4 b2 }
stanceBassMusic = \relative c' { a8 a e4 e8 e a, d e4 a8 g c,8 g'8 a4 d, e2 }
stanceLyrics = \lyricmode {
  Ô mon peu -- ple, que t'ai- -- je fait&nbsp;?
  En quoi t'ai- -- je con -- tris -- té&nbsp;?
}

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Répons pour chœur à 4 voix mixtes
%%%%%
%%%%%
reponRhythms = { s2*4 \bar "||" \break }
reponSopranoMusic = \relative c'' { a4. a8 a4. a8 a4 a gs2 }
reponAltoMusic = \relative c' { e4. e8 e4. e8 e4 f e2 }
reponTenorMusic = \relative c' { c4. c8 d4. d8 c4 c b2 }
reponBassMusic = \relative c { a4. a8 b4. b8 c4 d e2 }
reponLyrics = \lyricmode { Ô mon peu -- ple, ré -- ponds- -- moi. }

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Antienne pour chœur à 4 voix mixtes
%%%%%
%%%%%
antienneRhythms = { s2*8 \bar "||" \break }
antienneSopranoMusic = \relative c'' { a4 a4 gs2 a4 b8 (a) gs4 gs8 gs a4 b c c8 b a4 gs a2 }
antienneAltoMusic = \relative c' { e4 f e2 e4 f e e8 e e4 f4 a4 f8 f e4 e e2 }
antienneTenorMusic = \relative c' { c4 c4 b2 c4 b b4 b8 b c4 d4 e4 d8 d c4 b c2 }
antienneBassMusic = \relative c { a4 d e2 c4 d e4 e8 d c4 b4 a d8 d e4 e a,2 }
antienneLyrics = \lyricmode { Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous. }

StancePartition = {
    % Stance pour soliste et orgue
    <<
      \new Staff = "stanceSolistStaff" \with { instrumentName = "Soliste" } <<
        \clef "bass"
        \new Voice = "stanceRhythms" { \markCustom "Stance" \global \stanceRhythms }
        \new Voice = "stanceMelody" { \relative c' { \stanceMelody } }
      >>
      \new Lyrics \lyricsto "stanceMelody" { \stanceLyrics }
      \new PianoStaff = "stancePiano" \with { instrumentName = "Piano" } <<
        \new Staff = "stancePianoHighStaff" <<
          \clef "treble"
          \new Voice = "stancePianoRhythms" { \stanceRhythms \break }
          \new Voice = "stancePianoSoprano" { \voiceOne \stanceSopranoMusic }
          \new Voice = "stancePianoAlto" { \voiceTwo \stanceAltoMusic }
        >>
        \new Staff  = "stancePianoLowStaff" <<
          \clef "bass"
          \new Voice = "stancePianoRhythms" { \stanceRhythms }
          \new Voice = "stancePianoTenor" { \voiceOne \stanceTenorMusic }
          \new Voice = "stancePianoBass" { \voiceTwo \stanceBassMusic }
        >>
      >>
    >>
    \new ChoirStaff = "stanceChoirStaff" <<
      \new Staff = "stanceHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } } <<
        \clef "treble"
        \new Voice = "stanceRhythms" { \reponRhythms \break \markCustom "Repons" \antienneRhythms }
        \new Voice = "stanceSoprano" { \voiceOne \reponSopranoMusic \antienneSopranoMusic }
        \new Voice = "stanceAlto" { \voiceTwo \reponAltoMusic \antienneAltoMusic }
      >>
      \new Lyrics \lyricsto "stanceSoprano" { \reponLyrics \antienneLyrics }
      \new Staff  = "stanceLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } } <<
        \clef "bass"
        \new Voice = "stanceRhythms" { \reponRhythms \antienneRhythms }
        \new Voice = "stanceTenor" { \voiceOne \reponTenorMusic \antienneTenorMusic}
        \new Voice = "stanceBass" { \voiceTwo \reponBassMusic \antienneBassMusic }
      >>
    >>
}

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Choral I pour chœur à 4 voix mixtes
%%%%%
%%%%%
chorusPartOneRhythms = { \global \markCustom "Choral I" s2*7 }
chorusPartOneSopranoMusic = \relative c'' { a4 gs!8 a b4 c b a gs a b4. a8 g!4 fs e2 }
chorusPartOneAltoMusic =  \relative c' { e4 e8 e g4 g g e e e g4. e8 e4 ds e2 }
chorusPartOneTenorMusic = \relative c' { c4 d8 c d4 e d c b c d4. c8 b4 b8 (a) gs2 }
chorusPartOneBassMusic = \relative c' { a4 e8 a g4 c, g' a e a,4 g4. a8 b4 b e2 }
chorusPartOneLyrics = \lyricmode {
  Peu -- ple~é -- ga -- ré par l'a -- mer -- tu -- me,
  Peu -- ple~au cœur fer -- mé,
}

chorusReponRhythms = { s2*2 s2*3 \bar "||" }
chorusReponSopranoMusic = \relative c'' { a4 a a r8 a8 a4 a8 a a4 a gs2 }
chorusReponAltoMusic = \relative c' { e4 e e4 r8 e8 e4 e8 e f4 fs gs2 }
chorusReponTenorMusic = \relative c' { c4 c d4 r8 d8 c4 c8 c c4 b b2 }
chorusReponBassMusic = \relative c { a4 a b4 r8 b8 c4 c8 c d4 ds e2 }
chorusReponLyrics = \lyricmode { sou -- viens- -- toi&nbsp;! Le Maî -- tre t'a li -- bé -- ré }

chorusPartTwoRhythms = { s2*7 }
chorusPartTwoSopranoMusic = \relative c'' { a8 gs!8 a8 b c4 b a a gs a b8 b a g! fs4 fs8 fs e2 }
chorusPartTwoAltoMusic =  \relative c' { e8 e e g g4 g f f e e g8 g e e e4 ds8 b b2 }
chorusPartTwoTenorMusic = \relative c' { c8 d8 c d e4 d c c b c d8 d c cs8 b8 c a4 gs2 }
chorusPartTwoBassMusic = \relative c' { a8 e8 a g c,4 g' d8 (e) f (d) e4 a,4 g8 g a as b4 b8 b e2 }
chorusPartTwoLyrics = \lyricmode {
  Tant d'a -- mour se -- rait- -- il sans ré -- pon -- se,
  tant d'a -- mour d'un Dieu cru -- ci -- fié&nbsp;?
}

ChorusOnePartition = {
  <<
    \new ChoirStaff = "chorusChoirStaff" \with { instrumentName = "Chœur" } <<
      \new Staff = "chorusChoirHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } } <<
        \clef "treble"
        \new Voice = "chorusRhythms" { \chorusPartOneRhythms \break \chorusReponRhythms \break \chorusPartTwoRhythms \break \antienneRhythms }
        \new Voice = "chorusSoprano" { \voiceOne \chorusPartOneSopranoMusic \chorusReponSopranoMusic \chorusPartTwoSopranoMusic \antienneSopranoMusic }
        \new Voice = "chorusAlto" { \voiceTwo \chorusPartOneAltoMusic \chorusReponAltoMusic \chorusPartTwoAltoMusic \antienneAltoMusic }
      >>
      \new Lyrics \lyricsto "chorusSoprano" { \chorusPartOneLyrics \chorusReponLyrics \chorusPartTwoLyrics \antienneLyrics }
      \new Staff  = "chorusChoirLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } } <<
        \clef "bass"
        \new Voice = "chorusRhythms" { \chorusPartOneRhythms \chorusReponRhythms \chorusPartTwoRhythms \antienneRhythms }
        \new Voice = "chorusTenor" { \voiceOne \chorusPartOneTenorMusic \chorusReponTenorMusic \chorusPartTwoTenorMusic \antienneTenorMusic }
        \new Voice = "chorusBass" { \voiceTwo \chorusPartOneBassMusic \chorusReponBassMusic \chorusPartTwoBassMusic \antienneBassMusic }
      >>
    >>
  >>
}

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Choral II pour chœur à 4 voix mixtes
%%%%%
%%%%%
chorusPartOneRhythms = { \global \markCustom "Choral II" s2*7 }
chorusPartOneSopranoMusic = \relative c' { e4 a8 b c2 b4 a gs a b4 c8 b a4 a8 a gs2 }
chorusPartOneAltoMusic =  \relative c' { c4 e8 e e2 f4 e e e g g8 f e4 f8 f  e2 }
chorusPartOneTenorMusic = \relative c' { a4 c8 b c2 d4 c b c d e8 d c4 c8 c b2 }
chorusPartOneBassMusic = \relative c { a4 a'8 gs a2 b8 b, c d e4 a,4 g4 a8 b c4 f8 d e2 }
chorusPartOneLyrics = \lyricmode {
  Vi -- gne~aux rai -- sins d'a -- mer -- tu -- me,
  Vi -- gne~aux sar -- ments des -- sé -- chés
}

chorusReponRhythms = { s2*2 s2*3 \bar "||" }
chorusReponSopranoMusic = \relative c'' { a4 a a r8 a8 a4 a8 a a4 a gs2 }
chorusReponAltoMusic = \relative c' { e4 e e4 r8 e8 e4 e8 e f4 fs gs2 }
chorusReponTenorMusic = \relative c' { c4 c d4 r8 d8 c4 c8 c c4 b b2 }
chorusReponBassMusic = \relative c { a4 a b4 r8 b8 c4 c8 c d4 ds e2 }
chorusReponLyrics = \lyricmode { sou -- viens- -- toi&nbsp;! La Grap -- pe fut ven -- dan -- gée&nbsp;; }

chorusPartTwoRhythms = { s2*7 }
chorusPartTwoSopranoMusic = \relative c'' { a4 a gs a8 b c4 b8 a a4 gs4 a8 b c b a4 a8 gs a2 }
chorusPartTwoAltoMusic =  \relative c' { e4 f e e8 e e4 f8 fs fs4 e e8 e e f e8 f8 e4 e2 }
chorusPartTwoTenorMusic = \relative c' { c4 c b a8 gs a4 b8 b b4 b a8 gs a d c8 c8 b4 c2 }
chorusPartTwoBassMusic = \relative c' { a4 d, e c8 b a4 d8 ds e4 e c8 b a b c8 d8 e4 a,2 }
chorusPartTwoLyrics = \lyricmode {
  Ce Fruit mûr se -- rait- -- il sans par -- ta -- ge,
  ce Fruit mûr que Dieu a pres -- sé&nbsp;?
}
stanceReponLyrics = \lyricmode { Ô mon frè -- re, ré -- ponds- -- moi. }

ChorusTwoPartition = {
  <<
    \new ChoirStaff = "chorusChoirStaff" \with { instrumentName = "Chœur" } <<
      \new Staff = "chorusChoirHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } } <<
        \clef "treble"
        \new Voice = "chorusRhythms" { \chorusPartOneRhythms \break \chorusReponRhythms \break \chorusPartTwoRhythms \break \antienneRhythms }
        \new Voice = "chorusSoprano" { \voiceOne \chorusPartOneSopranoMusic \chorusReponSopranoMusic \chorusPartTwoSopranoMusic \antienneSopranoMusic }
        \new Voice = "chorusAlto" { \voiceTwo \chorusPartOneAltoMusic \chorusReponAltoMusic \chorusPartTwoAltoMusic \antienneAltoMusic }
      >>
      \new Lyrics \lyricsto "chorusSoprano" { \chorusPartOneLyrics \chorusReponLyrics \chorusPartTwoLyrics \antienneLyrics }
      \new Staff  = "chorusChoirLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } } <<
        \clef "bass"
        \new Voice = "chorusRhythms" { \chorusPartOneRhythms \chorusReponRhythms \chorusPartTwoRhythms \antienneRhythms }
        \new Voice = "chorusTenor" { \voiceOne \chorusPartOneTenorMusic \chorusReponTenorMusic \chorusPartTwoTenorMusic \antienneTenorMusic }
        \new Voice = "chorusBass" { \voiceTwo \chorusPartOneBassMusic \chorusReponBassMusic \chorusPartTwoBassMusic \antienneBassMusic }
      >>
    >>
  >>
}

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Choral III pour chœur à 4 voix mixtes
%%%%%
%%%%%
chorusPartOneRhythms = { \global \markCustom "Choral III" s2*7 }
chorusPartOneSopranoMusic = \relative c'' { a4 b8 c b2 a4 gs a b c4. a8 b4 a8 a gs2 }
chorusPartOneAltoMusic =  \relative c' { e4 e8 e e2 e4 e e e e4. e8 f4 e8 f e2 }
chorusPartOneTenorMusic = \relative c' { c4 b8 a b2 c4 b a gs a4. c8 d4 c8 c b2 }
chorusPartOneBassMusic = \relative c' { a4 gs8 a d,2  e4 e8 d c4 b a4. a8 b4 c8 d e2 }
chorusPartOneLyrics = \lyricmode {
  Frè -- re se -- vré d'a -- mer -- tu --me,
  frè -- re~au cœur des -- sé -- ché
}

chorusReponRhythms = { s2*2 s2*3 \bar "||" }
chorusReponSopranoMusic = \relative c'' { a4 a a r8 a8 a4 a8 a a4 a gs2 }
chorusReponAltoMusic = \relative c' { e4 e e4 r8 e8 e4 e8 e f4 fs gs2 }
chorusReponTenorMusic = \relative c' { c4 c d4 r8 d8 c4 c8 c c4 b b2 }
chorusReponBassMusic = \relative c { a4 a b4 r8 b8 c4 c8 c d4 ds e2 }
chorusReponLyrics = \lyricmode { sou -- viens- -- toi&nbsp;! Ton frè -- re t'as re -- le -- vé&nbsp;; }

chorusPartTwoRhythms = { s2*4 \break s2*4 }
chorusPartTwoSopranoMusic = \relative c' { e4 g a4. b8 c b a b gs4 a4 d8 d c a b2 d4 d cs2 }
chorusPartTwoAltoMusic =  \relative c' { e4 e f4. g8 a f e f e4 e4 e8 e e f f2 f4 d e2}
chorusPartTwoTenorMusic = \relative c' { c4 b c8 d4 d8 e d c b b4 c b8 b c c b2 a4 b a2 }
chorusPartTwoBassMusic = \relative c' { a4 g f e a,8 b c d e4 a,8 a' gs8 gs a f d2 d4 gs, a2 }
chorusPartTwoLyrics = \lyricmode {
  Jé -- sus- -- Christ, le Ver -- be~et la Ré -- pon -- se,
  Jé -- sus- -- Christ, l'A -- mour ré -- vé -- lé.
}
ChorusThreePartition = {
  <<
    \new ChoirStaff = "chorusChoirStaff" \with { instrumentName = "Chœur" } <<
      \new Staff = "chorusChoirHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } } <<
        \clef "treble"
        \new Voice = "chorusRhythms" { \chorusPartOneRhythms \break \chorusReponRhythms \break \chorusPartTwoRhythms }
        \new Voice = "chorusSoprano" { \voiceOne \chorusPartOneSopranoMusic \chorusReponSopranoMusic \chorusPartTwoSopranoMusic }
        \new Voice = "chorusAlto" { \voiceTwo \chorusPartOneAltoMusic \chorusReponAltoMusic \chorusPartTwoAltoMusic }
      >>
      \new Lyrics \lyricsto "chorusSoprano" { \chorusPartOneLyrics \chorusReponLyrics \chorusPartTwoLyrics }
      \new Staff  = "chorusChoirLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } } <<
        \clef "bass"
        \new Voice = "chorusRhythms" { \chorusPartOneRhythms \chorusReponRhythms \chorusPartTwoRhythms }
        \new Voice = "chorusTenor" { \voiceOne \chorusPartOneTenorMusic \chorusReponTenorMusic \chorusPartTwoTenorMusic }
        \new Voice = "chorusBass" { \voiceTwo \chorusPartOneBassMusic \chorusReponBassMusic \chorusPartTwoBassMusic }
      >>
    >>
  >>
}

chorusPsalmRhythms = { \markCustom "Psalmodie" \cadenzaOn \repeat unfold 4 { s\breve s4 \bar "|" } \cadenzaOff \bar"||" \break }
chorusPsalmSoprano = \relative c'' { a\breve gs4 b\breve a4 c\breve b4 a\breve gs!4 }
chorusPsalmAlto = \relative c' { e\breve e4 f\breve e4 a\breve f4 e\breve e4 }
chorusPsalmTenor = \relative c' {c\breve b4 d\breve c4 e\breve d4 c\breve b4 }
chorusPsalmBass = \relative c { a\breve b4 b\breve c4 c\breve d4 e\breve e4}
ChorusPsalmOnePartition = {
    \new ChoirStaff = "psalmodyChoirStaff" \with { instrumentName = "Psalmistes" }
    {
      <<
        \new Staff = "psalmodyHighStaff"
        <<
          \clef "treble"
          \new Voice = "psalmodyRhythms" { \global \chorusPsalmRhythms \break }
          \new Voice = "psalmodySoprano" { \voiceOne \chorusPsalmSoprano }
          \new Voice = "psalmodyAlto" { \voiceTwo \chorusPsalmAlto }
        >>
        \new Staff  = "psalmodyLowStaff" <<
          \clef "bass"
          \new Voice = "psalmodyRhythms" { \global \chorusPsalmRhythms }
          \new Voice = "psalmodyTenor" { \voiceOne \chorusPsalmTenor }
          \new Voice = "psalmodyBass" { \voiceTwo \chorusPsalmBass }
        >>
      >>
      <<
        \new Staff = "psalmodyReponHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } }
        <<
          \clef "treble"
          \new Voice = "psalmodyReponRhythms" { \reponRhythms \break \antienneRhythms }
          \new Voice = "psalmodyReponSoprano" { \voiceOne \reponSopranoMusic \antienneSopranoMusic }
          \new Voice = "psalmodyReponAlto" { \voiceTwo \reponAltoMusic \antienneAltoMusic }
        >>
        \new Lyrics \lyricsto "psalmodyReponSoprano" { \reponLyrics \antienneLyrics }
        \new Staff  = "psalmodyReponLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } }
        <<
          \clef "bass"
          \new Voice = "psalmodyReponRhythms" { \reponRhythms \antienneRhythms }
          \new Voice = "psalmodyReponTenor" { \voiceOne \reponTenorMusic \antienneTenorMusic }
          \new Voice = "psalmodyReponBass" { \voiceTwo \reponBassMusic \antienneBassMusic }
        >>
      >>
    }
}

reponLyrics = \lyricmode { Ô mon frè -- re, ré -- ponds- -- moi. }
ChorusPsalmTwoPartition = {
    \new ChoirStaff = "psalmodyChoirStaff" \with { instrumentName = "Psalmistes" }
    {
      <<
        \new Staff = "psalmodyHighStaff"
        <<
          \clef "treble"
          \new Voice = "psalmodyRhythms" { \global \chorusPsalmRhythms \break }
          \new Voice = "psalmodySoprano" { \voiceOne \chorusPsalmSoprano }
          \new Voice = "psalmodyAlto" { \voiceTwo \chorusPsalmAlto }
        >>
        \new Staff  = "psalmodyLowStaff" <<
          \clef "bass"
          \new Voice = "psalmodyRhythms" { \global \chorusPsalmRhythms }
          \new Voice = "psalmodyTenor" { \voiceOne \chorusPsalmTenor }
          \new Voice = "psalmodyBass" { \voiceTwo \chorusPsalmBass }
        >>
      >>
      <<
        \new Staff = "psalmodyReponHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } }
        <<
          \clef "treble"
          \new Voice = "psalmodyReponRhythms" { \global \reponRhythms \break \antienneRhythms }
          \new Voice = "psalmodyReponSoprano" { \voiceOne \reponSopranoMusic \antienneSopranoMusic }
          \new Voice = "psalmodyReponAlto" { \voiceTwo \reponAltoMusic \antienneAltoMusic }
        >>
        \new Lyrics \lyricsto "psalmodyReponSoprano" { \reponLyrics \antienneLyrics }
        \new Staff  = "psalmodyReponLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } }
        <<
          \clef "bass"
          \new Voice = "psalmodyReponRhythms" { \global \reponRhythms \antienneRhythms }
          \new Voice = "psalmodyReponTenor" { \voiceOne \reponTenorMusic \antienneTenorMusic }
          \new Voice = "psalmodyReponBass" { \voiceTwo \reponBassMusic \antienneBassMusic }
        >>
      >>
    }
}

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Impression de la partition
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
%%%%%
\bookpart {
  \paper {
    markup-system-spacing = #'((basic-distance . 15)
       (minimum-distance . 15)
       (padding . 15)
       (stretchability . 15))
    top-markup-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 3))
    scoreTitleMarkup = \markup \columns {
        \fill-line {
            \column {
              \line {
                \left-column {
                  \vspace #1.1
                  \fontsize #7 \sans \fromproperty #'header:title
                  \fontsize #3 \typewriter \fromproperty #'header:subtitle
                }
              }
            }
            \column {
              \line {
                \left-column {
                  \vspace #1
                  \line { \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
                  \line { \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
                  " "
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    oddFooterMarkup = \markup {}
    #(include-special-characters)
  }
  \score {
    \StancePartition
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
          \concat { \bold { \typewriter "St. " "Ô mon peuple, que t'ai-je fait ?" } }
          \concat { \bold { \typewriter "    " "En quoi t'ai-je contristé ?" } }
          \concat { \bold { \typewriter "    " "Ô mon peuple, réponds-moi." } }
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

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Choral I pour chœur à 4 voix
%%%%%
%%%%%
\bookpart {
  \paper {
    markup-system-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    top-markup-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    oddFooterMarkup = \markup {}
    #(include-special-characters)
  }
  \score {
    \ChorusOnePartition
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
          \concat { \typewriter "  I. " "Peuple égar" \underline é " par l'amertume," }
          \concat { \typewriter "     " "Peuple au cœ" \underline u "r fermé, souviens-toi&nbsp;!" }
          \concat { \typewriter "     " "Le M" \underline a "ître t'a libéré" }
          \concat { \typewriter "     " "Tant d'am" \underline o "ur serait-il sans réponse," }
          \concat { \typewriter "     " "tant d'amour d'un Di" \underline e "u crucifié&nbsp;?" }
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

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Psalmodie I pour solistes et chœur à 4 voix
%%%%%
%%%%%
\bookpart {
  \paper {
    markup-system-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    top-markup-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    oddFooterMarkup = \markup {}
    #(include-special-characters)
  }
  \score {
    \ChorusPsalmOnePartition
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

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Chœur II et chœur à 4 voix
%%%%%
%%%%%
\bookpart {
  \paper {
    markup-system-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    top-markup-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    oddFooterMarkup = \markup {}
    #(include-special-characters)
  }
  \score {
    \ChorusTwoPartition
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
          \concat { \typewriter " II. " "Vigne aux rais" \underline i "ns d'amertume," }
          \concat { \typewriter "     " "Vigne aux sarm" \underline e "nts desséchés, souviens-toi&nbsp;!" }
          \concat { \typewriter "     " "La Gr" \underline a "ppe fut vendangée&nbsp;;" }
          \concat { \typewriter "     " "Ce Fruit m" \underline û "r serait-il sans partage," }
          \concat { \typewriter "     " "ce Fruit mûr que Di" \underline e "u a pressé&nbsp;?" }
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

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Psalmodie II pour solistes et chœur à 4 voix
%%%%%
%%%%%
\bookpart {
  \paper {
    markup-system-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    top-markup-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    oddFooterMarkup = \markup {}
    #(include-special-characters)
  }
  \score {
    \ChorusPsalmTwoPartition
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

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Choral III pour chœur à 4 voix
%%%%%
%%%%%
\bookpart {
  \paper {
    markup-system-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    top-markup-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
    oddFooterMarkup = \markup {}
    #(include-special-characters)
  }
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
          \concat { \typewriter "III. " "Frère sevr" \underline é " d'amertume," }
          \concat { \typewriter "     " "frère au cœ" \underline u "r desséché, souviens-toi&nbsp;!" }
          \concat { \typewriter "     " "Ton fr" \underline è "re t'a relevé," }
          \concat { \typewriter "     " "Jésus-Christ, le V" \underline e "rbe et la Réponse," }
          \concat { \typewriter "     " "Jésus-Christ, l'Am" \underline o "ur révélé." }
        }
      }
    }
  }
}
