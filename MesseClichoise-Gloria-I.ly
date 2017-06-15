\version "2.18.2"

% Beginning layout directives
\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-all-headers = true
}

setStaffElements = {
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #5
  \override Staff.MultiMeasureRest #'font-size = #-1.5
}
% End of layout directives

% Beginning specific piece directives
\header {
  title = "Petite messe"
  subtitle = "Pour soliste et chœur à 2 voix, ou chœur à 3 voix"
  composer = \markup { \vspace #2 "Jean Baptiste Favre" \vspace #1 }
  arranger = "juin 2017"
  tagline = ##f
}

global = {
  \key g \major
  \time 3/8
}

soloMusic = \relative c' {
    \mark "Prêtre (ou chantre)"
    % Glória in excélsis Deo
    g'8 b d
      \time 3/4 d8 c d e c4
      \time 3/8 d4. | \break
    \mark "Soliste"
    % et in terra pax homínibus bonae voluntátis.
    % Laudámus te,
    d8 c b c b a g a4 b4. | \break
      b8 (c) d d (b) g c (b a) g4. | \break
    \mark "Tous"
    % Laudámus te,
    g8 (b d) c b (a) b4. | \break
    \mark "Chantre"
    % benedícimus te,
    b8 (a) b c b a b4. | \break
    \mark "Tous"
    % adoramus te.
    b8 (c) d c (b) a g4. | \break
    \mark "Chantre"
    % Glorificámus te. Gratias agimus tibi
    d'8 (b) g e' (c g) d' (b) g a4. | \break
      d,8 (e) fis g a b g a4 b4. | \break
    \mark "Tous"
    % propter magnam glóriam tuam,
    % g4. a4. b4. c4. b8 a g a (g fis) g4.
     | \break
    \mark "Chantre"
    % Dómine Deus, Rex cæléstis,
    \mark "Tous"
    % Deus Pater omnípotens.
    \mark "Chantre"
    % Dómine Fili Unigénite, Jesu Christe.
    \mark "Tous"
    % Dómine Deus, Agnus Dei, Fílius Patris,
    \mark "Chantre"
    % qui tollis peccáta mundi, miserére nobis;
    \mark "Tous"
    % qui tollis peccáta mundi, suscipe deprecationem nostram;
    \mark "Chantre"
    % Qui sedes ad déxteram Patris, miserére nobis.
    \mark "Tous"
    % Quóniam tu solus Sanctus,
    \mark "Chantre"
    % tu solus Dóminus,
    \mark "Tous"
    % tu solus Altíssimus, Iesu Christe,
    \mark "Chantre"
    % cum Sancto Spíritu, in glória Dei Patris.
    \mark "Tous"
    % Amen.
}
soloLyrics = \lyricmode {
  Gló -- ri -- a in ex -- cél -- sis De -- o
  et in ter -- ra pax ho -- mí -- ni -- bus bo -- nae vo -- lun -- tá -- tis.
  Lau -- dá -- mus te,
  be -- ne -- dí -- ci -- mus te,
  a -- do -- ra -- mus te.
  Glo -- ri -- fi -- cá -- mus te. Gra -- ti -- as a -- gi -- mus ti -- bi
  pro -- pter ma -- gnam gló -- ri -- am tu -- am,

Dó -- mi -- ne De -- us, Rex cæ -- lés -- tis,
De -- us Pa -- ter om -- ní -- po -- tens.
Dó -- mi -- ne Fi -- li U -- ni -- gé -- ni -- te, Je -- su Chri -- ste.
Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris,
qui tol -- lis pec -- cáta mundi, mi -- se -- ré -- re no -- bis;
qui tol -- lis pec -- cáta mundi, sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram;
Qui se -- des ad déx -- te -- ram Pa -- tris, mi -- se -- ré -- re no -- bis.
Quó -- ni -- am tu so -- lus Sanc -- tus,
tu so -- lus Dó -- mi -- nus,
tu so -- lus Al -- tís -- si -- mus, Ie -- su Chri -- ste,
cum Sanc -- to Spí -- ri -- tu, in gló -- ria De -- i Pa -- tris.
Amen.
}

womenMusic = \relative c' {
  }
womenLyrics = \lyricmode {
  }

menMusic = \relative c {
  }
menLyrics = \lyricmode {
  }

\book {
  \markup { \vspace #1 }
  \markup { "L'introduction est entonnée par le prêtre (à défaut par le chantre)" }
  \markup { "Le chantre prned la suite en alternance avec l'assemblée" }
  \markup { "La première intervention de l'assemblée est le " \bold "Laudámus te" }
  \markup { \vspace #1 }
  \score {
    \header {
      piece = \markup { \fontsize #4 \bold "Gloria" }
    }
    \new GrandStaff <<
      \new Staff \with {
        instrumentName = \markup \column { "Soliste" }
      } <<
        \setStaffElements
        \global \clef treble
        \new Voice = "soliste" {
          \soloMusic
        }
        \new Lyrics \lyricsto "soliste" {
          \soloLyrics
        }
      >>
      \new ChoirStaff \with {
        instrumentName = \markup {\left-align "Chœur"}
      } <<
        \new Staff \with {
          instrumentName = \markup {\right-align "voix 1"}
        } {
          \setStaffElements
          \global \clef treble
          \new Voice = "femmes" {
            \womenMusic
          }
        }
        \new Lyrics \lyricsto "femmes" {
          \womenLyrics
        }
        \new Staff \with {
          instrumentName = \markup {\right-align "voix 2"}
        } {
          \setStaffElements
          \global \clef bass
          \new Voice = "hommes" {
            \menMusic
          }
        }
        \new Lyrics \lyricsto "hommes" {
          \menLyrics
        }
      >>
    >>
    \layout { }
    \midi { \tempo 4 = 75 }
  }
}