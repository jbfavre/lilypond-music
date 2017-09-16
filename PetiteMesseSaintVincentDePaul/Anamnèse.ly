\version "2.18.2"
\language "english"

anamneseGlobal = {
  \key e \major
  \time 2/2
  \tempo 4. = 40
}
anamneseIntonationMusic =  \relative c'' {
  gs4 gs a a8 a gs gs fs e fs2
}
anamneseMainSopranoMusic = \relative c'' {
  gs4 gs a a8 a gs gs fs e fs2 \break
  \tuplet 3/2 { gs8 gs gs } gs8 gs a4. a8 gs4 fs4 e2 \break
  r8 e8 e e fs4 fs8 fs e4 fs gs2 \break
  r8 gs8 gs fs e4 fs8 gs a4 gs8 fs gs2 (fs2) e1
}

anamneseMainAltoMusic = \relative c' {
}

anamneseMainTenorMusic = \relative c' {
}

anamneseMainBasseMusic = \relative c {
  r1 r1
  \tuplet 3/2 { e8 e e } e8 e cs4. cs8 bs4 gs cs4 b
  a
}

anamneseIntonationLyrics =  \lyricmode {
  Il est grand le mys -- tè -- re de la foi:
}
anamneseMainSopranoLyrics = \lyricmode {
  Nous pro -- cla -- mons ta mort, Sei -- gneur Jé -- sus,
  Nous cé -- lé -- brons ta ré -- sur -- rec -- tion,
  Nous at -- ten -- dons ta ve -- nue dans la gloi -- re
}

