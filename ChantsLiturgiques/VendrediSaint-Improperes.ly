\version "2.22.0"
\language "english"
tRall = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70
}
tAcce = {
  \set Score.tempoHideNote = ##t
  \tempo 2=100
}
cesure = {
  \tag #'audio s4
}

\include "../libs/commonFunctions.ily"

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Définitions des partitions
%%%%%
%%%%%
title = "Impropères"
subtitle = "Vendredi saint - Chant des reproches"
composer = "Jean Baptiste Favre"
poet = "AELF"
dedication = "Clichy-la-Garenne, avril 2021"

midiInstrumentName = "acoustic grand"

global = {
  \key a \minor
  \time 2/4
  }

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Stance pour soliste et orgue
%%%%%
%%%%%
stanceRhythms = { \set Score.tempoHideNote = ##t \tempo 4 = 60 \time 3/4 \partial 2 s2 s2. \time 2/4 s2*4 \breathe }
stanceMelody = { a4. a8 gs4 gs8 gs a b gs2 a8 b c b a4 a gs!2 }
stanceSopranoMusic = \relative c'' { \stanceMelody }
stanceAltoMusic = \relative c' { e4. e8 e4 e8 e e f  e2 e8 g g f e4 f e2 }
stanceTenorMusic = \relative c' { c4. c8 d4 c8 b c b b2 c8 d e d d (c) c (b) b2 }
stanceBassMusic = \relative c' { a4. a8 e4 e8 e a, d e2 a8 g c, g' a4 d, e2 }
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
reponRhythms = { s2*4 }
reponSopranoMusic = \relative c'' { a4. a8 a4. a8 a4 a gs2 }
reponAltoMusic = \relative c' { e4. e8 e4. e8 e4 f e2 }
reponTenorMusic = \relative c' { c4. c8 d4. d8 d (c) c (b) b2 }
reponBassMusic = \relative c { a4. a8 b4. b8 c4 d e2 }
% Paroles pour la Stance
reponOneLyrics = \lyricmode { (Ch.)&nbsp;Ô mon peu -- ple, ré -- ponds- -- moi. }
% Paroles pour Psalmodie II
reponTwoLyrics = \lyricmode { Ch.&nbsp;:&nbsp;Ô mon frè -- re, ré -- ponds- -- moi. }

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Antienne pour chœur à 4 voix mixtes
%%%%%
%%%%%
antienneRhythms = { \set Score.tempoHideNote = ##t \tempo 4 = 75 s2*8 }
antienneSopranoMusic = \relative c'' { a4 a4 gs2 a4 b8 (a) gs4 gs8 gs a4 b c c8 b a4 gs a2 }
antienneAltoMusic = \relative c' { e4 f e2 e4 f e e8 e e4 f4 a4 f8 f e4 e e2 }
antienneTenorMusic = \relative c' { c4 c4 b2 c4 b b4 b8 b c4 d4 e4 d8 d d (c) c (b) c2 }
antienneBassMusic = \relative c { a4 d e2 c4 d e4 e8 d c4 b4 a d8 d e4 e a,2 }
antienneLyrics = \lyricmode { (Ass.)&nbsp;Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous. }

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Choral & Psaume I pour chœur à 4 voix mixtes
%%%%%
%%%%%
choralOnePartOneRhythms = { \global \markCustom "Choral I" s2*7 }
choralOnePartOneSopranoMusic = \relative c'' { a4 gs!8 a b4 c b a gs a b4. a8 g!4 fs e2 }
choralOnePartOneAltoMusic =  \relative c' { e4 e8 e g4 g g e e e g4. e8 e4 ds e2 }
choralOnePartOneTenorMusic = \relative c' { c4 d8 c d4 e d c b c d4. c8 b4 b8 (a) gs2 }
choralOnePartOneBassMusic = \relative c' { a4 e8 a g4 c, g' a e a,4 g4. a8 b4 b e2 }
choralOnePartOneLyrics = \lyricmode {
  (Ch.)&nbsp;Peu -- ple~é -- ga -- ré par l'a -- mer -- tu -- me,
  Peu -- ple~au cœur fer -- mé,
}

