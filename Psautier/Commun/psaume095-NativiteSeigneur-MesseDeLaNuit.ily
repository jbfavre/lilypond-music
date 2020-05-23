\version "2.20.0"
\language "english"

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-header = \header {
  piece = "Psaume 95"
  subsubtitle = "Nativité du Seigneur, messe de la nuit"
  date = "décembre 2018"
  title = ##f
  copyright = ##f
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antienne %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-keyTime = {
  \key g \major
  \time 6/8
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  s2.*4 s2. \bar "|." \break
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicSoprano = \relative c'' {
  a4 a8 a4. (a8) g a b a g a2. \breathe c4 c8 b4. (b8) a g a4.
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicAlto = \relative c' {
  r4. e4 e8 e d e fs e d e2. \breathe r4. r8 g8 g g e e e4.
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicTenor =  \relative c' {
  c4. c4. c8 b c d c b c2. \breathe e4 e8 d4. (d8) a b cs4.
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicBass =  \relative c {
  r4. a4. a a a8 (b) c a4. \breathe r4. e'4. g4 e8 a,4.
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyrics = \lyricmode {
  Au -- jourd' -- hui un Sei -- gneur nous est né, C'est le Christ, le Sei -- gneur !
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyricsSoprano = \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyrics
psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyricsAlto = \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyrics
psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyricsTenor = \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyrics
psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyricsBass =  \lyricmode {
  Un Sei -- gneur nous est né, Christ et Sei -- gneur !
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%         Versets          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicRythm = \relative c'' {
  \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe"
  \set Score.markFormatter = #format-mark-box-alphabet
  \cadenzaOn
  s\breve s1 s4 \bar "||"
  \mark #2
  s\breve s1 s4 s \bar "||"
  \mark \default
  s\breve s1 s4 s \bar "|."
  }
psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicSoprano = \relative c'' {
  \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm
  a\breve a1 g4
  a\breve c1 a4 b
  b\breve g1 b4 a
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicAlto = \relative c' {
  \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm
  e\breve e1 e4
  e\breve e1 e4 fs
  g\breve d1 g4 e
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicTenor = \relative c' {
  \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm
  c\breve c1 b4
  c\breve a1 a4 b
  d\breve b1 d4 cs
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicBass = \relative c {
  \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm
  a\breve a1 e'4
  a,\breve c1 c4 d
  g,\breve g1 g4 a
  }

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseLyrics = \markup {
    \vspace #2
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
          \vspace #1
          \concat { \typewriter "3. " "Joie au ciel ! Ex" \underline u "lte la terre !" }
          \concat { \typewriter "   " "Les masses de la m" \underline e "r mugissent," }
          \concat { \typewriter "   " "la campagne toute enti" \underline è "re est en fête." }
          \vspace #1
          \concat { \typewriter "4. " "Les arbres des forêts d" \underline a "nsent de joie" }
          \concat { \typewriter "   " "devant la face du Seigne" \underline u "r, car il vient," }
          \concat { \typewriter "   " "car il vi" \underline e "nt pour juger la terre." }
          \vspace #1
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

psaumeXCV-NativiteSeigneur-MesseDeLaNuit-partition = <<
    % Antienne à 4 voix mixtes
    \new ChoirStaff = "antiphonChoirStaff" <<
      \new Staff = "antiphonSopranoStaff" \with {
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      }
      <<
        \clef "treble"
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-keyTime
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm
        \new Voice = "antiphonSoprano" { \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicSoprano \fermata}
        \new Lyrics \lyricsto "antiphonSoprano" { \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyricsSoprano }
      >>
      \new Staff = "antiphonAltoStaff" \with {
        instrumentName = "Alto"
        shortInstrumentName = "A"
      }
      <<
        \clef "treble"
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-keyTime
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm
        \new Voice = "antiphonAlto" { \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicAlto \fermata}
        \new Lyrics \lyricsto "antiphonAlto" { \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyricsAlto }
      >>
      \new Staff = "antiphonTenorStaff" \with {
        instrumentName = "Ténor"
        shortInstrumentName = "T"
      }
      <<
        \clef "treble_8"
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-keyTime
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm
        \new Voice = "antiphonTenor" { \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicTenor \fermata}
        \new Lyrics \lyricsto "antiphonTenor" { \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyricsTenor }
      >>
      \new Staff  = "antiphonBassStaff" \with {
        instrumentName = "Basse"
        shortInstrumentName = "B"
      }
      <<
        \clef "bass"
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-keyTime
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonRythm
        \new Voice = "antiphonBass" { \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicBass \fermata}
        \new Lyrics \lyricsto "antiphonBass" { \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonLyricsBass }
      >>
    >>
    % Accompagnement Piano / Orgue
    \new PianoStaff <<
      \set PianoStaff.instrumentName = #"Orgue"
      \set PianoStaff.shortInstrumentName = #"O"
      \new Staff <<
        \clef treble
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-keyTime
        \new Voice = "pianoSoprano" { \voiceOne \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicSoprano }
        \new Voice = "pianoAlto" { \voiceTwo \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicAlto }
      >>
      \new Staff <<
        \clef bass
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-keyTime
        \new Voice = "pianoTenor" { \voiceThree \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicTenor }
        \new Voice = "pianoBass" { \voiceFour \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-antiphonMusicBass }
      >>
    >>
    % Psalmodie à 4 voix mixtes
    \new ChoirStaff = "verseChoirStaff" <<
      \new Staff = "verseStaffSA" \with {
        shortInstrumentName = \markup { \right-column { "S" "A" } }
      }
      <<
        \clef treble
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-keyTime
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicRythm
        \partcombine
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicSoprano
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicAlto
      >>
      \new Staff = "verseStaffTB" \with {
        shortInstrumentName = \markup { \right-column { "T" "B" } }
      }
      <<
        \clef bass
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-keyTime
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicRythm
        \partcombine
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicTenor
        \psaumeXCV-NativiteSeigneur-MesseDeLaNuit-verseMusicBass
      >>
    >>
  >>