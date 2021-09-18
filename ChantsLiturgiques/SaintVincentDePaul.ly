\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

headers = \header {
  title = "Magnificat"
  subtitle = "Prière à Saint Vincent de Paul"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  dedication = "Clichy la Garenne, septembre 2021"
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Répons     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
reponsRhythms = {
  \key f \major \time 2/4
  \partial 8 s8 s2*4 \break s2*4 \break s2*4
  \bar "|." \break
  }
reponsSopranosMusic = \relative c' {
  \partial 8 a8 d4 f g4 f8 e f4 g a4. a8
  bf4 g8 g a4 g8 f g a g f e4. e8
  f4 g8 g a a g f e2 d2 \fermata
  }
reponsAltosMusic = \relative c' {
  }
reponsTenorsMusic =  \relative c' {
  }
reponsBassesMusic =  \relative c' {
  \partial 8 a8 d,4 bf g bf8 c d4 c f,4. d'8 g,4 c f d8 c bf a g gs a4. a8 d4 c f, g8 gs a4 a d2
  }
reponsLyrics = \lyricmode {
  Pri -- ez pour nous, Saint Vin -- cent de Paul&nbsp;!
  A -- pô -- tre~et té --moin de la cha -- ri -- té du Christ,
  de la cha -- ri -- té au -- près des pau -- vres

donne-nous d’aimer Dieu aux dépens de nos bras
et à la sueur de nos visages.

Aide-nous à nous abandonner à sa Providence
fidèles à découvrir son action
dans tous les évènements de notre vie.

Soutiens-nous
dans notre désir de discerner
et d’accomplir la volonté de Dieu.

Obtiens-nous
un cœur tendre et compatissant
aux misères et aux souffrances des autres
spécialement des plus démunis de ce monde.

Accompagne-nous dans notre service des hommes
et intercède auprès du Fils de Dieu
pour que nous devenions dans notre travail,
notre famille, notre quartier,
notre paroisse, nos communautés,
des passionnés de son Évangile d’Amour.

Amen
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%          DRAW PARTITION          %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FirstPageHeaders = \headers
OtherPageHeaders = \header {
  title = ##f
  subtitle = ##f
  composer = ##f
  poet = ##f
  dedication = ##f
  }

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

  oddFooterMarkup = {}
  #(include-special-characters)

  %#(define fonts
  %  (set-global-fonts
  %   #:music "emmentaler"
  %   #:brace "emmentaler"
  %   #:roman "Latin Modern Roman"
  %   #:sans "Latin Modern Sans"
  %   #:typewriter "Monospace Regular"
  %  ))
  }
FirstScorePaper = \paper {
    markup-system-spacing = #'((basic-distance . 30)
       (minimum-distance . 30)
       (padding . 5)
       (stretchability . 5))
    top-markup-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 3))
    top-system-spacing = #'((basic-distance . 6)
       (minimum-distance . 6)
       (padding . 6)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 3))
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
                \line { \concat { \typewriter "Paroles&nbsp;:&nbsp;" \sans \fromproperty #'header:poet \bold " " } }
                \line { \concat { \typewriter "Musique&nbsp;:&nbsp;" \sans \fromproperty #'header:composer \bold " " } }
                \typewriter \italic \fromproperty #'header:dedication
              }
            }
          }
        }
    }
    oddFooterMarkup = {}
  }
OtherScoresPaper = \paper {
    markup-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 5))
    top-markup-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
     4 (stretchability . 5))
    top-system-spacing = #'((basic-distance . 9)
       (minimum-distance . 9)
       (padding . 7)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
      (stretchability . 5))
  }
