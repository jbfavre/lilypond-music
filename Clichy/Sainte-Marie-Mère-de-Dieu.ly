\version "2.22.1"
\language "english"

\header {
  title = "Sainte Marie, Mère de Dieu"
  subtitle = "Chant d'entrée"
  tagline = "Messe Antillaise - Saint-Vincent de Paul, 31 octobre 2021"
}

\paper {
  #(set-paper-size "a4")
  #(include-special-characters)
}

global = {
  \key d \major
  \time 3/8
  %\tempo 4=100
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  \partial 8 a8 d4 d8 d4 fs8 a4 a8 a4 a8 \break
  b4 b8 b4 b8 a4 fs8 a4 a8 \break
  g4 b8 e,4 g8 fs4 a8 d,4 fs8 \break
  e4 g8 cs,4 e8 d4 fs8 a4 a8\break
  g4 b8 e,4 g8 fs4 a8 d4\fermata fs,8 \break
  e4 a8 cs (b) a g fs e d4.

}

verse = \lyricmode {
  Sain -- te Ma -- rie, Mè -- re de Dieu
  Ac -- cep -- te- moi pour ton en -- fant
  Fai -- ble je suis, pé -- ni -- ble -- ment,
  Je fais me rou -- te vers les cieux,
  Je veux mon -- ter tou -- jours plus haut,
  Dans ta cor -- dée en -- traî -- _ ne moi.
}
verseDeux = \lyricmode {
  Sain -- te Ma -- rie, Mè -- re de Dieu
  Toi qu'on ap -- pelle l'im -- ma -- cu -- lée
  Ra -- ni -- me~en moi le don de foi
  Com -- ble mon cœur il est à toi
  Et par -- tout je pro -- cla -- me -- rai
  Que par ton fils nous som -- mes sau -- vés
}
verseTrois = \lyricmode {
  Sain -- te Ma -- rie, Mè -- re de Dieu
  Je mè -- ne~i -- ci un dur com -- bat
  Pour de -- meu -- rer a -- mi de Dieu
  Pré -- ser -- ve- moi de tout faux pas
  Je veux gran -- dir dans l'a -- mi -- tié
  De mon sau -- veur res -- sus -- _ ci -- té.
}

\score {
  \new Staff \with {
    instrumentName = "Soprano"
    midiInstrument = "choir aahs"
  } { \sopranoVoice }
  \addlyrics { \verse }
  \addlyrics { \verseDeux }
  \addlyrics { \verseTrois }
  \layout { ragged-last = ##f }
}
