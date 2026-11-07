\version "2.18.2"
\language "english"
\include "../libs/commonFunctions.ily"

scoreHeader = \header {
  title = "Psaume 62"
  subtitle = "32ème dimanche du Temps Ordinaire — Année A"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, novembre 2026"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Global  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \key d \minor
  \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
antiphonRythm = \relative c' {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  \partial 4 s4 s1*4 \bar "|." \break
  }

antiphonMusicSoprano = \relative c' {
  \markCustom "Antienne"
  e4 f f g f e2. d4 d2 cs d1
  }

antiphonMusicAlto = \relative c' {
  cs4 d d d d cs2. bf4 a2 a2 a1
  }

antiphonMusicTenor =  \relative c' {
  a4 a a bf bf a2. f4 f2 e f1
  }

antiphonMusicBass =  \relative c' {
  a4 d, d g, g a2. bf4 g2 a2 d1
  }

antiphonLyrics = \lyricmode {
  Mon â -- me~a soif de toi, Sei -- gneur, mon Dieu&nbsp;!
  }

antiphonLyricsSoprano = \antiphonLyrics
antiphonLyricsAlto = \antiphonLyrics
antiphonLyricsTenor = \antiphonLyrics
antiphonLyricsBass = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseRythm = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par strophe"
  \cadenzaOn
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "|." s4 \bar "|" \break
  \cadenzaOff
  \markCustom "Psalmodie par verset"
  \cadenzaOn
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "|." s4 \bar "|" \break
  \cadenzaOff
  }


verseMusicSoprano = \relative c' {
  \override HorizontalBracket.direction = #UP
  f\breve e1 d4
  f\breve g1 a4
  a\breve bf1 a4
  g\breve f1 e4
  e4^\markup { \typewriter \italic "flexe &dagger;" }
  }

verseMusicAlto = \relative c' {
  d\breve cs1 a4
  d\breve e1 f4
  f\breve f1 f4
  d\breve d1 cs4
  cs4
  }

verseMusicTenor = \relative c' {
  a\breve a1 f4
  a\breve c1 c4
  c\breve d1 c4
  bf\breve bf1 a4
  a4
  }

