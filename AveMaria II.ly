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
  r2. e2.->^\mf e2. e2.->^\f ees2.~ ees2. ees2.^\mp \fermata r2. \break
  ees2. ees2 ees4 e2. ees2. r2. c2. des2. (bes2) r4 \break
  ees2. ees2 ees4 f2. ees2. r2. ges,2. aes2. g2 r4 \break

  r4 ees4 ees4 e4 e4 ees4 ees des ees e4 e4 ees4 \break
  aes,2. aes2. aes2. aes2. \break  
  ees'2. ees2 ees4 e2. ees2. r2. r2. r2. r2. \break
  b'2 b4 bes2 bes4 aes2. e2. (b2.) des2. ees2. ees2. \fermata \break
  <aes ees b>2. <c, ees ges>2. <aes des e>2. <bes ees g>2. <des e aes>2. (<ees g bes>2.) <c ees aes>2.
}

altoMusic = \relative c' {
  aes'2.->~^\ppp aes2. aes2. r2. aes2.->^\pp~ aes2. aes2. r2.
  aes2.->^\mf  aes2. a2.->^\f~ a2. aes2.~ aes2. g2.^\mp \fermata r2.
  r2. c2 c4 (des2.) bes2 r4 ees,2. ees2 ees4 e2. ees2.
  r2. ges2. aes2. g2 r4 ees2. ees2 ees4 f2. ees2.
  aes2. a4. g8~g4 aes2. r2.
  aes2. bes4. ges8~ges4 aes2. r2.
}

tenorMusic = \relative c {
  r2. r2. c'2->^\ppp c4 r2. r2. r2. b2->^\pp b4 r2.
  r2. r2. des2.->^\mf g2. b,2.->^\f b4 (bes4 aes4) bes2.^\mp \fermata r2.
  aes'2. ges2 ges4 aes2. g2. r2. c,2. des2. (bes2) r4
  aes'2. ges2 ges4 des2. bes2. r2. ges2. aes2. g2 r4
}

bassMusic = \relative c {
  r2. r2. r2. aes4^\p (a g) aes2.~ aes2.~ aes2. aes4^\mf (bes ges)
  <e e'>2.~ (<e e'>2. <des des'>2.^\f~ <des des'>2.) <ees ees'>2.~ <ees ees'>2.^\f~ <ees ees'>2.^\mf \fermata r2.
  r2. c'2 c4 (des2.) bes2 r4 aes2. ges2 ges4 aes2. g2.
  r2. ges'2. aes2. g2 r4 aes,2. ges2 ges4 <des' des,>2. ees2.

  aes2. aes2. aes2. aes2. r4 c4 c4 des4 des4 c4 c4 bes4 c4 des4 des4 c4
  r2. r2. r2. r2. aes,2. ges2 ges4 <des' des,>2. aes2.
  %ees'2. e2. des2. bes2. ees2. aes,2. ees2.
  aes2. r4 aes4 aes4 aes2 aes4 r4 aes4 aes4 aes2. aes2. ees2. ees2. \fermata
  ees2. ees2. aes2. g2. e2. ees2. aes2.
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
            Be -- ne -- di -- cta tu in mu -- li -- er -- i -- bus;
            Be -- ne -- di -- cta
            %Et be -- ne -- di -- ctus fru -- ctus ven -- tris tu -- i, Je -- sus!
            %San -- cta Ma -- ri -- a, Ma -- ter De -- i,
            O -- ra pro no -- bis, %pec -- ca -- to -- ri -- bus,
            Nunc, et in o -- ra mo -- rtis no -- stræ.
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
            Be -- ne -- di -- cta tu in mu -- li -- er -- i -- bus;
            %Et be -- ne -- di -- ctus fru -- ctus ven -- tris tu -- i, Je -- sus!
            %San -- cta Ma -- ri -- a, Ma -- ter De -- i,
            O -- ra pro no -- bis, %pec -- ca -- to -- ri -- bus,
            Nunc, et in o -- ra mo -- rtis no -- stræ.
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
            Be -- ne -- di -- cta tu in mu -- li -- er -- i -- bus;
            %Et be -- ne -- di -- ctus fru -- ctus ven -- tris tu -- i, Je -- sus!
            %San -- cta Ma -- ri -- a, Ma -- ter De -- i,
            O -- ra pro no -- bis, %pec -- ca -- to -- ri -- bus,
            Nunc, et in o -- ra mo -- rtis no -- stræ.
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
            Be -- ne -- di -- cta, Be -- ne -- di -- cta tu in mu -- li -- er -- i -- bus;
            %Et be -- ne -- di -- ctus fru -- ctus ven -- tris tu -- i, Je -- sus!
            %San -- cta Ma -- ri -- a, Ma -- ter De -- i,
            O -- ra pro no -- bis, %pec -- ca -- to -- ri -- bus,
            Nunc, et in o -- ra, et in o -- ra, mo -- rtis
            A -- men, A -- men, A -- men
        }
      >>
    >>
  >>
  \layout { ragged-last = ##f }
  \midi { \tempo 4. = 80 }
}
