\version "2.22.0"
\language "english"
\include "../libs/commonFunctions.ily"

headers = \header {
  title = "Guidés par l'étoile"
  subtitle = \markup { \column { "Tropaire pour l'Épiphanie" "(Introït ou Communion)" } }
  composer = "Jean Baptiste Favre"
  poet = "Jean Baptiste Favre, AELF"
  dedication = "Saint Pierre Quiberon, novembre 2019"
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Stance  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
stanceRhythms = {
  \tempo 4 = 80
  \key g \minor \time 3/4
  \markCustom "Stance"
  \partial 4. s4. s2. \time 2/4  s2 s2 \time 3/4 s2. \break
  \key g \major s2. s2. \time 2/4 s2*4 \bar "|."
  }
stanceMusic = \relative c' {
  d8 g a bf4 c8 bf a g a4 a4 r8 a8 bf c d4 c8 bf a g
  fs!?4 r8 d e
  fs g4 fs8 g \tuplet 3/2 { a8 g a } b2 d4. b8 g4 a8 b a2 \fermata
  }
stanceLyrics = \lyricmode {
  Ils sont ve -- nus, gui -- dés par l'é -- toi -- le, se pro -- ster -- ner de -- vant le ber -- ceau
  Et dé -- po -- ser, juste aux pieds de l'en -- fant, l'or, la myrrhe et l'en -- cens
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Répons     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
reponsRhythms = {
  \markCustom "Répons"
  \key g \major \time 2/4
  s2*2 s4 s8 \breathe s8 s2 \break s2*4
  \bar "|." \break
  }
reponsSopranosMusic = \relative c' {
  r8 d8 g a b4 c8 b a4 \autoBeamOff fs8
  fs8 \autoBeamOn g a b c d c b g g4 g8 fs g2 (g2) \fermata
  }
reponsAltosMusic = \relative c' {
  r8 d8 d8 fs8 g4 g8 g8 fs4 \autoBeamOff d8
  ds8 \autoBeamOn e fs g g a fs fs e e4 d8 d d2 (d2) \fermata
  }
reponsTenorsMusic =  \relative c {
  r8 fs8 g d'8 d4 c8 d8 d4 \autoBeamOff a8
  b8 \autoBeamOn b d d e d (a) b4 c c c b8 a b2 \fermata
  }
reponsBassesMusic =  \relative c {
  r8 d8 b a g (g') e g d4 \autoBeamOff  d8
  b8 \autoBeamOn e d g e fs d ds e c4 d8 d g,2 (g2) \fermata
  }
reponsLyrics = \lyricmode {
  Nous a -- vons vu son é -- toi -- le, et nous som -- mes ve -- nus nous pro -- ster -- ner de -- vant Lui.
  }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%          Versets          %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
versetRhythms = {
  \cadenzaOn \omit Staff.TimeSignature
  \key g \major
  \markCustom "Psalmodie A"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 \bar "|." \break
  \markCustom "Psalmodie B"
  s\breve s1 s4 s4 \bar "||"
  s\breve s1 s4 \bar "|."
  s4^\markup { &dagger; } \bar "|." \break
  \markCustom "Psalmodie C"
  s\breve s1 s4 s4 \bar "||"
  s\breve s1 s4 s4 \bar "||"
  s\breve s1 s4 \bar "||"
  s\breve s1 s4 \bar "|."
}
versetSopranosMusic = \relative c'' {
  g\breve a1 fs4
  b\breve g1 a4
  a\breve b1 g4
  g\breve g1 fs4

  b\breve b1 a4 g4
  a\breve b1 b4
  a4

  b\breve b1 a4 fs4
  g\breve c1 c4 b4
  b\breve d1 d4
  c\breve b1 a4
  }

versetAltosMusic = \relative c' {
  e\breve e1 d4 % A
  fs\breve e1 e4
  fs\breve fs1 e4
  e\breve e1 d4

  g\breve fs1 fs4 e4 % B
  e\breve e1 g4
  g4

  g\breve g1 fs4 d4 % C
  e\breve g1 g4 fs4
  g\breve  a1 b4
  e,\breve e1 fs4
  }

versetTenorsMusic = \relative c' {
  b\breve a1 a4 % A
  d\breve b1 c4
  d\breve b1 b4
  c\breve c1 a4

  d\breve b1 d4 b4 % B
  a\breve c1 d4
  e4

  e\breve c1 c4 b4 % C
  b\breve e1 e4 ds4
  e\breve d!?1 d4
  a\breve c1 d4
  }

