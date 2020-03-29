\version "2.18.2"
\language "english"

\header {
  title = \markup
     \center-column {
       \combine \null \vspace #1
       "L'écriture musicale"
       "Les bases fondamentales"
       " "
      }
  subtitle = "Livre 1, chapitre 8"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 10
  %min-systems-per-page = 4
  %systems-per-page=6
}
%#(set-global-staff-size 18)
%#(set-default-paper-size "a4landscape")

%{
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.1"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 4/4 \key ef \major
      \new Voice = "melody" {
        \relative c'' {
          c2 g4 ef f2 c'4 d b2 g2 \breathe f'2 ef4 d c2 af g f g1 \breathe f'2 ef4 d c2 b c1 \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble \time 4/4 \key ef \major
      \new Voice = "melody" {
        \relative c'' {
          c4 b8 c g8 f16 g ef8 f16 ef f4 g8 f c'8 b16 c d8 ef16 d b4 a8 b g2 \breathe f'4 g8 f ef4 d c4 b8 c af4 bf8 af g4 f8 g f4 g8 f  g1 \breathe f'4 g8 f ef8 d16 ef d8 c16 d c4 b8 c b4 c8 b c1 \bar "|."
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.2 (Sol mineur)"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 3/4 \key bf \major
      \new Voice = "melody" {
        \relative c'' {
          d4 g8 fs16^"B" g d4 ef4. ef8 d4 d8 cs16^"B" d bf'8 a16^"B" bf g8 fs16^"B" g ef16 c d^"B" c bf8 c16^"B" bf a8 g16^"B" a g4 \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble \time 3/4 \key bf \major
      \new Voice = "alto" {
        \relative c'' {
          bf4 bf8 a^"B" bf4 c4 d8^"B" c bf4 a g2~ g2 fs8 e16^"B" fs g4
        }
      }
    >>
    \new Staff <<
      \clef bass \time 3/4 \key bf \major
      \new Voice = "bass" {
        \relative f {
          g2.~ g2. fs4 g bf,8 a16^"B" bf c4 d d, g
        }
      }
      \new FiguredBass{
        \figuremode {
          <5>2. <6 4>2 <5>4 <6>4 <5>4 <6>4 <5> <6 4> <_+> <5>
        }
      }
      \new FiguredBass{
        \figuremode {
          <I>2. <IV>2 <I>4 <V>4 <I>2 <IV>4 <I> <V> <I>
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.3"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 4/4 \key g \major
      \new Voice = "melody" {
        \relative c'' {
          g8 fs^"B" g a^"P" b a^"B" b c^"P" d4 e8^"P" fs^"P" g2 fs r2 g8 fs^"P" e^"P" d^"P" c4 d8^"P" e^"B" d8 c^"B" d e^"P" fs^"P" g^"P" a4 fs4 g8^"B" fs g2 e8 d^"P" c^"P" b^"P" a8 g16^"B" a fs4 g2 r2  \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef bass \time 4/4 \key g \major
      \new Voice = "bass" {
        \relative f {
          g4 fs^"P" e4 d8^"B" e fs4 e8^"P" d^"P" c2 d r2 r2 e4 fs^"P" g2 fs a,4 b^"P" c8 d^"P" e8 d^"P" c b^"P" a8 b16^"P" c^"P" d4 d, g2 r2
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.4 (Sol majeur)"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 3/4 \key g \major
      \new Voice = "melody" {\voiceOne
        \relative c'' {
          d4 g,8 a^"P" b c^"P" d4 g, g e' c8 d^"P" e fs^"P" g4 g, g c d8^"B" c b^"P" a \break
          b4 c8^"B" b a^"P" g a4^"P" b8^"P" c^"P" d b a2. d4 g,8 a^"P" b c^"P" d4 g, g \break
          e' c8 d^"P" e fs^"P" g4 g, g c d8^"B" c b^"P" a b4 c8^"B" b a^"P" g a4 b8^"B" a g^"P" fs <b, d g>2.\bar "|."
        }
      }
      \new Voice = "melody2" { \voiceTwo
        \relative c' {
          s2. s2. s2. s2. s4 e4 fs_"P" g s2 s4 g2 fs2. s2. s2. s2. s2. s2. s2. s2. s2.
        }
      }
    >>
    \new Staff <<
      \clef bass \time 3/4 \key g \major
      \new Voice = "bass" {
        \relative f {
          <g b d>2 a4^"B" b2. c b a g d'4 b g d' d,8 c'^"P" b^"P" a b2 a4^"P" g b g c2. <b d>4 c8^"B" b a^"P" g a2 fs4 g2 b4 c^"P" d d, g2 g,4
        }
      }
      \new FiguredBass{
        \figuremode {
          <5>2. <6> <5> <6> <5> <5> <6 4> <5> <6> <5>4 <6> <5> <5>2. <6> <6>2 <5>4 <5>2. <5> <5>
        }
      }
      \new FiguredBass{
        \figuremode {
          <I>2. <I> <IV> <I> <II> <I> <I> <V> <I> <I> <IV> <I> <VII> <I> <V> <I>
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.5 (Si bémol majeur)"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 2/4 \key bf \major
      \new Voice = "melody" {
        \relative c'' {
          bf8.\mf\< (a16^"P" g8.\!\> a16^"P" bf8.\!) d16 c (bf^"B" c) f,-. d'8. f16 (g a^"B" g ef bf8.) d16 ef (f^"B" ef) \break
          g,-. a8. (c16 bf8\< c16^"P" d^"P" ef8.) g16\! f (ef\f^"P") d-.^"P" c-. d8. f,16\p g8 a32^"B"\< (g fs^"B" g\! d'8.\>) d16 c4\! \breathe \break
          bf8.\mf\< (a16 g8.\!\> a16 bf8.\!) d16 c (bf c) f,-. d'8. f16\f bf-> (a g f ef8) d16 (ef f ef d c) \break
          d8 c16 (bf) a8 bf32 (a g a bf8.) f16 g8\p a32 (g fs g d'8) c16 (bf c8.) bf16 <bf d,>2
          \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble \time 2/4 \key bf \major
      \new Voice = "alto" {
        \relative c' {
          d8. d16 ef4 d4 f4 f ef d c
          c16 d^"P" ef^"P" f d4 g8 a16^"P" bf16^"P" c8 bf16^"B" c bf4 bf f8. g16^"P" a4
          d,8. d16 ef4 f4 f4 f  g16 f^"P" ef16^"P" d^"P" c4 f8 g^"B"
          f2 (f4) ef bf' a4 f2
        }
      }
    >>
    \new Staff <<
      \clef bass \time 2/4 \key bf \major
      \new Voice = "bass" {
        \relative f, {
          bf4 bf bf a bf8 c16^"P" d^"P" ef4 g c, f bf, ef a, bf8 c16^"P" d ef4 f f bf, bf bf a bf8. a16^"P" g4 c8 bf^"P" a4 bf c4 d8 c16^"B" d16 ef4 f f, bf2
        }
      }
      \new FiguredBass{
        \figuremode { <5>4 <6 4> <5> <6> <5> <5> <5> <5>
                      <5> <5> <5> <6>  <5> <5> <6 4> <5>
                      <5> <6 4> <5> <6> <5> <5> <5> <6>
                      <5> <6 4> <6> <5> <6 4> <5> <5>2
        }
      }
      \new FiguredBass{
        \figuremode { <I>4 <IV> <I> <V> <I> <IV> <VI> <II>
                      <V> <I> <IV> <V> <I> <IV> <I> <V>
                      <I> <IV> <I> <V> <I> <VI> <II> <V>
                      <I> <V> <I> <IV> <I> <V> <I>
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.6 (Sol majeur)"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \time 6/8 \key g \major
      \new Voice = "melody" {
        \relative c'' {
          \partial 4.
          d16 (cs d e d c b8) d,16 (cs d8-.) d'16 (cs d e d df c8) a16 (gs a8-.) g'!16 (fs g b, g' e)
          d8 b16 (as b8-.) e16 (d cs c b bf a!4.) d16 (cs d e d c b8) d,16 (cs d8-.) e16 (fs g a b c!) d (e d g, g' fs e fs e a, a' af g fs e d c b a g fs e fs a g4.)
          \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef bass
      \time 6/8 \key g \major
      \new Voice = "bass" {
        \relative f {
          \partial 4. r4.
          g b a e b c d r g, g g c d d
          g,4.
        }
      }
      \new FiguredBass{
        \figuremode { <_>4. <5> <6> <5> <5> <5> <5>
                      <5> <_> <5> <6 4> <5> <5> <6 4> <5> <5>
          
        }
      }
      \new FiguredBass{
        \figuremode { <_>4. <I> <I> <II> <VI> <III> <IV>
                      <V> <_> <I> <IV> <I> <II> <I> <V> <I>
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.7 (Si bémol majeur)"
  }
  \new ChoirStaff <<
    \new Staff <<
      \clef treble
      \time 4/4 \key bf \major
      \new Voice = "soprane" {
        \relative c'' {
          bf8--\mf d-- f-- g16^"B" (f) bf,8 d a g16^"B" (a) bf8 f c' bf16^"B" (c) d4 r4 bf8\f a16^"B" (bf) c8 ef bf16\p (a^"B" bf b^"P" c d^"P" ef8)
          f8\< c d16 c^"P" bf^"P" a^"P" g a^"P" bf^"P"\! c a4 bf8--\mf d-- f-- g16^"B" (f) bf,8 d a g16^"B" (a) bf8 c16^"P" (d) c4 bf8 (c16^"B" bf a g^"B" a8) bf2 r2
          \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble
      \time 4/4 \key bf \major
      \new Voice = "alto" {
        \relative c' {
          f2 g4 d f2 f4 r ef2 d4 ef c bf c f f2 g4 d  g f g f f2 r
        }
      }
    >>
    \new Staff <<
      \clef "treble_8"
      \time 4/4 \key bf \major
      \new Voice = "tenor" {
        \relative c' {
          d4 c d2 (d4) c bf r g2 g2 f g4 c d4 c d2 d4 c ef8 d^"P" c4 d2 r 
        }
      }
    >>
    \new Staff <<
      \clef bass
      \time 4/4 \key bf \major
      \new Voice = "bass" {
        \relative f {
          bf4 a g f bf, a bf r ef4 c g' c,8 bf^"P"
          a4 bf ef f4 bf4 a g f g a ef f bf,2 r
        }
      }
      \new FiguredBass{
        \figuremode { <5>4 <6> <5> <6> <5> <6> <5> <_> <5> <5> <5> <5>
                      <6> <5> <6> <5> <5> <6> <5> <6> <5> <6> <5> <5> <5>2 <_>
        }
      }
      \new FiguredBass{
        \figuremode { <I>4 <V> <VI> <III> <I> <V> <I> <_> <IV> <II> <VI> <II> <V> <I> <II> <V> <I> <V> <VI> <III> <VI> <V> <IV> <V> <I>
        }
      }
    >>
  >>
}
%}
global = { \time 2/2 \key g \major }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.8"
  }
  \new PianoStaff <<
    \new Staff = "soprane" <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible 
      \set Staff.explicitClefVisibility = #end-of-line-invisible 
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible 
      \clef treble
      \global
      \new Voice = "soprane" {
        \relative c'' { \override Slur.color = #red
          \mark "A"
          r2 e d( \once \override NoteHead.color = #red b) c (^"Redite" a) g fs e fs \once \override NoteHead.color = #red \once \override Slur.color = #red a (^"8e conséc."c \once \override NoteHead.color = #red b) \once \override NoteHead.color = #red e, fs
          \once \override NoteHead.color = #red g(^"Répétition"
          \once \override NoteHead.color = #red g) b
          \once \override NoteHead.color = #red c(
          \once \override NoteHead.color = #red ds)^"2de aug"
          e1 \break \global
          \mark "B"
          g,1
          \once \override NoteHead.color = #red d'
          c a b g
          \once \override NoteHead.color = #red e^"8e directe"
          fs g
          \bar "|."
        }
      }
    >>
    \new Staff = "basse" <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible 
      \set Staff.explicitClefVisibility = #end-of-line-invisible 
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible 
      \clef bass
      \global
      \new Voice = "bass" {
        \relative f { \override Slur.color = #red
          \clef alto
          e1
          \once \override NoteHead.color = #red fs^"4te avec si"
          a
          b
          c
          \once \override NoteHead.color = #red a(
          \once \override NoteHead.color = #red b)^"4te avec mi"
          a1
          g
          fs
          e
          \global
          \clef bass r2 g
          \once \override NoteHead.color = #red a^"4te avec ré"
          b c
          c,( d)^"Redite" c(d)
          \once \override NoteHead.color = #red g e fs
          \once \override NoteHead.color = #red e c d
          \once \override NoteHead.color = #red a g1
        }
      }
      \new FiguredBass{
        \figuremode {
          <_>1 <6 4> <_> <_> <_> <_> <6 4> <_> <_> <5/> <_>
           <_> <_> <_> <_> <6 4> <_> <_> <6 4>
        }
      }
    >>
  >>
}
global = { \time 2/2 }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 8.9"
  }
  \new PianoStaff <<
    \new Staff <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible 
      \set Staff.explicitClefVisibility = #end-of-line-invisible 
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible 
      \clef treble
      \global
      \new Voice = "soprane" {
        \relative c'' {
          \mark "Mode majeur"
          \key c \major
          c1 a b d e f d c \break
          r2 g2 a c d c b f e g a g a b c1 \break
          %\mark "Mode de Ré"
          %\key c \major
          %d,1 f g a e g f e c d \break
          %r2 s2 s1*9 \break
          %\mark "Mode de La"
          %\key g \major
          %e'1 d e c b a g a b g fs e \break
          %r2 s2 s1*11
          \bar "|."
        }
      }
    >>
    \new Staff <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible 
      \set Staff.explicitClefVisibility = #end-of-line-invisible 
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible 
      \clef bass
      \global
      \new Voice = "bass" {
        \relative f {
          r2 c2 d c b a g b c g a f g b c1
          c1 a b d e f d c
          %r2 s2 s1*9
          %d1 f g a e g f e c d
          %\key g \major
          %r2 s2 s1*11
          %\clef tenor
          %e'1 d e c b a g a b g fs e
        }
      }
    >>
  >>
}
\layout {
  \context {
    \Score
    \override RehearsalMark.self-alignment-X =
      #(lambda (grob)
         (let* ((break-dir (ly:item-break-dir grob)))
           (case break-dir
             ((-1) RIGHT)  ;; end-of-line   -> right aligned
             ((1) LEFT)    ;; begin-of-line -> left-aligned
             (else CENTER) ;; otherwise     -> center-aligned
             )))
    \omit BarNumber
  }
ragged-last = ##f
}