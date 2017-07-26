\version "2.18.2"
\language "english"

agnusGlobal = {
  \key f \minor
  \time 4/4
  \tempo 4 = 90
}

agnusSolistMusic = \relative c' {
    \mark \default
    f4 (g) af2 g4 (af) bf2 af4 bf c bf af g f e \break
    \mark \default
    % mesure 5: 0'10
    g f g af f2 f bf4 af g f g2 g2 \break
    \mark \default
    % mesure 9: 0'24
    \repeat volta 2 { g2 (c4) bf bf (g) af2 }
    \alternative {
      { bf4 (af g f4) | g1 }
      { bf4 (af g e4) | f1 }
    }
  }
agnusSolistLyrics = \lyricmode {
    A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
    Mi -- se -- re -- re no -- bis, mi -- se -- re -- re no -- bis
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusSopranoMusic = \agnusSolistMusic
agnusSopranoLyrics = \agnusSolistLyrics

agnusAltoMusic = \relative c' {
    c2. f4 g4 (f2) ef4 ef g af g af bf g g
    bf af g af af2 bf f (d) e1
    \repeat volta 2 { bf'2 (g4) g f4 (g4) af2 }
    \alternative {
      { g4 (f g b) c1 }
      { g4 (af g2) af1 }
    }
  }
agnusAltoLyrics = \lyricmode {
    A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
    Mi -- se -- re -- re no -- bis, no -- bis
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusTenorMusic = \relative c {
    af'4 (bf) c2 ef2. df4 c ef c c c df c e
    e4 f df c af2 bf  bf2 (b2) c1
    \repeat volta 2 { e2 (c4) e df2 f }
    \alternative {
      { bf,4 (c d f) e1 }
      { bf4 (df c bf) c1 }
    }
  }
agnusTenorLyrics = \lyricmode {
    A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
    Mi -- se -- re -- re no -- bis, no -- bis
    \repeat volta 2 { Do -- na no -- bis }
    \alternative {
      { pa -- cem }
      { pa -- cem }
    }
  }

agnusBasseMusic = \relative c {
    f2. f4 ef2. ef4 af, ef' af e f df c c
    c2. c4 df2 df d2 (f2) e1
    \repeat volta 2 { c4 (d e) c df2 c }
    \alternative {
      { bf2 (b2) c1 }
      { bf2 (c2) f,1 }
    }
  }
agnusBasseLyrics = \lyricmode {
    A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
    Mi -- se -- re -- re no -- bis,
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