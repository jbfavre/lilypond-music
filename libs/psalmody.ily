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

markAntiphon = { \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps \antiphonText }}}
markPsalmody = { \mark \markup { \override #'(box-padding . 0.5) \box \line { \fontsize #-1.5 \smallCaps \verseText }} }

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