\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "../libs/commonFunctions.ily"
\include "../libs/translations/fr.ily"
\include "../libs/settings.ily"

scoreHeader = \header {
  title = "Psaume 121"
  subtitle = \markup { \column { "Christ, roi de l'univers" "Année C" }}
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, octobre 2022"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antienne %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

keyTime = {
  \key g \minor
  \time 2/4
}

antiphonRythm = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Antienne"
  \partial 4 s4
  s2*4 \bar "|." \break
  }

antiphonMusicSoprano = \relative c' {
  \partial 4 d8 d g4 f8 g a a bf a g4 f8 f g2
}

antiphonMusicAlto = \relative g' {
  d8 d d4 d8 d f f f f d (ef) d d d2
  }

antiphonMusicTenor =  \relative c' {
  d8 c bf4 a8 bf c c d c bf4 a8 a bf2
  }

antiphonMusicBass =  \relative f {
  d8 d g4 d8 g f f bf, f' g8 (c,) d d g,2
  }

antiphonLyricsSoprano = \lyricmode {
  Dans la joie, nous i -- rons à la mai -- son du Sei -- gneur
  }
antiphonLyricsAlto = \antiphonLyricsSoprano
antiphonLyricsTenor = \antiphonLyricsSoprano
antiphonLyricsBass = \antiphonLyricsSoprano

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%     Versets     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseRythm = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \markCustom "Psalmodie par verset"
  \cadenzaOn
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "||"
  \tAcceBreve s\breve \tAcceRonde s1 \tRall s4 \bar "|." \break
  \cadenzaOff
  }

verseMusicSoprano = \relative c'' {
  g\breve g1 a4
  bf\breve a1 g4
  }

verseMusicAlto = \relative f' {
  d\breve ef1 f4
  f\breve f1 d4
  }

verseMusicTenor = \relative c' {
  bf\breve c1 c4
  d\breve c1 bf4
  }

verseMusicBass = \relative f {
  g\breve c,1 f4
  bf,\breve f'1 g4
  }

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 1.8)
  {
    \column {
      \column{
        \concat { \typewriter "1. " "Quelle j" \underline o "ie quand on m’a dit :"}
        \concat { \typewriter "   " "« Nous irons à la mais" \underline o "n du Seigneur ! »"}
        \concat { \typewriter "   " "Maintenant notre m" \underline a "rche prend fin"}
        \concat { \typewriter "   " "devant tes p" \underline o "rtes, Jérusalem !"}
      }
      \vspace #1
      \column{
        \concat { \typewriter "2. " "Jérusalem, te voic" \underline i " dans tes murs :"}
        \concat { \typewriter "   " "ville où tout ens" \underline e "mble ne fait qu’un !"}
        \concat { \typewriter "   " "C’est là que montent les tribus, les trib" \underline u "s du Seigneur,"}
        \concat { \typewriter "   " "là qu’Israël doit rendre grâce au n" \underline o "m du Seigneur."}
      }
      \vspace #1
      \column{
        \concat { \typewriter "3. " "C’est là le si" \underline è "ge du droit,"}
        \concat { \typewriter "   " "le siège de la mais" \underline o "n de David."}
        \concat { \typewriter "   " "Appelez le bonhe" \underline u "r sur Jérusalem :"}
        \concat { \typewriter "   " "« P" \underline a "ix à ceux qui t’aiment ! »"}
      }
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
      \new Staff = "antiphonAltoStaff" \with {
        instrumentName = "Alto"
        shortInstrumentName = "A"
      }
      <<
        \clef "treble"
        \keyTime
        \antiphonRythm
        \new Voice = "antiphonAlto" { \antiphonMusicAlto \fermata }
        \new Lyrics \lyricsto "antiphonAlto" \antiphonLyricsAlto
      >>
      \new Staff = "antiphonTenorStaff" \with {
        instrumentName = "Ténor"
        shortInstrumentName = "T"
      }
      <<
        \clef "treble_8"
        \keyTime
        \antiphonRythm
        \new Voice = "antiphonTenor" { \antiphonMusicTenor \fermata }
        \new Lyrics \lyricsto "antiphonTenor" \antiphonLyricsTenor
      >>
      \new Staff  = "antiphonBassStaff" \with {
        instrumentName = "Basse"
        shortInstrumentName = "B"
      }
      <<
        \clef "bass"
        \keyTime
        \antiphonRythm
        \new Voice = "antiphonBass" { \antiphonMusicBass \fermata }
        \new Lyrics \lyricsto "antiphonBass" \antiphonLyricsBass
      >>
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
        \keyTime \tempo 4 = 50 \clef treble
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
