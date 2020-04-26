rhythmMarkStaffReduce = #-3
rhythmMarkLabelFontSize = #-2

rhythmMark = #(define-music-function (parser location label musicI musicII ) (string? ly:music? ly:music?)
   #{
      \mark \markup {
        \line \general-align #Y #DOWN {
          \combine
            \italic \fontsize #rhythmMarkLabelFontSize $label
            \transparent \italic \fontsize #rhythmMarkLabelFontSize f

          \score {                     % 2nd column in line
            \new Staff \with {
              fontSize = #rhythmMarkStaffReduce
              \override StaffSymbol.staff-space = #(magstep rhythmMarkStaffReduce)
              \override StaffSymbol.line-count = #0
              \override VerticalAxisGroup.Y-extent = #'(-0.85 . 4)
            }

            {
              \relative c' { \stemUp $musicI }

%             \override Score.SpacingSpanner.strict-note-spacing = ##t
              \once \override Score.TextScript.Y-offset = #-0.4
              s4.^\markup{ \halign #-1 \italic "=" }

              \relative c' { \stemUp $musicII }
            }

            \layout {
              ragged-right= ##t
              indent = 0
              \context {
                \Staff
                \remove "Clef_engraver"
                \remove "Time_signature_engraver"
              }
            } % layout end

          } % Score end

        } % line end
      } % markup end
   #})
rhyMarkI = { b'1*1/8 }

rhyMarkII = { b'2*1/4 }

rhyMarkIV = { b'4*1/2 }

rhyMarkEighth = { b'8 }

rhyMarkIIEighths = {
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4) % tight
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 3/16) % even
  b'8[ b8]
}
rhyMarkTriplets = {
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2) % super-tight
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4) % tight
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 3/16) % even
  \tuplet 3/2 { b'4 b8 }
}
rhyMarkSlurredTriplets = {
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4) % tight
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 5/32) % slighty tighter as even
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) % even
  \tuplet 3/2 { b'8 ~ b8 b8 }
}
rhyMarkDottedEighths = {
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4) % tight
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 3/16) % even
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) % loose
  { b'8.[ b16*2] }
}
