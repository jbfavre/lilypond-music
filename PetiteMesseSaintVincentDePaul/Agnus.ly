\version "2.18.2"
\language "english"

agnusGlobal = {
  \key f \minor
  \time 4/4
  \tempo 4 = 90
}
agnusSolistCommonMusic = {
    \mark \default
    f4 (g) af2 g4 (af) bf2 af4 bf c bf af g f e \break
  }
agnusSolistMusic = \relative c' {
    \repeat volta 2 { \agnusSolistCommonMusic }
    % mesure 5: 0'10
    \alternative { { \mark \default g f g af f2 f bf4 af g f g2 g2 \break } }
    \agnusSolistCommonMusic
    \mark \default
    % mesure 9: 0'24
    \repeat volta 2 { g2 (c4) bf bf (g) af2 }
    \alternative {
      { bf4 (af g f4) | g1 }
      { bf4 (af g e4) | f1 }
    }
  }
agnusSolistCommonLyrics = \lyricmode {
    A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  }
agnusSolistLyrics = \lyricmode {
    \agnusSolistCommonLyrics
    Mi -- se -- re -- re no -- bis, mi -- se -- re -- re no -- bis
    \agnusSolistCommonLyrics
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusSopranoMusic = \agnusSolistMusic
agnusSopranoLyrics = \agnusSolistLyrics

agnusAltoCommonMusic = { c2. f4 g4 (f2) ef4 ef g af g af bf g g }
agnusAltoMusic = \relative c' {
    \repeat volta 2 { \agnusAltoCommonMusic }
    \alternative {
      { bf af g af af2 bf f (d) e1 }
    }
    \agnusAltoCommonMusic
    \repeat volta 2 { bf2 (g4) g f4 (g4) af2 }
    \alternative {
      { g4 (f g b) c1 }
      { g4 (af g2) af1 }
    }
  }
agnusAltoCommonLyrics = \lyricmode {
    A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  }
agnusAltoLyrics = \lyricmode {
    \agnusAltoCommonLyrics
    Mi -- se -- re -- re no -- bis, no -- bis
    \agnusAltoCommonLyrics
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusTenorCommonMusic = { af4 (bf) c2 ef2. df4 c ef c c c df c e }
agnusTenorMusic = \relative c' {
    \repeat volta 2 { \agnusTenorCommonMusic }
    \alternative { { e4 f df c af2 bf  bf2 (b2) c1 } }
    \agnusTenorCommonMusic
    \repeat volta 2 { e2 (c4) e df2 f }
    \alternative {
      { bf,4 (c d f) e1 }
      { bf4 (df c bf) c1 }
    }
  }
agnusTenorCommonLyrics = \lyricmode { A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di, }
agnusTenorLyrics = \lyricmode {
    \agnusTenorCommonLyrics
    Mi -- se -- re -- re no -- bis, no -- bis
    \agnusTenorCommonLyrics
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusBasseCommonMusic = { f2. f4 ef2. ef4 af, ef' af e f df c c }
agnusBasseMusic = \relative c {
    \repeat volta 2 { \agnusBasseCommonMusic }
    \alternative { { c2. c4 df2 df d2 (f2) e1 } }
    \agnusBasseCommonMusic
    \repeat volta 2 { c4 (d e) c df2 c }
    \alternative {
      { bf2 (b2) c1 }
      { bf2 (c2) f,1 }
    }
  }
agnusBasseCommonLyrics = \lyricmode { A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di, }
agnusBasseLyrics = \lyricmode {
    \agnusBasseCommonLyrics
    Mi -- se -- re -- re no -- bis,
    \agnusBasseCommonLyrics
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }
%    \new PianoStaff <<
%          \relative c' {
%            <c f>4  <df g> <c af'>2 <bf g'>4 <f' af> <e bf'>2 <c af'>4 <g' bf> <af c> <g bf> <af c,> <e g> <e f> <c e> \break
%            g' f g af f2 f bf4 af g f g2 g2 \break
%            g2 (c4) bf bf (g) af2 bf4 (af g f) g1 \break
%            g2 (c4) bf bf (g) af2 bf4 (af g e) f1
%          }
%          \relative c {
%            <f af>4 <fes bf> <f af>2 <ef g>4 <df af'> <c g'>2 <f af>4 <ef g> <ef af> <c e> <af f'> <df bf> <c g> <c g>
%          }