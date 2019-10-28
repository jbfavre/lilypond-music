\version "2.18.2"

#(set-global-staff-size 16)

setStaffElements = {
  \override Staff.Clef #'font-size = #-2
  \override Staff.TimeSignature #'font-size = #-1
  \override Staff.KeySignature #'font-size = #-1.5
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #5
  \override Staff.MultiMeasureRest #'font-size = #-1.5
}

turnOffMarkup = {
  \override DynamicText #'stencil = ##f
  \override Script #'stencil = ##f
  \override Hairpin #'stencil = ##f
  \override TextScript #'stencil = ##f
}

setNoteSize = {
  \override NoteHead #'font-size = #-1.5
  \override Script #'font-size = #-1.5
  \override Rest #'font-size = #-1.5
  \override Accidental #'font-size = #-1.5
  \override Dots #'font-size = #-1.5
  \override DynamicText #'font-size = #-1
}

setLyricSize = { \override LyricText #'font-size = #-1.5 }

\header {
  title = "Ave Maria III"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - 2017"
  tagline = ##f
}

\paper {
  paper-width = 8.5\in
  paper-height = 11\in
  left-margin = 0.725\in
  right-margin = 0.725\in
  top-margin = 0.625\in
  bottom-margin = 0.625\in
  max-systems-per-page = #9
}

global = {
  \time 2/4
  \key d \minor
}

sopranoMusic =   \relative c' {
  r2 d'4 d d2 c4 (bes) a2~ a2
  g4 a bes d a2~a
  a4 a4 g f e2 f4 g a2~a2
  
}

altoMusic = \relative c' {
  r2 f4 f f2 (f4 f) f2~ f2
  cis4 cis cis cis f2~f
  %f4 f e d cis2 d4 e f2~f
}

tenorMusic = \relative c {
}

bassMusic = \relative c {
  a1~ a~ a~ bes~ a~ a~ a~ a
}

\score {
  \new GrandStaff <<
    \new ChoirStaff <<
      \new Staff \with { instrumentName = \markup {\right-align "Soprano"} } <<
        \setStaffElements \global \clef treble
        \new Voice = "soprano" { \sopranoMusic }
        \new Lyrics \lyricsto "soprano" {
            A -- ve Ma -- ri -- a,
            Gra -- ti -- a ple -- na,
            Do -- mi -- nus te -- cum, do -- mi -- nus,
            Be -- ne -- dic -- ta tu in mu -- li -- er -- i -- bus;
            Et be -- ne -- dic -- tus fruc -- tus ven -- tris tu -- i, Je -- sus!
            Sanc -- ta Ma -- ri -- a, Ma -- ter De -- i,
            O -- ra pro no -- bis,
            Nunc, et in o -- ra mor -- tis nos -- træ.
            A -- men, A -- men, A -- men
        }
      >>
      \new Staff \with { instrumentName = \markup {\right-align "Alto"} } <<
        \setStaffElements \global \clef treble
        \new Voice = "alto" { \altoMusic }
        \new Lyrics \lyricsto "alto" {
            A -- ve Ma -- ri -- a,
            Gra -- ti -- a ple -- na,
            Do -- mi -- nus te -- cum, do -- mi -- nus,
            Be -- ne -- dic -- ta tu in mu -- li -- er -- i -- bus;
            Et be -- ne -- dic -- tus fruc -- tus ven -- tris tu -- i, Je -- sus!
            Sanc -- ta Ma -- ri -- a, Ma -- ter De -- i,
            O -- ra pro no -- bis,
            Nunc, et in o -- ra mor -- tis nos -- træ.
            A -- men, A -- men, A -- men
        }
      >>
      \new Staff \with { instrumentName = \markup {\right-align "Tenor"} } <<
        \setStaffElements \global \clef "treble_8"
        \new Voice = "tenor" { \tenorMusic }
        \new Lyrics \lyricsto "tenor" {
            A -- ve Ma -- ri -- a,
            Gra -- ti -- a ple -- na,
            Do -- mi -- nus te -- cum, do -- mi -- nus,
            Be -- ne -- dic -- ta tu in mu -- li -- er -- i -- bus;
            Et be -- ne -- dic -- tus fruc -- tus ven -- tris tu -- i, Je -- sus!
            Sanc -- ta Ma -- ri -- a, Ma -- ter De -- i,
            O -- ra pro no -- bis,
            Nunc, et in o -- ra mor -- tis nos -- træ.
            A -- men, A -- men, A -- men
        }
      >>
      \new Staff \with { instrumentName = \markup {\right-align "Basse"} } <<
        \setStaffElements \global \clef bass
        \new Voice = "bassi" { \bassMusic }
        \new Lyrics \lyricsto "bassi" {
            A -- ve Ma -- ri -- a,
            Gra -- ti -- a ple -- na,
            Do -- mi -- nus te -- cum, do -- mi -- nus,
            Be -- ne -- dic -- ta tu in mu -- li -- er -- i -- bus;
            Et be -- ne -- dic -- tus fruc -- tus ven -- tris tu -- i, Je -- sus!
            Sanc -- ta Ma -- ri -- a, Ma -- ter De -- i,
            O -- ra pro no -- bis,
            Nunc, et in o -- ra mor -- tis nos -- træ.
            A -- men, A -- men, A -- men
        }
      >>
    >>
  >>
  \layout { ragged-last = ##f }
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
    \tempo 4. = 80
  }
}