LastScorePaper = \paper {
    top-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 3)
       (padding . 1)
       (stretchability . 10))
    system-system-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 1)
       (stretchability . 10))
   score-markup-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 1)
       (stretchability . 10))
    markup-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 3)
       (padding . 1)
       (stretchability . 10))
}
AllScoreLayout = \layout {
      ragged-last = ##f
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Antienne          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\bookpart { % Stance
  \FirstScorePaper
  \score {
    { % Partition Stance
      \new ChoirStaff = "ChoirStaff"
      {
        <<
          \new Staff = "reponsHighStaff" \with { instrumentName = \markup { \column { "S." "A." } } shortInstrumentName = \markup { \column { "S." "A." } } }
          <<
            \clef "treble"
            \new Voice = "reponsRhythms" { \reponsRhythms \bar "||" }
            \new Voice = "reponsSoprano" { \voiceOne \reponsSopranosMusic }
            \new Voice = "reponsAlto" { \voiceTwo \reponsAltosMusic }
          >>
          \new Lyrics \lyricsto "reponsSoprano" { \reponsLyrics }
          \new Staff  = "reponsLowStaff" \with { instrumentName = \markup { \column { "T." "B." } } shortInstrumentName = \markup { \column { "T." "B." } } }
          <<
            \clef "bass"
            \new Voice = "reponsRhythms" { \reponsRhythms }
            \new Voice = "reponsTenor" { \voiceOne \reponsTenorsMusic }
            \new Voice = "reponsBass" { \voiceTwo \reponsBassesMusic }
          >>
        >>
      }
    }
    \AllScoreLayout
    \FirstPageHeaders
  }
}

%{
\bookpart {
  \OtherScoresPaper
  \score {
    {
      \new ChoirStaff = "psalmodyChoirStaff"
      {
        <<
          \new Staff = "psalmodyHighStaff"
          <<
            \clef "treble"
            \new Voice = "psalmodyRhythms" { \versetRhythms }
            \new Voice = "psalmodySoprano" { \voiceOne \versetSopranosMusic }
            \new Voice = "psalmodyAlto" { \voiceTwo \versetAltosMusic }
          >>
          \new Staff  = "psalmodyLowStaff" <<
            \clef "bass"
            %\new Voice = "psalmodyRhythms" { \global \choralPsalmRhythms }
            \new Voice = "psalmodyTenor" { \voiceOne \versetTenorsMusic }
            \new Voice = "psalmodyBass" { \voiceTwo \versetBassesMusic }
          >>
        >>
      }
    }
    \AllScoreLayout
    \OtherPageHeaders
  }
  \versetLyrics
}

\bookpart {
  \LastScorePaper
  \score {
    <<
      \new ChoirStaff = "doxologieChoirStaff"
      {
        <<
          \new Staff = "doxologieHighStaff"
          <<
            \clef "treble"
            \new Voice = "doxologieRhythms" { \doxologieRhythms}
            \new Voice = "doxologieSoprano" { \voiceOne \doxologieSopranosMusic }
            \new Voice = "doxologieAlto" { \voiceTwo \doxologieAltosMusic }
          >>
          \new Staff  = "doxologieLowStaff" <<
            \clef "bass"
            \new Voice = "doxologieRhythms" { \doxologieRhythms }
            \new Voice = "doxologieTenor" { \voiceOne \doxologieTenorsMusic }
            \new Voice = "doxologieBass" { \voiceTwo \doxologieBassesMusic }
          >>
        >>
      }
    >>
    \AllScoreLayout
    \OtherPageHeaders
  }
  \doxologieLyrics
  \score {
    {
      \new ChoirStaff = "introitChoirStaff"
      {
        <<
          \new Staff = "introitHighStaff"
          <<
            \clef "treble"
            \new Voice = "introitRhythms" { \introitRhythms}
            \new Voice = "introitSoprano" { \voiceOne \introitSopranosMusic }
            \new Voice = "introitAlto" { \voiceTwo \introitAltosMusic }
          >>
          \new Lyrics \lyricsto "introitSoprano" { \introitLyrics }
          \new Staff  = "introitLowStaff" <<
            \clef "bass"
            \new Voice = "introitRhythms" { \introitRhythms }
            \new Voice = "introitTenor" { \voiceOne \introitTenorsMusic }
            \new Voice = "introitBass" { \voiceTwo \introitBassesMusic }
          >>
        >>
      }
    }
    \AllScoreLayout
    \OtherPageHeaders
  }
  \markup {
    \override #'(font-family . sans)
    \fill-line {
      \rounded-box \bold \center-column {
        \concat { "Selon le moment de la messe, on prendra au choix" }
        \concat { "l'antienne d'ouverture ci-dessus ou l'antienne de communion ci-dessous" }
      }
    }
  }
  \score {
    {
      \new ChoirStaff = "communionChoirStaff"
      {
        <<
          \new Staff = "communionHighStaff"
          <<
            \clef "treble"
            \new Voice = "communionRhythms" { \communionRhythms}
            \new Voice = "communionSoprano" { \voiceOne \communionSopranosMusic }
            \new Voice = "communionAlto" { \voiceTwo \communionAltosMusic }
          >>
          \new Lyrics \lyricsto "communionSoprano" { \communionLyrics }
          \new Staff  = "communionLowStaff" <<
            \clef "bass"
            \new Voice = "communionRhythms" { \communionRhythms }
            \new Voice = "communionTenor" { \voiceOne \communionTenorsMusic }
            \new Voice = "communionBass" { \voiceTwo \communionBassesMusic }
          >>
        >>
      }
    }
    \AllScoreLayout
    \OtherPageHeaders
  }
  \markup {
    \override #'(font-family . sans)
    \fill-line {
      \rounded-box \bold \center-column {
        \concat { "On terminera en reprenant la Stance et son répons" }
      }
    }
  }
}
%}