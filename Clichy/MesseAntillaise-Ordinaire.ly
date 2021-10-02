\version "2.22.1"
\language "english"

\header {
  tagline = "Messe Antillaise - Saint-Vincent de Paul, 31 octobre 2021"
}

\paper {
  #(set-paper-size "a4")
  #(include-special-characters)
  print-all-headers = ##t
}

global = {
  \key f \major
  \time 6/8
}

right = \relative c' {
  \global
  <f a>8 <f a> <f a> <d bf'> <d bf'> <f d'>
  <f c'>4  <e c'>8 <f a>4. \break
  <e bf'>4  <d bf'>8 <e g>4 <e g>8
  <f a>2.
}

left = \relative c {
  \global
  <f c'>8 <f c'> <f c'> <g bf> <g bf> <g bf>
  <f a>4 <c bf'>8 <d f>4.
  <c g'>4 <f bf>8 <c c'>4 <c bf'>8
  <f c'>2.

}
verseOne = \lyricmode {
  Mon Die nou -- ka -- man -- dé ou pa -- don
  pran pi -- tié di nou.
}
verseTwo = \lyricmode {
  O Christ nou -- ka -- man -- dé ou pa -- don
  so -- vé nous di mal.
}
\score {
  \new ChoirStaff <<
    \new Staff = "right"{ \clef treble \right }
    \addlyrics {\verseOne}
    \addlyrics {\verseTwo}
    \new Staff = "left" { \clef bass \left }
  >>
  \layout { ragged-last = ##f }
  \header {
    title = "Mon Die noukamandé"
    subtitle = "Kyrie"
  }
}

sopranoVoice = \relative c' {
  \clef treble \key c \major \time 4/4
  \repeat volta 2 {
    c4 e g2 c4 a g e8 g
  }
  \alternative {
    { e4 d c r4 }
    {e4 d c r8 g'8 }
  } \break
  c4 b8[ c] d8.[ d16]~ d8 g, b d b g c8. c16~ c8 g8 \break
  \repeat volta 2{
    c8 c b a g8. e16~ e8 g
  }
  \alternative {
    { e4 d c r8 g'8}
    { e4 g c r4 }
  }\break
  e,4 (f) d r4 f (g) e r8 g8 c4 b8[ c] d8. d16~ d8 g,8 b d16 b~ b8 a16 g c4 r8 g8
  \repeat volta 2 {
    c8 c b a g8. e16~ e8 g
  }
  \alternative {
    {e4 d c r8 g'8}
    {e4 g c2}
  }
}
verse = \lyricmode {
  Saint, Saint, Saint le Sei -- gneur, Dieu de l'u -- ni -- vers&nbsp;!
  l'u -- ni -- vers&nbsp;!
  Le ciel et la ter -- re sont rem -- plis de ta gloi -- re
  Ho -- san -- na, Ho -- san -- na au plus haut des cieux&nbsp;!
  Ho- haut des cieux&nbsp;!
  Bé -- ni, bé -- ni, bé -- ni soit ce -- lui _ qui vient au nom du Sei -- gneur
  Ho -- san -- na, ho -- san -- na au plus haut des cieux&nbsp;!
  Ho- haut des cieux&nbsp;!
}
\score {
  \new Staff <<
    \new Voice = "sopranoVoice" { \sopranoVoice }
    \new Lyrics \lyricsto "sopranoVoice" { \verse }
  >>
  \layout { ragged-last = ##f }
  \header {
    title = "Sanctus"
  }
}

\pageBreak

sopranoVoiceAnamnese = \relative c' {
  \clef treble \key f \major \time 2/4
  r8 f16 f~ f f a8
  c4 a8 f e g16 g~ g4~g4 r4\break
  r8 bf16 bf~ bf bf a8 g4 e8 c8~ c16 f f8~ f4~ f4 r\break
  r8 f16 f~ f8 a c4 a8 f~ f g16 g~ g8 a g2\break
  r8 bf16 bf~ bf8 a g4 e8 c~ c f16 f~ f8 g f2\fermata \bar "||" \break
  r4 r8 c16 c
  \repeat volta 2{
    {f8. a16~ a f f8 e8 bf'16 bf~ bf g g8 e8 bf'16 bf~ bf g g8}
  }
  \alternative{
    {a8 f~ f c16 c}
    { a'8 f~f4}
  }\break
  \repeat volta 2{
    a8. f16~ f f g8 e2 bf'8. g16~ g g a8 f2
  }
}
verseAnamnese = \lyricmode {
  Jé -- zi ou pli fo ki lan -- mo, jé -- zi&nbsp;!
  Jé -- zi ou ré -- si -- si -- té, Jé -- zi&nbsp;!
  ou ka -- wou -- vin an -- ko pou so -- vé nou,
  ou ka -- wou -- vin an -- ko pou sem -- blé nou&nbsp;!
  Jé -- zi -- kri, ou mo pou nou, ou ré -- si -- si -- té,
  ou vi -- van pou tou -- jou. Jé -- zi tou -- jou
  Nou ka a -- tann vou. Nou ka a -- tann vou.
}
\score {
  \new Staff <<
    \new Voice = "sopranoVoice" { \sopranoVoiceAnamnese }
    \new Lyrics \lyricsto "sopranoVoice" { \verseAnamnese }
  >>
  \layout { ragged-last = ##f }
  \header {
    title = "Anamnèse"
  }
}