choralOneReponRhythms = { s2*5 }
choralOneReponSopranoMusic = \relative c'' { a4 a a r8 a8 a4 a8 a a4 a gs2 }
choralOneReponAltoMusic = \relative c' { e4 e e4 r8 e8 e4 e8 e f4 fs gs2 }
choralOneReponTenorMusic = \relative c' { c4 c d4 r8 d8 c4 c8 c c4 b b2 }
choralOneReponBassMusic = \relative c { a4 a b4 r8 b8 c4 c8 c d4 ds e2 }
choralOneReponLyrics = \lyricmode { sou -- viens- -- toi&nbsp;! Le Maî -- tre t'a li -- bé -- ré }

choralOnePartTwoRhythms = { s2*7 }
choralOnePartTwoSopranoMusic = \relative c'' { a8 gs!8 a8 b c4 b a a gs a b8 b a g! fs4 fs8 fs e2 }
choralOnePartTwoAltoMusic =  \relative c' { e8 e e g g4 g f f e e g8 g e e e4 ds8 ds b2 }
choralOnePartTwoTenorMusic = \relative c' { c8 d8 c d e4 d c c b c d8 d c b b c a b gs2 }
choralOnePartTwoBassMusic = \relative c' { a8 e8 a g c,4 g' d8 (e) f (d) e4 a,4 g8 g a e' b4 b8 b e2 }
choralOnePartTwoLyrics = \lyricmode {
  Tant d'a -- mour se -- rait- -- il sans ré -- pon -- se,
  tant d'a -- mour d'un Dieu cru -- ci -- fié&nbsp;?
}

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Choral & Psaume II pour chœur à 4 voix mixtes
%%%%%
%%%%%
choralTwoPartOneRhythms = { \global \markCustom "Choral II" s2*7 }
choralTwoPartOneSopranoMusic = \relative c' { e4 a8 b c2 b4 a gs a b4 c8 b a4 a8 a gs2 }
choralTwoPartOneAltoMusic =  \relative c' { c4 e8 e e2 f4 e e e g g8 f e4 f8 f  e2 }
choralTwoPartOneTenorMusic = \relative c' { a4 c8 b c2 d4 c b c d e8 b c4 c8 c b2 }
choralTwoPartOneBassMusic = \relative c { a4 a'8 gs a2 b8 b, c d e4 a,4 g4 c8 d e4 f8 d e2 }
choralTwoPartOneLyrics = \lyricmode {
  (Ch.)&nbsp;Vi -- gne~aux rai -- sins d'a -- mer -- tu -- me,
  Vi -- gne~aux sar -- ments des -- sé -- chés
}

choralTwoReponRhythms = { s2*5 }
choralTwoReponSopranoMusic = \relative c'' { a4 a a r8 a8 a4 a8 a a4 a gs2 }
choralTwoReponAltoMusic = \relative c' { e4 e e4 r8 e8 e4 e8 e f4 fs gs2 }
choralTwoReponTenorMusic = \relative c' { c4 c d4 r8 d8 c4 c8 c c4 b b2 }
choralTwoReponBassMusic = \relative c { a4 a b4 r8 b8 c4 c8 c d4 ds e2 }
choralTwoReponLyrics = \lyricmode { sou -- viens- -- toi&nbsp;! La Grap -- pe fut ven -- dan -- gée&nbsp;; }

choralTwoPartTwoRhythms = { s2*7 }
choralTwoPartTwoSopranoMusic = \relative c'' { a4 a gs a8 b c4 b8 a a4 gs4 a8 b c b a4 a8 gs a2 }
choralTwoPartTwoAltoMusic =  \relative c' { e4 f e e8 e e4 f8 fs fs4 e e8 e e f e4 e8 e e2 }
choralTwoPartTwoTenorMusic = \relative c' { c4 c b a8 gs a4 b8 b b4 b a8 gs a d c4 b8 b c2 }
choralTwoPartTwoBassMusic = \relative c' { a4 d, e c8 b a4 d8 ds e4 e c8 b a b c8 (d8) e8 e a,2 }
choralTwoPartTwoLyrics = \lyricmode {
  Ce Fruit mûr se -- rait- -- il sans par -- ta -- ge,
  ce Fruit mûr que Dieu a pres -- sé&nbsp;?
}

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Choral III pour chœur à 4 voix mixtes
%%%%%
%%%%%
choralThreePartOneRhythms = { \global \markCustom "Choral III" s2*7 }
choralThreePartOneSopranoMusic = \relative c'' { a4 b8 c b2 a4 gs a b c4. b8 a4 a8 a gs2 }
choralThreePartOneAltoMusic =  \relative c' { e4 e8 e f2 e4 e e f a4. f8 e4 f8 f e2 }
choralThreePartOneTenorMusic = \relative c' { c4 d8 c d2 c4 b a d e4. d8 c4 c8 b b2 }
choralThreePartOneBassMusic = \relative c' { a4 gs8 a b4 (b,) c8 d e d c4 b a4. b8 c4 d8 d e2 }
choralThreePartOneLyrics = \lyricmode {
  Frè -- re se -- vré d'a -- mer -- tu --me,
  frè -- re~au cœur des -- sé -- ché
}

choralThreeReponRhythms = { s2*5 }
choralThreeReponSopranoMusic = \relative c'' { a4 a a r8 a8 a4 a8 a a4 a gs2 }
choralThreeReponAltoMusic = \relative c' { e4 e e4 r8 e8 e4 e8 e f4 fs gs2 }
choralThreeReponTenorMusic = \relative c' { c4 c d4 r8 d8 c4 c8 c c4 b b2 }
choralThreeReponBassMusic = \relative c { a4 a b4 r8 b8 c4 c8 c d4 ds e2 }
choralThreeReponLyrics = \lyricmode { sou -- viens- -- toi&nbsp;! Ton frè -- re t'as re -- le -- vé&nbsp;; }

choralThreePartTwoRhythms = { s2*8 }
choralThreePartTwoSopranoMusic = \relative c' { e4 g a4. b8 c b a b gs4 a4 d8 d c a b2 d4 d cs2 }
choralThreePartTwoAltoMusic =  \relative c' { e4 e f4. f8 a f e f e4 e4 e8 e e f f2 f4 e e2}
choralThreePartTwoTenorMusic = \relative c' { c4 b c4. d8 e d c b b4 c b8 b c c b2 b4 b a2 }
choralThreePartTwoBassMusic = \relative c' { a4 g f d8 (b) a8 b c d e4 a,8 a' gs8 gs a f d2 d4 gs, a2 }
choralThreePartTwoLyrics = \lyricmode {
  Jé -- sus- -- Christ, le Ver -- be~et la Ré -- pon -- se,
  Jé -- sus- -- Christ, l'A -- mour ré -- vé -- lé.
}

choralPsalmRhythms = { \cadenzaOn \cesure \tAcce s\breve \tRall s4 \cesure \bar "|" \tAcce s\breve s1 \tRall s4 \cesure \bar "|" \tAcce s\breve s1 \tRall s4 \cesure \bar "|" \tAcce s\breve s1 \tRall s4 s \cesure \cadenzaOff }
choralPsalmSoprano = \relative c'' { \cesure a\breve gs4 \cesure b\breve gs!1 a4  \cesure c\breve c1  b4 \cesure b\breve   a1 a4 gs! \cesure }
choralPsalmAlto =    \relative c'  { \cesure e\breve e4  \cesure f\breve e1   e4  \cesure e\breve f1  f4 \cesure e\breve   e1 e4 e \cesure }
choralPsalmTenor =   \relative c'  { \cesure c\breve b4  \cesure d\breve d1   c4  \cesure c\breve d1  d4 \cesure b\breve   c1 c4 d \cesure }
choralPsalmBass =    \relative c   { \cesure a\breve e'4 \cesure b\breve e1   a,4 \cesure a\breve a'1 a4 \cesure gs!\breve a1 a,4 bf \cesure }

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
\paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  indent = 1\cm
  % Plan for recto-verso printing with inner margin
  two-sided = ##t
  inner-margin =  2\cm
  outer-margin = 1.5\cm
  }
MidiOutput = \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }
      \tempo 4 = 75
      \set midiMergeUnisons = ##t
    }
