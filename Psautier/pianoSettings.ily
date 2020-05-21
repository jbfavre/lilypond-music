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
    \override InstrumentName #'font-name = #"Monospace Regular"
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 0)
                            (padding . 0))
    \autoBeamOn
  }
