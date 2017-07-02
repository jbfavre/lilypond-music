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
  title = "Ave Maria II"
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
  \time 3/4
  \key aes \major
}

sopranoMusic =   \relative c' {
  r2. ees'2.->^\ppp ees2. r2. r2. ees2.->^\pp ees2. r2.  \break
  % mesure 9: 0'12
  r2. e2.->^\mf e2. e2.->^\f ees2.~ ees2. ees2.^\mp \fermata r2. \break
  % mesure 17: 0'24
  ees2.^\mf ees2 ees4 e2. ees2. r2. aes,2.^\mp (aes2.) bes2 r4 \break
  % mesure 25: 0'36
  ees2.^\mf ees2 ees4 f2. ees2. r2. ges,2.^\mp aes2. g2 r4 \break
  % mesure 33: 0'48
  r4 ees4^\mp ees4 e2 e4 ees4 des ees e e e ees r2 \break
  % mesure 38: 0'55
  aes4^\mf (bes4) ges4 aes2 aes4 r2. r2 ees4^\mf \break
  % mesure 42: 1'01
  des'4 des4 des4 des2 c4 bes4 bes4 bes4 bes2 aes4 \break
  % mesure 46: 1'07
  ges2 ges4 f2^\f f'4 des4 c4 bes4 ees2 aes,4 des4 (bes2) c2. \fermata \break
  % mesure 52: 1'16
  c2.^\pp c2 c4 des2. bes2. r2. r2. r2. r2. \break
  % mesure 60: 1'28
  b2^\mp b4 bes2 bes4 aes2. e2.->^\p (b2.) des2. ees2.^\ppp ees2. \fermata \break
  % mesure 68: 1'40
  aes2.^\mf ges e aes g^\f (aes bes g) aes
}

altoMusic = \relative c' {
  aes'2.->~^\ppp aes2. aes2. r2. aes2.->^\pp~ aes2. aes2. r2.
  % mesure 9: 0'12
  aes2.->^\mf  aes2. a2.->^\f~ a2. aes2.~ aes2. g2.^\mp \fermata r2.
  % mesure 17: 0'24
  r2. c2.^\mp des2. bes2 r4 ees,2.^\mf ees2 ees4 e2. ees2.
  % mesure 25: 0'36
  r2. ges2.^\mp aes2. g2 r4 ees2.^\mf ees2 ees4 f2. ees2.
  % mesure 33: 0'48
  r2. aes4^\mf (a) g aes2 aes4 r2. ees2.->^\p
  % mesure 38: 0'55
  e2.-> ees2.-> e2.-> r2.
  % mesure 42: 1'01
  bes2.->^\mf c2.-> des2.-> c2.->
  % mesure 46: 1'07
  aes2.^\f aes bes des des c
  % mesure 52: 1'16
  r2. r2. r2. r2. ees2.^\pp ees2. des2 des4 ees2.
  % mesure 60: 1'28
  r4 aes4^\mp\staccato aes4\staccato aes2 aes4\staccato r2. r4 aes4^\p\staccato aes4\staccato aes2 aes4\staccato r2. aes2.^\ppp bes2.
  % mesure 68: 1'40
  b,2.^\mf c2. des2. b2. bes2.^\f (des2. g2. des2.) ees2.
}

tenorMusic = \relative c {
  r2. r2. c'2->^\ppp c4 r2. r2. r2. b2->^\pp b4 r2.
  % mesure 9: 0'12
  r2. r2. des2.->^\mf g2. b,2.->^\f b4 (bes4 aes4) bes2.^\mp \fermata r2.
  % mesure 17: 0'24
  aes'2.^\mf ges2 ges4 aes2. g2. r2. c,2.^\mp des2. (bes2) r4
  % mesure 25: 0'36
  aes'2.^\mf ges2 ges4 des2. bes2. r2. ges2.^\mp aes2. g2 r4
  % mesure 33: 0'48
  c2.->^\p des2.-> c2.-> des2.-> r4 aes2->^\p
  % mesure 38: 0'55
  r4 aes2-> r4 aes2-> r4 aes2-> r2.
  % mesure 42: 1'01
  r4 ees'4^\mf ees ees ees e g g g g g f4
  % mesure 46: 1'07
  ees2. ees4 des2^\f f2. g2. ees2. ees2.
  % mesure 52: 1'16
  ees2.^\pp ees2 ees4 e2. ees2. r2. r2. r2. r2.
  % mesure 60: 1'28
  ees2.^\mp r2. r4 e4^\p\staccato e4\staccato des2 des4\staccato r2. r4 aes4^\pp\staccato aes4\staccato aes2.^\ppp g2.
  % mesure 68: 1'40
  ees'2.^\mf ees e e ees^\f (e ees des) c
}