FirstScorePaper = \paper {
    markup-system-spacing = #'((basic-distance . 15)
       (minimum-distance . 15)
       (padding . 15)
       (stretchability . 15))
    top-markup-spacing = #'((basic-distance . 5)
       (minimum-distance . 5)
       (padding . 5)
       (stretchability . 5))
    top-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 5)
       (padding . 5)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 8)
       (minimum-distance . 8)
       (padding . 3)
       (stretchability . 3))
    scoreTitleMarkup = \markup \columns {
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
              \vspace #0.5
              \fontsize #-2 \line {
                \left-column {
                  \concat { \typewriter "Texte&nbsp;: " \sans \fromproperty #'header:poet }
                  \concat { \typewriter "Musique&nbsp;: " \sans \fromproperty #'header:composer }
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    oddFooterMarkup = \markup {}
    #(include-special-characters)
  }
OtherScoresPaper = \paper {
    markup-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 5)
       (padding . 5)
       (stretchability . 5))
    top-markup-spacing = #'((basic-distance . 5)
       (minimum-distance . 5)
       (padding . 5)
       (stretchability . 5))
    top-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 5)
       (padding . 5)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 5)
       (padding . 5)
       (stretchability . 5))
    oddFooterMarkup = \markup {}
    #(include-special-characters)
  }
