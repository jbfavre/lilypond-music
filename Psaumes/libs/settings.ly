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
% Global staff size.
% Other sizes will be relative.
% Good to customize to get a "one page only" psalm, when possible
staffCustomSize = 16