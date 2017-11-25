\version "2.18.2"
% Set antiphon tempo
tempoAntiphon = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
}

% Set verse tempo.
% Allows to accelerate long values like breve
% And get tempo primo back for shorter values
tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=100
}
% Add a silence between antiphon & verse
% and between each stick in verse
caesura = {
  \set Score.tempoHideNote = ##t
  \tag #'audio s4
}

startPsalmody={
  \break \cadenzaOn
  \accidentalStyle "forget"
}

% il faudra retirer les décalages (extra-offset) le jour où on compile avec 2.18.2
% le bug de positionnement des marques a été résolu dans 2.18.2
marqueAntiphon = { \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
                   \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps \antiphonText }}}
markPsalmody = {\once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0)
                   \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps \verseText }} }
markPsalmodyA = {\once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0)
                   \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps \verseTextA }} }
markPsalmodyB = {\once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0)
                   \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps \verseTextB }} }

\paper {
  #(include-special-characters) % prise en charge des charactères spéciaux http://lilypond.org/doc/v2.18/Documentation/notation/special-characters#ascii-aliases

  system-system-spacing =
    #'((padding . 5)
       (basic-distance . 15)
       (minimum-distance . 5)
       (stretchability . 20 ))
  myStaffSize = #19

  fonts = #(make-pango-font-tree
          "Palatino"
          "Avant Garde"
          "Courier"
          (/ myStaffSize 20))

  score-markup-spacing =
      #'((padding . 5)
       (basic-distance . 15)
       (minimum-distance . 5)
       (stretchability . 20))
  ragged-bottom = ##t
  last-bottom-spacing = 0
  top-markup-spacing = 0
  top-system-spacing = 0
  page-breaking = #ly:minimal-breaking

  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
}
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