versetBassesMusic = \relative f {
  e\breve c1 d4 % A
  b\breve e1 a,4
  d\breve ds1 e4
  c\breve a1 d?4

  g\breve d1 d4 e4 % B
  c\breve a1 g4
  c4

  e\breve a,1 a4 b4 % C
  e\breve c1 a4 b4
  e\breve fs1 g4
  c,\breve a1 d4
  }

versetLyrics =  \markup {
  \override #'(font-family . sans)
  \column {
    \fill-line {
      \left-column{
        %  « ℣ » et « ℟ »
        \concat { \with-color #red { \typewriter "℣. " } "Maintenant, r" \underline o "is, comprenez," }
        \concat {                    \typewriter "   "   "reprenez-vous, j" \underline u "ges de la terre." \typewriter "(Ps.2,10)"}
        \concat {                    \typewriter "   "   "Servez le Seigne" \underline u "r avec crainte," }
        \concat {                    \typewriter "   "   "rendez-lui votre homm" \underline a "ge en tremblant." \typewriter "(Ps.2,11)" \with-color #red { \typewriter "   ℟." } }
        \vspace #0.5
        \concat { \with-color #red { \typewriter "℣. " } "Qui est ce roi de gloire ? " \roman \super {"&dagger;"} }
        \concat {                    \typewriter "   " "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c'est le Seign" \underline e "ur, le f" \underline o "rt, le vaillant," }
        \concat {                    \typewriter "   "   "le Seign" \underline e "ur, le vaillant des combats." \typewriter "(Ps.23,8)" }
        \concat {                    \typewriter "   "   "Tu lui dest" \underline i "nes bénédicti" \underline o "ns et bienfaits," }
        \concat {                    \typewriter "   "   "tu mets sur sa t" \underline ê "te une couronne d'or." \typewriter "(Ps.20,4)" \with-color #red { \typewriter "   ℟." } }
        \vspace #0.5
        \concat { \with-color #red { \typewriter "℣. " } "Heureux le peuple dont le Seigne" \underline u "r est le Dieu,"}
        \concat {                    \typewriter "   "   "heureuse la nation qu'il s'est chois" \underline i "e pour domaine !" \typewriter "(Ps.32,12)" }
        \concat {                    \typewriter "   "   "Fêtez le Seigneur, v" \underline o "us, ses fidèles," }
        \concat {                    \typewriter "   "   "rendez gr" \underline â "ce en rappelant son nom très saint." \typewriter "(Ps.29,5)" \with-color #red { \typewriter "   ℟." } }
        \vspace #0.5
        \concat { \with-color #red { \typewriter "℣. " } "Ton trône est div" \underline i "n, un trône éternel ;" }
        \concat {                    \typewriter "   "   "ton sceptre roy" \underline a "l est sceptre de droiture :" \typewriter "(Ps.44,7)" }
        \concat {                    \typewriter "   "   "Toute la t" \underline e "rre se prosterne devant toi," }
        \concat {                    \typewriter "   "   "elle chante pour t" \underline o "i, elle chante pour ton nom. »" \typewriter "(Ps.65,4)" \with-color #red { \typewriter "   ℟." } }
        \vspace #0.5
        \concat { \with-color #red { \typewriter "℣. " } "Les rois de Tarsis et des Iles " \roman \super {"&dagger;"} }
        \concat {                    \typewriter "   " "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;apporter" \underline o "nt des présents." }
        \concat {                    \typewriter "   "   "Les rois de Saba et de Seba fer" \underline o "nt leur offrande." \typewriter "(Ps.71,10)" }
        \concat {                    \typewriter "   "   "Tous les r" \underline o "is se prosterner" \underline o "nt devant lui," }
        \concat {                    \typewriter "   "   "tous les pa" \underline y "s le serviront." \typewriter "(Ps.71,11)" \with-color #red { \typewriter "   ℟." } }
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Doxologie     %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
doxologieRhythms = {
  \cadenzaOn
  \omit Staff.TimeSignature
  \key g \major
  \markCustom "Doxologie"
  s\breve s1 s4 s4 \bar "||"
  s\breve s1 s1 s4 \bar "||"
  s\breve s1 s1 s4 s4 s4 \bar "||"
  \cadenzaOff
  s2 s2 \bar "|."
  }
doxologieSopranosMusic = \relative c'' {
  b\breve b1 a4 g4
  g\breve g1 a1 b4
  b\breve d1 b1 a4 a4 g4

  a2 a2
  }
doxologieAltosMusic = \relative c' {
  g'\breve fs1 fs4 e4
  e\breve e1 e1 fs4
  g\breve fs1 fs1 fs4 e4 e4
  g2 fs2
  }
doxologieTenorsMusic = \relative c' {
  d\breve d1 d4 b4
  b\breve c1 e1 ds4
  e\breve a,1 b1 b4 b4 b4
  e4 c4 d?2
  }
doxologieBassesMusic = \relative f {
  g\breve d1 d4 e4
  e\breve c1 c1 b4
  e\breve d1 ds1 ds4 e4 e4
  c4 a4 d?2
  }

doxologieLyrics =  \markup {
  \override #'(font-family . sans)
  \column {
    \fill-line {
      \left-column{
        %  « ℣ » et « ℟ »
        \concat { \with-color #red { \typewriter "℣. " } "Gloire au Père et au F" \underline i "ls et au Saint-Esprit." }
        \concat {                    \typewriter "   " "Au Dieu qui " \underline e "st, qui ét" \underline a "it et qui vient" }
        \concat {                    \typewriter "   " "Maintenant et à jam" \underline  a "is pour les si" \underline è "cles des siècles," }
        \concat {                    \typewriter "   " "Amen !" }
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Introït     %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
introitRhythms = {
  \time 3/8
  \key g \major
  \markCustom "Antienne d'ouverture"
  \partial 8 s8 s4 s8 s s s s s s s4 s8 s4 s8 \break s4. s8 s s s s s s s s s4. s4 s8 \bar "|."
  }
introitSopranosMusic = \relative c'' {
  g8
  g4 a8 b c b a g fs g4 \breathe g8 b4 c8
  d4. c8 b a g b b a g fs g4. g4 r8
  }
introitAltosMusic = \relative c' {
  g'8 g4 fs8 g g fs e d d e4 e8 fs4 e8 fs4. a8 fs fs e fs g e d d d4. d4 r8
  }
introitTenorsMusic = \relative c' {
  g8 b4 d8 d c d c a c b4 b8 b4 g8 b4. e8 d d b d e c a c c8 b a b4 r8
  }
introitBassesMusic = \relative f {
  g8 e4  d8 g8 e b c d d e4 \breathe e8 d4 c8 b4. c8 d d e b e c d d g,4. g4 r8
  }
introitLyrics =  \lyricmode {
  Voi -- ci ve -- nir le Sei -- gneur sou -- ve -- rain&nbsp;;
  Il tient en main la ro -- yau -- té, la puis -- san -- ce~et l'em -- pi -- re.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%     Communion     %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
communionRhythms = {
  \time 3/8
  \key g \major
  \markCustom "Antienne de communion"
  s8 s s8 s s s s s s s4
  s8 s s s \break
  s4 s8 s s s s s s s s s s4. s4 s8 \bar "|."
  }
communionSopranosMusic = \relative c'' {
  g8 g a8 b c b a g fs g g \breathe g8 b b c8
  d4 d8 c8 b a g b b a g fs g4. (g4.)
  }
communionAltosMusic = \relative c' {
  g'8 g fs8 g g fs e d d e e \breathe e8 fs fs e8
  fs4 fs8 a8 fs fs e fs g e d d d4. (d4.)
  }
communionTenorsMusic = \relative c' {
  g8 b d8 d c d c a c b b \breathe b8 b b g8
  d'4 d8 e8 d d b d e c a c c8 b a (b4.)
  }
communionBassesMusic = \relative f {
  g8 e d8 g8 e b c d d e e \breathe e8 d d c8
  b4 b8 c8 d d e b e c d d g,4. (g4.)
  }
communionLyrics = \lyricmode {
  Com -- me les ma -- ges gui -- dés par l'é -- toi -- le
  nous som -- mes ve -- nus a -- vec des pré -- sents a -- do -- rer le Sei -- gneur.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%          DRAW PARTITION          %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FirstPageHeaders = \headers
OtherPageHeaders = \header {
  title = ##f
  subtitle = ##f
  composer = ##f
  poet = ##f
  dedication = ##f
  }

\paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  indent = 1\cm
  % Plan for recto-verso printing with inner margin
  two-sided = ##t
  inner-margin =  2\cm
  outer-margin = 1.5\cm

  oddFooterMarkup = {}
  #(include-special-characters)

  %#(define fonts
  %  (set-global-fonts
  %   #:music "emmentaler"
  %   #:brace "emmentaler"
  %   #:roman "Latin Modern Roman"
  %   #:sans "Latin Modern Sans"
  %   #:typewriter "Monospace Regular"
  %  ))
  }
FirstScorePaper = \paper {
    markup-system-spacing = #'((basic-distance . 30)
       (minimum-distance . 30)
       (padding . 5)
       (stretchability . 5))
    top-markup-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 3))
    top-system-spacing = #'((basic-distance . 6)
       (minimum-distance . 6)
       (padding . 6)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 3))
    scoreTitleMarkup = \markup \columns {
      \fill-line {
          \column {
            \line {
              \left-column {
                \fontsize #8 \sans \fromproperty #'header:title
                \fontsize #1 \typewriter \fromproperty #'header:subtitle
              }
            }
          }
          \column {
            \line {
              \fontsize #-1
              \left-column {
                \line { \concat { \typewriter "Paroles&nbsp;:&nbsp;" \sans \fromproperty #'header:poet \bold " " } }
                \line { \concat { \typewriter "Musique&nbsp;:&nbsp;" \sans \fromproperty #'header:composer \bold " " } }
                \typewriter \italic \fromproperty #'header:dedication
              }
            }
          }
        }
    }
    oddFooterMarkup = {}
  }
OtherScoresPaper = \paper {
    markup-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
       (stretchability . 5))
    top-markup-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
     4 (stretchability . 5))
    top-system-spacing = #'((basic-distance . 9)
       (minimum-distance . 9)
       (padding . 7)
       (stretchability . 5))
    system-system-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 3)
      (stretchability . 5))
  }
LastScorePaper = \paper {
    top-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 3)
       (padding . 1)
       (stretchability . 10))
    system-system-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 1)
       (stretchability . 10))
   score-markup-spacing = #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 1)
       (stretchability . 10))
    markup-system-spacing = #'((basic-distance . 5)
       (minimum-distance . 3)
       (padding . 1)
       (stretchability . 10))
}
AllScoreLayout = \layout {
      ragged-last = ##f
      \context {
          \Staff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \PianoStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \context {
          \ChoirStaff
          \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
      \override Score.RehearsalMark.font-family = #'typewriter
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Antienne          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\bookpart { % Stance
  \FirstScorePaper
  \score {
    { % Partition Stance
      <<
        \new Staff = "stanceSolistStaff" \with { instrumentName = "Soliste" shortInstrumentName = "Sol." }
        <<
          \clef "treble"
          \new Voice = "stanceRhythms" {
            \markCustom "Stance" \stanceRhythms
            \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
            \once \override Staff.KeyCancellation.break-visibility = #all-invisible
            \once \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
            \break
            }
          \new Voice = "stanceMelody" {  \stanceMusic }
        >>
        \new Lyrics \lyricsto "stanceMelody" { \stanceLyrics }
        \new PianoStaff = "stancePiano" \with { instrumentName = "Orgue" shortInstrumentName = "O." }
        <<
          \new Staff = "stancePianoHighStaff"
          <<
            \clef "treble"
            \new Voice = "stanceRhythms" {
              \markCustom "Stance" \stanceRhythms
              \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
              \once \override Staff.KeyCancellation.break-visibility = #all-invisible
              \once \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
              \break
              }
            \new Voice = "stancePianoSoprano" { \voiceOne \stanceMusic }
            \new Voice = "stancePianoAlto" { \voiceTwo \stanceRhythms
            }
          >>
          \new Staff  = "stancePianoLowStaff"
          <<
            \clef "bass"
            \new Voice = "stanceRhythms" {
              \markCustom "Stance" \stanceRhythms
              \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
              \once \override Staff.KeyCancellation.break-visibility = #all-invisible
              \once \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
              \break
              }
            \new Voice = "stancePianoTenor" { \voiceOne \stanceRhythms }
            \new Voice = "stancePianoBass" { \voiceTwo \stanceRhythms
            }
          >>
        >>
      >>
      \new ChoirStaff = "reponsChoirStaff"
      <<
        \new Staff = "reponsHighStaff" \with { shortInstrumentName = \markup { \column { "S." "A." } } }
        <<
          \clef "treble"
          \new Voice = "reponsRhythms" { \reponsRhythms \bar "||" }
          \new Voice = "reponsSoprano" { \voiceOne \reponsSopranosMusic }
          \new Voice = "reponsAlto" { \voiceTwo \reponsAltosMusic }
        >>
        \new Lyrics \lyricsto "reponsSoprano" { \reponsLyrics }
        \new Staff  = "reponsLowStaff" \with { shortInstrumentName = \markup { \column { "T." "B." } } }
        <<
          \clef "bass"
          \new Voice = "reponsRhythms" { \reponsRhythms }
          \new Voice = "reponsTenor" { \voiceOne \reponsTenorsMusic }
          \new Voice = "reponsBass" { \voiceTwo \reponsBassesMusic }
        >>
      >>
    }
    \AllScoreLayout
    \FirstPageHeaders
  }
}


\bookpart {
  \OtherScoresPaper
  \score {
    {
      \new ChoirStaff = "psalmodyChoirStaff"
      {
        <<
          \new Staff = "psalmodyHighStaff"
          <<
            \clef "treble"
            \new Voice = "psalmodyRhythms" { \versetRhythms }
            \new Voice = "psalmodySoprano" { \voiceOne \versetSopranosMusic }
            \new Voice = "psalmodyAlto" { \voiceTwo \versetAltosMusic }
          >>
          \new Staff  = "psalmodyLowStaff" <<
            \clef "bass"
            %\new Voice = "psalmodyRhythms" { \global \choralPsalmRhythms }
            \new Voice = "psalmodyTenor" { \voiceOne \versetTenorsMusic }
            \new Voice = "psalmodyBass" { \voiceTwo \versetBassesMusic }
          >>
        >>
      }
    }
    \AllScoreLayout
    \OtherPageHeaders
  }
  \versetLyrics
}

\bookpart {
  \LastScorePaper
  \score {
    <<
      \new ChoirStaff = "doxologieChoirStaff"
      {
        <<
          \new Staff = "doxologieHighStaff"
          <<
            \clef "treble"
            \new Voice = "doxologieRhythms" { \doxologieRhythms}
            \new Voice = "doxologieSoprano" { \voiceOne \doxologieSopranosMusic }
            \new Voice = "doxologieAlto" { \voiceTwo \doxologieAltosMusic }
          >>
          \new Staff  = "doxologieLowStaff" <<
            \clef "bass"
            \new Voice = "doxologieRhythms" { \doxologieRhythms }
            \new Voice = "doxologieTenor" { \voiceOne \doxologieTenorsMusic }
            \new Voice = "doxologieBass" { \voiceTwo \doxologieBassesMusic }
          >>
        >>
      }
    >>
    \AllScoreLayout
    \OtherPageHeaders
  }
  \doxologieLyrics
  \score {
    {
      \new ChoirStaff = "introitChoirStaff"
      {
        <<
          \new Staff = "introitHighStaff"
          <<
            \clef "treble"
            \new Voice = "introitRhythms" { \introitRhythms}
            \new Voice = "introitSoprano" { \voiceOne \introitSopranosMusic }
            \new Voice = "introitAlto" { \voiceTwo \introitAltosMusic }
          >>
          \new Lyrics \lyricsto "introitSoprano" { \introitLyrics }
          \new Staff  = "introitLowStaff" <<
            \clef "bass"
            \new Voice = "introitRhythms" { \introitRhythms }
            \new Voice = "introitTenor" { \voiceOne \introitTenorsMusic }
            \new Voice = "introitBass" { \voiceTwo \introitBassesMusic }
          >>
        >>
      }
    }
    \AllScoreLayout
    \OtherPageHeaders
  }
  \markup {
    \override #'(font-family . sans)
    \fill-line {
      \rounded-box \bold \center-column {
        \concat { "Selon le moment de la messe, on prendra au choix" }
        \concat { "l'antienne d'ouverture ci-dessus ou l'antienne de communion ci-dessous" }
      }
    }
  }
  \score {
    {
      \new ChoirStaff = "communionChoirStaff"
      {
        <<
          \new Staff = "communionHighStaff"
          <<
            \clef "treble"
            \new Voice = "communionRhythms" { \communionRhythms}
            \new Voice = "communionSoprano" { \voiceOne \communionSopranosMusic }
            \new Voice = "communionAlto" { \voiceTwo \communionAltosMusic }
          >>
          \new Lyrics \lyricsto "communionSoprano" { \communionLyrics }
          \new Staff  = "communionLowStaff" <<
            \clef "bass"
            \new Voice = "communionRhythms" { \communionRhythms }
            \new Voice = "communionTenor" { \voiceOne \communionTenorsMusic }
            \new Voice = "communionBass" { \voiceTwo \communionBassesMusic }
          >>
        >>
      }
    }
    \AllScoreLayout
    \OtherPageHeaders
  }
  \markup {
    \override #'(font-family . sans)
    \fill-line {
      \rounded-box \bold \center-column {
        \concat { "On terminera en reprenant la Stance et son répons" }
      }
    }
  }
}