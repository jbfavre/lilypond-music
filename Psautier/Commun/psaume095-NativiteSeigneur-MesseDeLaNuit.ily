\version "2.18.2"
\language "english"

title = "Psaume 95 à 4 voix mixtes"
subtitle = "Nativité du Seigneur - Messe de la nuit"
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, 24 décembre 2018"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PsXCV-NdS-global = {
  \key g \major
  \time 6/8
}

PsXCV-NdS-sopranoAntiphonMusic = \relative c'' {
  \markCustom "Antienne"
  a4 a8 a4. (a8) g a b a g a2. \breathe c4 c8 b4. (b8) a g a4. \fermata \bar "|." \break
  }

PsXCV-NdS-altoAntiphonMusic = \relative c' {
  r4. e4 e8 e d e fs e d e2. \breathe r4. r8 g8 g g e e e4.
  }

PsXCV-NdS-tenorAntiphonMusic =  \relative c' {
  c4. c4. c8 b c d c b c2. \breathe e4 e8 d4. (d8) a b cs4.
  }

PsXCV-NdS-bassAntiphonMusic =  \relative c {
  r4. a4. a a a8 (b) c a4. \breathe r4. e'4. g4 e8 a,4.
  }

PsXCV-NdS-antiphonLyrics = \lyricmode {
  Au -- jourd' -- hui un Sei -- gneur nous est né, C'est le Christ, le Sei -- gneur !
  }

PsXCV-NdS-sopranoAntiphonLyrics = \PsXCV-NdS-antiphonLyrics
PsXCV-NdS-altoAntiphonLyrics = \PsXCV-NdS-antiphonLyrics
PsXCV-NdS-tenorAntiphonLyrics = \PsXCV-NdS-antiphonLyrics
PsXCV-NdS-bassAntiphonLyrics =  \lyricmode {
  Un Sei -- gneur nous est né, Christ et Sei -- gneur !
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PsXCV-NdS-sopranoVerseMusic = \relative c'' {
  \silence \PsXCV-NdS-sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \set Score.markFormatter = #format-mark-box-alphabet
  a\breve a1 g4 \bar "||"
  \mark #2 a\breve c1 a4 b \bar "||"
  \mark \default b\breve g1 b4 a \bar "||"
  }

PsXCV-NdS-altoVerseMusic = \relative c' {
  \silence \PsXCV-NdS-sopranoAntiphonMusic
  e\breve e1 e4 \bar "||"
  e\breve e1 e4 fs \bar "||"
  g\breve d1 g4 e4 \bar "||"
  }

PsXCV-NdS-tenorVerseMusic = \relative c' {
  \silence \PsXCV-NdS-sopranoAntiphonMusic
  c\breve c1 b4 \bar "||"
  c\breve a1 a4 b \bar "||"
  d\breve b1 d4 cs \bar "||"
  }

PsXCV-NdS-bassVerseMusic = \relative c {
  \silence \PsXCV-NdS-sopranoAntiphonMusic
  a\breve a1 e'4 \bar "||"
  a,\breve c1 c4 d4 \bar "||"
  g,\breve g1 g4 a \bar "||"
  }

PsXCV-NdS-verseLyrics = \markup {
  \vspace #1.9
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Chantez au Seigne" \underline u "r un chant nouveau," }
        \concat { \typewriter "   " "chantez au Seigne" \underline u "r, terre entière," }
        \concat { \typewriter "   " "chantez au Seigneur et béniss" \underline e "z son nom !" }
        \vspace #1
        \concat { \typewriter "2. " "De jour en jour, proclam" \underline e "z son salut," }
        \concat { \typewriter "   " "racontez à tous les pe" \underline u "ples sa gloire," }
        \concat { \typewriter "   " "à toutes les nati" \underline o "ns ses merveilles !" }
      }
      \left-column{
        \concat { \typewriter "3. " "Joie au ciel ! Ex" \underline u "lte la terre !" }
        \concat { \typewriter "   " "Les masses de la m" \underline e "r mugissent," }
        \concat { \typewriter "   " "la campagne toute enti" \underline è "re est en fête." }
        \vspace #1
        \concat { \typewriter "4. " "Les arbres des forêts d" \underline a "nsent de joie" }
        \concat { \typewriter "   " "devant la face du Seigne" \underline u "r, car il vient," }
        \concat { \typewriter "   " "car il vi" \underline e "nt pour juger la terre." }
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "5. " "Il jugera le m" \underline o "nde avec justice" \typewriter "  (B)" }
        \concat { \typewriter "   " "et les pe" \underline u "ples selon sa vérité !" \typewriter "  (C)" }
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout

