cesure = {
  \tag #'audio s4
}

silence = #(
  define-music-function (parser location arg) (ly:music?) (
    map-some-music (
      lambda (m) (
        and (music-is-of-type? m 'note-event)
        (make-music 'SkipEvent m)
      )
    ) arg
  )
)

pianoProperties = { %options pour Lilypond 2.18.2 et suivantes
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

debutPsalmodie={
  \break \cadenzaOn
  \accidentalStyle "forget"
}

% Cette fonction hyper utile sert à SUPERPOSER le logo avec la barre de titre.
% Sinon, LilyPond chercherait naïvement à éviter la collision
% et décalerait la barre de titre vers le bas
#(define-markup-command (overlay layout props args)
  (markup-list?)
  #:category align
  "
@cindex merging text

Takes a list of markups combining them.

@lilypond[verbatim,quote]
\\markup {
  \\fontsize #5
  \\override #'(thickness . 2)
  \\overlay {
    \\draw-line #'(0 . 4)
    \\arrow-head #Y #DOWN ##f
    \\translate #'(0 . 4)\\arrow-head #Y #UP ##f
  }
}
@end lilypond"
  (apply ly:stencil-add (interpret-markup-list layout props args)))


\book {
  #(set-global-staff-size 19)
}

\paper {
  system-system-spacing =
      #'((padding . 5)
       (basic-distance . 10)
       (minimum-distance . 5)
       (stretchability . 10))
}

\paper {
  #(include-special-characters) % prise en charge des charactères spéciaux http://lilypond.org/doc/v2.18/Documentation/notation/special-characters#ascii-aliases
  system-system-spacing #'basic-distance = #15
  system-system-spacing =
    #'((padding . 2)
       (basic-distance . 10)
       (minimum-distance . 2)
       (stretchability . 20 ))
    myStaffSize = #19
  fonts = #(make-pango-font-tree
          "Palatino"
          "Avant Garde"
          "Courier"
          (/ myStaffSize 20))

  score-markup-spacing =
      #'((padding . 0)
       (basic-distance . 5)
       (minimum-distance . 0)
       (stretchability . 10))
  ragged-bottom = ##t
  last-bottom-spacing = 0
  top-markup-spacing = 0
  top-system-spacing = 0
  page-breaking = #ly:minimal-breaking

  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1.5\cm
  bottom-margin = 0\cm

  scoreTitleMarkup = \markup {
    \override #'(baseline-skip . 1.17)
    \line {
      \right-column {
        \huge \larger \larger \bold \fromproperty #'header:title
        " "
        " "
        \large \bold \fromproperty #'header:subtitle
        { \transparent \filled-box #'(0 . 52) #'(0 . 0) #0 }
      }
      \center-column { \vcenter \vspace #5 \hcenter-in #32 { " " } }
      \sans \small \left-column {
        " "
        \line { \concat { \fromproperty #'header:poetPrefix \fromproperty #'header:poet \bold " " } }
        " "
        \line { \concat { \fromproperty #'header:composerPrefix \fromproperty #'header:composer \bold " " } }
      }
    }
  }
  oddFooterMarkup = \markup {
    \fill-line {
      \center-column {
        \sans
        \line {
          %% Copyright header field only on first page in each bookpart.
          %\on-the-fly #part-first-page \column {\fromproperty #'header:copyright }
          %\on-the-fly #part-first-page \column { \on-the-fly #last-page "−" }
          %% Tagline header field only on last page in the book.
          %\on-the-fly #last-page  \column {\fromproperty #'header:tagline }
        }
      }
    }
  }
}

% il faudra retirer les décalages (extra-offset) le jour où on compile avec 2.18.2
% le bug de positionnement des marques a été résolu dans 2.18.2
marqueAntienne = { \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
                   \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps Antienne }}}
marquePsalmodie = {\once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0)
                   \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps Psalmodie }} }
marquePsalmodieA = {\once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0)
                   \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps Psalmodie A }} }
marquePsalmodieB = {\once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0)
                   \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps Psalmodie B }} }

tagline = \markup {
      \teeny\sans \concat{"gravé avec LilyPond pour " \with-url #"https://www.psaumedudimanche.fr" {\underline{www.psaumedudimanche.fr}}}
}

copyright = "©"
poet = "AELF"
poetPrefix = "Texte : "
composerPrefix = "Musique : "

% on est obligés de déplacer les définitions ici, car plus tard c'est trop tard, le
% script accrocheParoles.ly se retrouve dans le bloc \bookpart { \score { . } }
% où plus aucune définition n'est possible :'(

#(define comml    (object->string (command-line)))
#(define fichierMarkup "markup-paroles.ly")
#(define loc      (+ (string-rindex comml #\/ ) 1))
#(define commllen (- (string-length comml) 2))
#(define filen    (substring comml loc commllen))
#(define shortfilenlen (- (string-length filen) 3))
#(define shortfilen    (substring filen 0 shortfilenlen))
pyMx=#(define-music-function (parser location)()
           (system (string-concatenate (list "../scripts/verse-marker.sh \"" filen "\"") ) )
   #{  #})