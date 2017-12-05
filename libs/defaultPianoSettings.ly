pianoProperties = {
  %options pour Lilypond 2.18.2 et suivantes
  \hide PhrasingSlur
  \hide Slur
  \hide Hairpin
  \omit DynamicText
  \omit TextScript
  \set fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
  \override Hairpin #'style = #'none
  \autoBeamOn
}
pianoSopranoMusic = \sopranoAntiphonMusic
pianoAltoMusic = \altoAntiphonMusic
pianoTenorMusic  = \tenorAntiphonMusic
pianoBassMusic = \bassAntiphonMusic
pianoScore={}