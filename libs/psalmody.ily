\version "2.18.2"
startPsalmody={
  \break \cadenzaOn
  \accidentalStyle "forget"
}

markAntiphon = { \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps \antiphonText }}}
markPsalmody = { \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps \verseText }} }


groupedVersesLyrics = <<
>>

figuredBass = \figuremode {
  }
harmony = \figuremode {
  }

verseFiguredBass = \figuremode {
  }
verseHarmony = \figuremode {
  }