PsXCV-NdS-partition = \score {
  <<
    % Antienne à 4 voix mixtes
    \new ChoirStaff = "AntiphonFourVoices" <<

      \new Staff = "AntiphonSopranoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Soprano"
        \clef "treble"
        \new Voice = "antiphonRhythms" { \antiphonRhythms }
        \new Voice = "antiphonSoprano" { \PsXCV-NdS-global \PsXCV-NdS-sopranoAntiphonMusic}
        \new Lyrics \lyricsto "antiphonSoprano" { \PsXCV-NdS-sopranoAntiphonLyrics }
      >>
      \new Staff = "AntiphonAltoStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Alto"
        \clef "treble"
        \new Voice = "antiphonRhythms" \antiphonRhythms
        \new Voice = "antiphonAlto" { \PsXCV-NdS-global \PsXCV-NdS-altoAntiphonMusic }
        \new Lyrics \lyricsto "antiphonAlto" { \PsXCV-NdS-altoAntiphonLyrics }
      >>
      \new Staff = "AntiphonTenorStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Ténor"
        \clef "treble_8"
        \new Voice = "antiphonRhythms" \antiphonRhythms
        \new Voice = "antiphonTenor" { \PsXCV-NdS-global \PsXCV-NdS-tenorAntiphonMusic }
        \new Lyrics \lyricsto "antiphonTenor" { \PsXCV-NdS-tenorAntiphonLyrics }
      >>
      \new Staff  = "AntiphonBassStaff" <<
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \set Staff.instrumentName = "Basse"
        \clef "bass"
        \new Voice = "antiphonRhythms" \antiphonRhythms
        \new Voice = "AntiphonBass" { \PsXCV-NdS-global \PsXCV-NdS-bassAntiphonMusic }
        \new Lyrics \lyricsto "AntiphonBass" { \PsXCV-NdS-bassAntiphonLyrics }
      >>
    >>
    \new PianoStaff \with { \pianoProperties } <<
      \set PianoStaff.instrumentName = #"Orgue"
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \PsXCV-NdS-global \clef treble
        \new Voice = "soprani" { \voiceOne \PsXCV-NdS-sopranoAntiphonMusic }
        \new Voice = "alti" { \voiceTwo \PsXCV-NdS-altoAntiphonMusic }
      >>
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \PsXCV-NdS-global \clef bass
        \new Voice = "tenors" { \voiceThree \PsXCV-NdS-tenorAntiphonMusic }
        \new Voice = "bass" { \voiceFour \PsXCV-NdS-bassAntiphonMusic }
      >>
    >>
    % Psalmodie à 4 voix mixtes
    \new ChoirStaff = "versePsalmody" <<
      \new Staff = "verseSopranoAlto" \with { printPartCombineTexts = ##f } <<
        \set Staff.shortInstrumentName = \markup { \right-column { "S" "A" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \PsXCV-NdS-global
        \clef treble
        \partcombine
        \new Voice = "verseSoprano" << \voiceOne { \PsXCV-NdS-sopranoVerseMusic } >>
        \new Voice = "verseAlto" << \voiceTwo { \PsXCV-NdS-altoVerseMusic } >>
      >>
      \new Staff = "verseTenorBass" \with { printPartCombineTexts = ##f } <<
        \set Staff.shortInstrumentName = \markup { \right-column { "T" "B" } }
        \once \override Staff.VerticalAxisGroup.remove-first = ##t
        \PsXCV-NdS-global
        \clef bass
        \new Voice = "verseTenor" << \voiceOne { \PsXCV-NdS-tenorVerseMusic } >>
        \new Voice = "verseBass" << \voiceTwo { \PsXCV-NdS-bassVerseMusic } >>
      >>
    >>
  >>
  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
    }
  }
}