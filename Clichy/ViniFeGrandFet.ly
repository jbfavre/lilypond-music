\version "2.22.0"
\language "english"
\include "gregorian.ly"
\include "../libs/commonFunctions.ily"

\header {
  title = "Vini fé grand fèt"
  subtitle = "Venez faisons une grande fête"
  composer = "Trad. antillais"
  poet = "Trad. antillais"
  }
solisteDynamics = {
  \key f \major \time 4/4
  }

sopranosMusicA = \relative c' {
  \partial 8 c8 \bar ".|:" \time 3/8 f f g \time 2/4  a g f c' \time 3/4 a2 r8 f8 \break
  g8 g g g f d f2 r8 c \bar ":|." \break
}
couplets = \relative c'' {
  \cadenzaOn
  a\breve c4 c \bar "|" \break
  d\breve c4 bf c4 \bar "|" \break
  bf\breve c4 bf a \bar "|" \break
  g\breve a4 f c' \bar "|"
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%          DRAW PARTITION          %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
scoreHeaders = \header {
  title = ##f
  subtitle = ##f
  composer = ##f
  poet = ##f
  subsubtitle = ##f
  dedication = ##f
}
scorePaper = \paper {
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    two-sided = ##f
    oddFooterMarkup = {}
    #(include-special-characters)

    markup-system-spacing = #'((basic-distance . 30)
       (stretchability . 500))
    %top-system-spacing = #'((basic-distance . 30)
    %                        (padding . 10)
    %                        (stretchability . 1000))
    bookTitleMarkup = \markup {
      \column {
        \columns {
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
                  \typewriter \italic \fromproperty #'header:subsubtitle
                }
              }
            }
          }
        }
      }
    }
  }
AllScoreLayout = \layout {
      ragged-last = ##f
      ragged-last-bottom = ##t
      short-indent = 0.5\cm
      indent = 1\cm
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
      \context {
          \Staff
          \RemoveEmptyStaves
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Antienne          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PDF output
\book {
  \scorePaper
  \score {
    {
      <<
        \new PianoStaff
        <<
          \new Staff
          {
            \clef "treble"
            \new Voice { \solisteDynamics \voiceOne \sopranosMusicA
            }
            \addlyrics { \set stanza = "R. "
                         Vi -- ni fé grand fèt pou Gran -- mèt la
                         Pas -- ké Gra -- nmèt la fé mè -- vèy. Vi-
            }
            \addlyrics { \set stanza = "   "
                         (Ve -- nez, faisons grande fête pour le Sei -- gneur)
                         (Parce que le Seigneur fait des mer -- veilles) Ve-
            }
            \new Voice { \voiceOne \couplets }
            \addlyrics { \override LyricText.self-alignment-X = #LEFT
                         \set stanza = "1. "
                         "Vini a nou fété Gran" -- mèt la
                         \set stanza = "1. "
                         "An nou bat bravo pou fò ponyèt li k-ap" so -- vé nou
                         \set stanza = "1. "
                         "Paské Granmèt la, li mété chèf ap kòmandé" pèp li -- a
                         \set stanza = "1. "
                         "Sé nan bouch chèf sa yo li mété" pa -- ròl Li
            }
            \addlyrics { \override LyricText.self-alignment-X = #LEFT
                         \set stanza = "   "
                         "(Venez faisons une grande fête pour le" Sei -- gneur)
                         \set stanza = "   "
                         "(Battons des mains pour la force de son bras, lui" qui nous sauve)
                         \set stanza = "   "
                         "(Parce que le Seigneur, il a mis des chefs pour diri" -- ger son peuple)
                         \set stanza = "   "
                         "(C'est dans la bouche de ces chefs qu'Il a mis" Ses pa -- roles)
            }
            \addlyrics { \override LyricText.self-alignment-X = #LEFT
                         \set stanza = "2. "
                         "Proché dévan li avèk gro" lou -- an
                         \set stanza = "2. "
                         "Fété li ak tout kalité " bèl chan -- té
                         \set stanza = "2. "
                         "Paské Grandmèt là, sé sèl Bon" -- dié tout bon
                         \set stanza = "2. "
                         "Sèl gran, sèl chèf, sèl roua" an -- ro nèt.
            }
            \addlyrics { \override LyricText.self-alignment-X = #LEFT
                         \set stanza = "   "
                         "(Approchez de vant Lui avec vos" Lou -- anges)
                         \set stanza = "   "
                         "(Fêtez le avec" de beaux chants)
                         \set stanza = "   "
                         "(Parce que le Seigneur est" le seul Dieu)
                         \set stanza = "   "
                         "(Lui le grand, le Seul chef, le Seul roi" dans le Ciel)
            }
            \addlyrics { \override LyricText.self-alignment-X = #LEFT
                         \set stanza = "3. "
                         "Ni anba tè, ni anro tèt" mò -- n
                         \set stanza = "3. "
                         "Sé na plamin li tou" sa ré -- té
                         \set stanza = "3. "
                         "Ni tout fon kè ak tout ak" -- ti -- vi -- té
                         \set stanza = "3. "
                         "Sé li sèl ki kontro" -- lé yo tout.
            }
             \addlyrics { \override LyricText.self-alignment-X = #LEFT
                         \set stanza = "   "
                         "(Ni dans les profondeurs, ni sur le sommet des" mon -- tagnes)
                         \set stanza = "   "
                         "(Tout est dans le creux" de Ses mains)
                         \set stanza = "   "
                         "(Dans tous les cœurs et en" tou -- tes choses)
                         \set stanza = "   "
                         "(C'est lui Seul qui con" -- trô -- le tout)
            }
         }
        >>
      >>
    }
    \AllScoreLayout
    \scoreHeaders
  }
}