bassMusic = \relative c {
  r2. r2. r2. aes4^\p (a g) aes2.~ aes2.~ aes2. aes4^\mf (bes ges)
  % mesure 9: 0'12
  <e e'>2.~ (<e e'>2. <des des'>2.^\f~ <des des'>2.) <ees ees'>2.~ <ees ees'>2.^\f~ <ees ees'>2.^\mf \fermata r2.
  % mesure 17: 0'24
  r2. aes2.^\mp aes2. bes2 r4 aes2.^\mf ges2 ges4 aes2. g2.
  % mesure 25: 0'36
  r2. ges'2.^\mp aes2. g2 r4 aes,2.^\mf ges2 ges4 <des' des,>2. <ees ees,>2.
  % mesure 33: 0'48
  r4^\p aes,2-> r4 aes2-> r4 aes2-> r4 aes2-> r4 c4^\mp c4
  % mesure 38: 0'55
  des2 des4 c4 bes4 c4 des4 des4 des4 c4 r2
  % mesure 42: 1'01
  g'2.->^\mf aes2.-> e2.-> f2.->
  % mesure 46: 1'07
  c2.^\f des2. bes2. (ees2) aes,4 ees2. aes2.
  % mesure 52: 1'16
  r2. r2. r2. r2. aes2.^\pp ges2. f2 f4 g2.
  % mesure 60: 1'28
  aes2.^\mp r4 aes4^\p\staccato aes4\staccato aes2 aes4\staccato r2. r4 aes4^\pp\staccato aes4\staccato aes2 aes4\staccato ees2.\mp ees2. \fermata
  % mesure 68: 1'40
  aes'2.^\mf c2. des2. des,2. des'2.^\f (b2. bes2. ees,2.) <aes aes,>2.
}

\score {
  \new GrandStaff <<
    \new ChoirStaff <<
      \new Staff \with { instrumentName = \markup {\right-align "Soprano"} } <<
        \setStaffElements \global \clef treble
        \new Voice = "soprano" { \sopranoMusic }
        \new Lyrics \lyricsto "soprano" { A -- ve, A -- ve,
            A -- ve Ma -- ri -- a,
            Gra -- ti -- a ple -- na, ple -- na,
            Do -- mi -- nus te -- cum, do -- mi -- nus,
            Be -- ne -- dic -- ta tu in mu -- li -- er -- i -- bus;
            Be -- ne -- dic -- ta
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
        \new Lyrics \lyricsto "alto" { A -- ve, A -- ve,
            A -- ve Ma -- ri -- a,
            Gra -- ti -- a  gra -- ti -- a ple -- na,
            Do -- mi -- nus, do -- mi -- nus te -- cum
            Be -- ne -- dic -- ta, Be -- ne -- dic -- ta,
            Be -- ne -- dic -- tus, Sanc -- ta Ma -- ter De -- i,
            Pec -- ca -- to -- ri -- bus,
            Et in o -- ra, et in o -- ra mor -- tis.
            A -- men, A -- men, A -- men
        }
      >>
      \new Staff \with { instrumentName = \markup {\right-align "Tenor"} } <<
        \setStaffElements \global \clef "treble_8"
        \new Voice = "tenor" { \tenorMusic }
        \new Lyrics \lyricsto "tenor" { A -- ve, A -- ve,
            A -- ve Ma -- ri -- a,
            Gra -- ti -- a ple -- na,  ple -- na,
            Do -- mi -- nus te -- cum, do -- mi -- nus,
            Be -- ne -- dic -- ta, Be -- ne -- dic -- ta,
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
            Gra -- ti -- a  gra -- ti -- a ple -- na
            Do -- mi -- nus, do -- mi -- nus te -- cum,
            Be -- ne -- dic -- ta, Be -- ne -- dic -- ta tu in mu -- li -- er -- i -- bus;
            Be -- ne -- dic -- tus, Sanc -- ta Ma -- ter De -- i,
            Pec -- ca -- to -- ri -- bus,
            Nunc, et in o -- ra, et in o -- ra, mor -- tis
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
