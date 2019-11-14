\version "2.18.2"

tagline = \markup {
      \teeny\sans \concat{"gravé avec LilyPond pour " \with-url #"https://www.psaumedudimanche.fr" {\underline{www.psaumedudimanche.fr}}}
}

copyright = "©"
poet = "AELF"

title = "Composition title"
subtitle = "Composition subtitle"
real_poet = "Poet name"
composer = "Composer name"
dedicace = ""
signature = ""
signatureDate = ""


sopranoVerseRepons=\lyricmode {}

startPsalmody={
  \break \cadenzaOn
  \accidentalStyle "forget"
}

figuredBass = \figuremode {
  }
harmony = \figuremode {
  }

verseFiguredBass = \figuremode {
  }
verseHarmony = \figuremode {
  }