verseMusicBass = \relative f {
  d\breve a1 d4
  d\breve c1 f,4
  f'\breve bf,1 f'4
  g,\breve d'1 a'4
  a4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Dieu, tu es mon Di" \underline e "u," \super "&dagger;"}
      \concat { \typewriter "   " "     je te ch" \underline e "rche dès l’aube :"}
      \concat { \typewriter "   " "mon âme a so" \underline i "f de toi ;"}
      \concat { \typewriter "   " "après toi langu" \underline i "t ma chair,"}
      \concat { \typewriter "   " "terre ar" \underline i "de, altérée, sans eau."}
      \vspace #1
      \concat { \typewriter "2. " "Je t’ai contempl" \underline é " au sanctuaire,"}
      \concat { \typewriter "   " "j’ai vu ta f" \underline o "rce et ta gloire."}
      \concat { \typewriter "   " "Ton amour vaut m" \underline i "eux que la vie :"}
      \concat { \typewriter "   " "tu seras la lou" \underline a "nge de mes lèvres !"}
    }
    \hspace #1
    \left-column {
      \concat { \typewriter "3. " "Toute ma v" \underline i "e je vais te bénir,"}
      \concat { \typewriter "   " "lever les mains en invoqu" \underline a "nt ton nom."}
      \concat { \typewriter "   " "Comme par un fest" \underline i "n je serai rassasié ;"}
      \concat { \typewriter "   " "la joie sur les lèvres, je dir" \underline a "i ta louange."}
      \vspace #1
      \concat { \typewriter "4. " "Dans la nuit, je me souv" \underline i "ens de toi"}
      \concat { \typewriter "   " "et je reste des h" \underline e "ures à te parler."}
      \concat { \typewriter "   " "Oui, tu es ven" \underline u " à mon secours :"}
      \concat { \typewriter "   " "je crie de joie à l’" \underline o "mbre de tes ailes."}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partition = <<
    % Antienne à 4 voix mixtes
    \new ChoirStaff = "antiphonChoirStaff"
    <<
      \new Staff = "antiphonSopranoStaff" \with {
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      }
      <<
        \clef "treble"
        \keyTime
        \antiphonRythm
        \new Voice = "antiphonSoprano" { \antiphonMusicSoprano \fermata }
        \new Lyrics \lyricsto "antiphonSoprano" \antiphonLyricsSoprano
      >>
%       \new Staff = "antiphonAltoStaff" \with {
%         instrumentName = "Alto"
%         shortInstrumentName = "A"
%       }
%       <<
%         \clef "treble"
%         \keyTime
%         \antiphonRythm
%         \new Voice = "antiphonAlto" { \antiphonMusicAlto \fermata }
%         \new Lyrics \lyricsto "antiphonAlto" \antiphonLyricsAlto
%       >>
%       \new Staff = "antiphonTenorStaff" \with {
%         instrumentName = "Ténor"
%         shortInstrumentName = "T"
%       }
%       <<
%         \clef "treble_8"
%         \keyTime
%         \antiphonRythm
%         \new Voice = "antiphonTenor" { \antiphonMusicTenor \fermata }
%         \new Lyrics \lyricsto "antiphonTenor" \antiphonLyricsTenor
%       >>
%       \new Staff  = "antiphonBassStaff" \with {
%         instrumentName = "Basse"
%         shortInstrumentName = "B"
%       }
%       <<
%         \clef "bass"
%         \keyTime
%         \antiphonRythm
%         \new Voice = "antiphonBass" { \antiphonMusicBass \fermata }
%         \new Lyrics \lyricsto "antiphonBass" \antiphonLyricsBass
%       >>
    >>
    % Accompagnement Piano / Orgue
    \new PianoStaff = "antiphonPianoStaff" \with {
      instrumentName = #"Orgue"
      shortInstrumentName = #"O"
      \hide PhrasingSlur
      \hide Slur
      \hide Hairpin
      \omit DynamicText
      \omit TextScript
    }
    <<
      \new Staff = "antiphonPianoStaffSA"
      <<
        \clef treble
        \keyTime
        \new Voice = "antiphonMusicSoprano" { \voiceOne \antiphonMusicSoprano \fermata }
        \new Voice = "antiphonMusicAlto" { \voiceTwo \antiphonMusicAlto }
      >>
      \new Staff = "antiphonPianoStaffTB"
      <<
        \clef bass
        \keyTime
        \new Voice = "antiphonMusicTenor" { \voiceThree \antiphonMusicTenor }
        \new Voice = "antiphonMusicBass" { \voiceFour \antiphonMusicBass \fermata }
      >>
    >>
    % Psalmodie à 4 voix mixtes
    \new ChoirStaff = "verseChoirStaff"
    \with { printPartCombineTexts = ##f }
    <<
      \new Staff = "verseMusicSA" \with {
        shortInstrumentName = \markup { \right-column { "S" "A" } }
      }
      <<
        \keyTime
        \clef treble
        \new Voice { \antiphonRythm \verseRythm }
        \new Voice = "verseMusicSoprano" { \voiceOne \antiphonRythm \verseMusicSoprano }
        \new Voice = "verseMusicAlto" { \voiceTwo \antiphonRythm \verseMusicAlto }
      >>
      \new Staff = "verseMusicTB" \with {
        shortInstrumentName = \markup { \right-column { "T" "B" } }
      }
      <<
        \keyTime
        \clef bass
        \new Voice { \antiphonRythm \verseRythm }
        \new Voice = "verseMusicTenor" { \voiceOne \antiphonRythm \verseMusicTenor }
        \new Voice = "verseMusicBass" { \voiceTwo \antiphonRythm \verseMusicBass }
      >>
    >>
  >>

% PDF output
\include "../libs/layouts/book-titling.ily"
\paper {
  #(include-special-characters)
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Latin Modern Roman"
     #:sans "Latin Modern Sans"
    ))
  tagline = ##f
  copyright = ##f
  scoreTitleMarkup = \markup \columns {
    \fill-line {
      \column {
        \line {
          \left-column {
            \fontsize #8 \sans \fromproperty #'header:title
            \fontsize #1 \typewriter \fromproperty #'header:subtitle
          }
        }
      }
      \column {
        \line {
          \fontsize #-1
          \left-column {
            \line { \concat { \typewriter "Texte&nbsp;: " \sans \fromproperty #'header:poet \bold " " } }
            \line { \concat { \typewriter "Musique&nbsp;: " \sans \fromproperty #'header:composer \bold " " } }
            \typewriter \italic \fromproperty #'header:date
          }
        }
      }
    }
  }
  top-margin = 1\cm
  bottom-margin = 1\cm
  %left-margin = 1\cm
  %right-margin = 1\cm
}

\score {
  \partition
  \layout {
    short-indent = 0.8\cm
    \context {
      \Score
      \override RehearsalMark.font-family = #'typewriter
    }
    \context {
      \Staff
      \RemoveEmptyStaves
    }
    \context {
      \ChoirStaff
      \override VerticalAxisGroup.remove-first = ##t
      \override InstrumentName.font-family = #'sans
    }
    \context {
      \PianoStaff
      \override InstrumentName.font-family = #'sans
    }
  }
  \scoreHeader
}

% Midi output
\score {
  <<
    \new PianoStaff = "antiphonMusic" <<
      \new Staff <<
        \keyTime \tempo 4. = 70 \clef treble
        \new Voice = "antiphonMusicSoprano" \antiphonMusicSoprano
        \new Voice = "antiphonMusicAlto" \antiphonMusicAlto
      >>
      \new Staff <<
        \keyTime \clef bass
        \new Voice = "antiphonMusicTenor" \antiphonMusicTenor
        \new Voice = "antiphonMusicBass" \antiphonMusicBass
      >>
    >>
    \new ChoirStaff = "verseMusic" <<
      \new Staff = "verseMusicSA" <<
        \keyTime
        \clef treble
        \new Voice { \antiphonRythm \verseRythm \verseRythm }
        \new Voice = "verseMusicSoprano" { \voiceOne \antiphonRythm \verseMusicSoprano \verseMusicSoprano }
        \new Voice = "verseMusicAlto" { \voiceTwo \antiphonRythm \verseMusicAlto \verseMusicAlto }
      >>
      \new Staff = "verseMusicTB" <<
        \keyTime
        \clef bass
        \new Voice { \antiphonRythm \verseRythm \verseRythm }
        \new Voice = "verseMusicTenor" { \voiceOne \antiphonRythm \verseMusicTenor \verseMusicTenor }
        \new Voice = "verseMusicBass" { \voiceTwo \antiphonRythm \verseMusicBass \verseMusicBass }
      >>
    >>
  >>
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}
\verseLyrics