LastScorePaper = \paper {
    top-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 30)
       (padding . 30)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 8)
       (minimum-distance . 8)
       (padding . 3)
       (stretchability . 3))
    oddFooterMarkup = \markup {}
    #(include-special-characters)
}
FirstScoreHeader = \header {
    title = \title
    subtitle = \subtitle
    composer = \composer
    poet = \poet
    dedication = \dedication
  }
OtherScoresHeader = \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    poet = ##f
    dedication = ##f
  }

%%%%%
%%%%%
%%%%%
%%%%%
%%%%%
%%%%% Stance pour soliste et orgue
%%%%%
%%%%%
\bookpart {
  \FirstScorePaper
  \score {
    {
      <<
        \new Staff = "stanceSolistStaff" \with { instrumentName = "Soliste" midiInstrument = \midiInstrumentName }
        <<
          \clef "treble"
          \new Voice = "stanceRhythms" { \markCustom "Stance" \global \stanceRhythms }
          \new Voice = "stanceMelody" { \relative c'' { \stanceMelody } }
        >>
        \new Lyrics \lyricsto "stanceMelody" { \stanceLyrics }
        \new PianoStaff = "stancePiano" \with { instrumentName = "Clavier" midiInstrument = \midiInstrumentName }
        <<
          \new Staff = "stancePianoHighStaff"
          <<
            \clef "treble"
            \new Voice = "stancePianoRhythms" { \stanceRhythms \break }
            \new Voice = "stancePianoSoprano" { \voiceOne \stanceSopranoMusic }
            \new Voice = "stancePianoAlto" { \voiceTwo \stanceAltoMusic }
          >>
          \new Staff  = "stancePianoLowStaff"
          <<
            \clef "bass"
            \new Voice = "stancePianoRhythms" { \stanceRhythms }
            \new Voice = "stancePianoTenor" { \voiceOne \stanceTenorMusic }
            \new Voice = "stancePianoBass" { \voiceTwo \stanceBassMusic }
          >>
        >>
      >>
      \new ChoirStaff = "stanceChoirStaff"
      <<
        \new Staff = "stanceHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } midiInstrument = \midiInstrumentName }
        <<
          \clef "treble"
          \new Voice = "stanceRhythms" { \reponRhythms \bar "||" \break \markCustom "Repons" \antienneRhythms \bar "||" }
          \new Voice = "stanceSoprano" { \voiceOne \reponSopranoMusic \antienneSopranoMusic }
          \new Voice = "stanceAlto" { \voiceTwo \reponAltoMusic \antienneAltoMusic }
        >>
        \new Lyrics \lyricsto "stanceSoprano" { \reponOneLyrics \antienneLyrics }
        \new Staff  = "stanceLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } midiInstrument = \midiInstrumentName }
        <<
          \clef "bass"
          \new Voice = "stanceRhythms" { \reponRhythms \antienneRhythms }
          \new Voice = "stanceTenor" { \voiceOne \reponTenorMusic \antienneTenorMusic}
          \new Voice = "stanceBass" { \voiceTwo \reponBassMusic \antienneBassMusic }
        >>
      >>
    }
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
    }
    \MidiOutput
    \FirstScoreHeader
  }
  \markuplist {
    \override #'(font-family . sans)
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
  \OtherScoresPaper
  \score {
    {
      \new ChoirStaff = "choralChoirStaff" \with { instrumentName = "Chœur" } <<
        \new Staff = "choralChoirHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } } <<
          \clef "treble"
          \new Voice = "choralRhythms" { \choralOnePartOneRhythms \break \choralOneReponRhythms \break \choralOnePartTwoRhythms \bar "||" \break \markCustom "Repons" \antienneRhythms }
          \new Voice = "choralSoprano" { \voiceOne \choralOnePartOneSopranoMusic \choralOneReponSopranoMusic \choralOnePartTwoSopranoMusic \antienneSopranoMusic }
          \new Voice = "choralAlto" { \voiceTwo \choralOnePartOneAltoMusic \choralOneReponAltoMusic \choralOnePartTwoAltoMusic \antienneAltoMusic }
        >>
        \new Lyrics \lyricsto "choralSoprano" { \choralOnePartOneLyrics \choralOneReponLyrics \choralOnePartTwoLyrics \antienneLyrics }
        \new Staff  = "choralChoirLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } } <<
          \clef "bass"
          \new Voice = "choralRhythms" { \choralOnePartOneRhythms \choralOneReponRhythms \choralOnePartTwoRhythms \antienneRhythms }
          \new Voice = "choralTenor" { \voiceOne \choralOnePartOneTenorMusic \choralOneReponTenorMusic \choralOnePartTwoTenorMusic \antienneTenorMusic }
          \new Voice = "choralBass" { \voiceTwo \choralOnePartOneBassMusic \choralOneReponBassMusic \choralOnePartTwoBassMusic \antienneBassMusic }
        >>
      >>
    }
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
    }
    \MidiOutput
    \OtherScoresHeader
  }
  \markuplist {
    \override #'(font-family . sans)
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
  \OtherScoresPaper
  \score {
    {
      \new ChoirStaff = "psalmodyChoirStaff" \with { instrumentName = "Psalmistes" }
      {
        <<
          \new Staff = "psalmodyHighStaff"
          <<
            \clef "treble"
            \new Voice = "psalmodyRhythms" { \global \markCustom "Psalmodie" \choralPsalmRhythms \bar "||" \break }
            \new Voice = "psalmodySoprano" { \voiceOne \choralPsalmSoprano }
            \new Voice = "psalmodyAlto" { \voiceTwo \choralPsalmAlto }
          >>
          \new Staff  = "psalmodyLowStaff" <<
            \clef "bass"
            \new Voice = "psalmodyRhythms" { \global \choralPsalmRhythms }
            \new Voice = "psalmodyTenor" { \voiceOne \choralPsalmTenor }
            \new Voice = "psalmodyBass" { \voiceTwo \choralPsalmBass }
          >>
        >>
        <<
          \new Staff = "psalmodyReponHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } }
          <<
            \clef "treble"
            \new Voice = "psalmodyReponRhythms" { \reponRhythms \bar "||" \break \markCustom "Repons" \antienneRhythms }
            \new Voice = "psalmodyReponSoprano" { \voiceOne \reponSopranoMusic \antienneSopranoMusic }
            \new Voice = "psalmodyReponAlto" { \voiceTwo \reponAltoMusic \antienneAltoMusic }
          >>
          \new Lyrics \lyricsto "psalmodyReponSoprano" { \reponOneLyrics \antienneLyrics }
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
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
    }
    \MidiOutput
    \OtherScoresHeader
  }
  \markuplist {
    \override #'(font-family . sans)
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
          \concat { \typewriter "   " "toi, tu ne ve" \underline u "x pas revenir" }
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
  \OtherScoresPaper
  \score {
    {
      \new ChoirStaff = "choralChoirStaff" \with { instrumentName = "Chœur" } <<
        \new Staff = "choralChoirHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } } <<
          \clef "treble"
          \new Voice = "choralRhythms" { \choralTwoPartOneRhythms \break \choralTwoReponRhythms \break \choralTwoPartTwoRhythms \bar "||" \break \markCustom "Repons" \antienneRhythms }
          \new Voice = "choralSoprano" { \voiceOne \choralTwoPartOneSopranoMusic \choralTwoReponSopranoMusic \choralTwoPartTwoSopranoMusic \antienneSopranoMusic }
          \new Voice = "choralAlto" { \voiceTwo \choralTwoPartOneAltoMusic \choralTwoReponAltoMusic \choralTwoPartTwoAltoMusic \antienneAltoMusic }
        >>
        \new Lyrics \lyricsto "choralSoprano" { \choralTwoPartOneLyrics \choralTwoReponLyrics \choralTwoPartTwoLyrics \antienneLyrics }
        \new Staff  = "choralChoirLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } } <<
          \clef "bass"
          \new Voice = "choralRhythms" { \choralTwoPartOneRhythms \choralTwoReponRhythms \choralTwoPartTwoRhythms \antienneRhythms }
          \new Voice = "choralTenor" { \voiceOne \choralTwoPartOneTenorMusic \choralTwoReponTenorMusic \choralTwoPartTwoTenorMusic \antienneTenorMusic }
          \new Voice = "choralBass" { \voiceTwo \choralTwoPartOneBassMusic \choralTwoReponBassMusic \choralTwoPartTwoBassMusic \antienneBassMusic }
        >>
      >>
    }
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
    }
    \MidiOutput
    \OtherScoresHeader
  }
  \markuplist {
    \override #'(font-family . sans)
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
  \OtherScoresPaper
  \score {
    {
      \new ChoirStaff = "psalmodyChoirStaff" \with { instrumentName = "Psalmistes" }
      {
        <<
          \new Staff = "psalmodyHighStaff"
          <<
            \clef "treble"
            \new Voice = "psalmodyRhythms" { \global \markCustom "Psalmodie" \choralPsalmRhythms \bar "||" \break }
            \new Voice = "psalmodySoprano" { \voiceOne \choralPsalmSoprano }
            \new Voice = "psalmodyAlto" { \voiceTwo \choralPsalmAlto }
          >>
          \new Staff  = "psalmodyLowStaff" <<
            \clef "bass"
            \new Voice = "psalmodyRhythms" { \global \choralPsalmRhythms }
            \new Voice = "psalmodyTenor" { \voiceOne \choralPsalmTenor }
            \new Voice = "psalmodyBass" { \voiceTwo \choralPsalmBass }
          >>
        >>
        <<
          \new Staff = "psalmodyReponHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } }
          <<
            \clef "treble"
            \new Voice = "psalmodyReponRhythms" { \reponRhythms \bar "||" \break \markCustom "Repons" \antienneRhythms }
            \new Voice = "psalmodyReponSoprano" { \voiceOne \reponSopranoMusic \antienneSopranoMusic }
            \new Voice = "psalmodyReponAlto" { \voiceTwo \reponAltoMusic \antienneAltoMusic }
          >>
          \new Lyrics \lyricsto "psalmodyReponSoprano" { \reponTwoLyrics \antienneLyrics }
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
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
    }
    \MidiOutput
    \OtherScoresHeader
  }
  \markuplist {
    \override #'(font-family . sans)
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
  \LastScorePaper
  \score {
    {
      <<
        \new ChoirStaff = "choralChoirStaff" \with { instrumentName = "Chœur" } <<
          \new Staff = "choralChoirHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } } <<
            \clef "treble"
            \new Voice = "choralRhythms" { \choralThreePartOneRhythms \break \choralThreeReponRhythms \break \choralThreePartTwoRhythms \bar "|."}
            \new Voice = "choralSoprano" { \voiceOne \choralThreePartOneSopranoMusic \choralThreeReponSopranoMusic \choralThreePartTwoSopranoMusic }
            \new Voice = "choralAlto" { \voiceTwo \choralThreePartOneAltoMusic \choralThreeReponAltoMusic \choralThreePartTwoAltoMusic }
          >>
          \new Lyrics \lyricsto "choralSoprano" { \choralThreePartOneLyrics \choralThreeReponLyrics \choralThreePartTwoLyrics }
          \new Staff  = "choralChoirLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } } <<
            \clef "bass"
            \new Voice = "choralRhythms" { \choralThreePartOneRhythms \choralThreeReponRhythms \choralThreePartTwoRhythms }
            \new Voice = "choralTenor" { \voiceOne \choralThreePartOneTenorMusic \choralThreeReponTenorMusic \choralThreePartTwoTenorMusic }
            \new Voice = "choralBass" { \voiceTwo \choralThreePartOneBassMusic \choralThreeReponBassMusic \choralThreePartTwoBassMusic }
          >>
        >>
      >>
    }
    \layout {
        ragged-last = ##f
        \context {
            \Staff
            \RemoveEmptyStaves
        }
    }
    \MidiOutput
    \OtherScoresHeader
  }
  \markuplist {
    \override #'(font-family . sans)
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
