\version "2.19.82"
\include "gregorian.ly"
\include "english.ly"

\header {
  title = \markup
     \column {
       \combine \null \vspace #1
       "Exemples de tons psalmiques"
       " "
      }
  copyright = "Atelier psalmodie - Paroisse Saint-Vincent de Paul, Clichy la Garenne"
  tagline = ""
}

\score {
  \new StaffGroup \relative c'' {
    \cadenzaOn
    % Ton 1
    \new Staff {
      \set Score.timing = ##f
      \key c \major
      \mark \markup { \bold "Ton 1" }
      a\breve s1 s4 s s \bar "|"
      a\breve s1 g4 s4 s \bar "||" \break
    }
    % Ton 2
    \new Staff {
      \key c \major
      \mark \markup { \bold "Ton 2" }
      a\breve s1 g4 s4 s s \bar "|"
      a\breve s1 f4 s4 s \bar "||" \break
    }
    % Ton 3
    \new Staff {
      \key d \minor
      \mark \markup { \bold "Ton 3" }
      a\breve s1 g4 bf4 s4 \divisioMaior
      g\breve s1 f4 a4 s4 \bar "||" \break
    }
    % Ton 4
    \new Staff {
      \key d \major
      \mark \markup { \bold "Ton 4" }
      fs\breve b1 a4 \divisioMaior
      a\breve e4 fs4 \bar "||" \break
    }
    % Ton 5
    \new Staff {
      \key d \major
      \mark \markup { \bold "Ton 5" }
      fs\breve a1 b4 \bar "|"
      b\breve a1 fs4 e fs \bar "||" \break
    }
    % Ton 6
    \new Staff {
      \key d \minor
      \mark \markup { \bold "Ton 6" }
      a\breve g4 f4 \divisioMaior
      f\breve g4 \divisioMaxima
      bf\breve a4 g4 \divisioMaior
      g\breve f4 g a \bar "||" \break
    }
    % Ton 7
    \new Staff {
      \key g \major
      \mark \markup { \bold "Ton 7" }
      b\breve a4 g a \divisioMaior
      a\breve fs4 g a b \bar "||" \break
    }
    % Ton 8
    \new Staff {
      \key d \major
      \mark \markup { \bold "Ton 8" }
      fs\breve a1 b4 \divisioMaior
      b\breve fs1 e4 fs \bar "||" \break
    }
    % Ton 9
    \new Staff {
      \key c \major
      \mark \markup { \bold "Ton 9" }
      a\breve b1 c4 \divisioMaior
      f,\breve g1 a4 \divisioMaxima
      bf\breve a4 g \divisioMaior
      g\breve f4 a \bar "||" \break
    }
    % Ton 10
    \new Staff {
      \key c \major
      \mark \markup { \bold "Ton 10" }
      e\breve f1 g4 \divisioMaior
      a\breve g4 f g \bar "||" d4^\markup { † } \bar "||" \break
    }
    % Ton 11
    \new Staff {
      \key a \major
      \mark \markup { \bold "Ton 11" }
      e\breve fs1 a4 \divisioMaior
      a\breve cs1 b4 \divisioMaior
      a\breve fs1 a4 \bar "||" \break
    }
    % Ton 12
    \new Staff {
      \key a \major
      \mark \markup { \bold "Ton 12" }
      e\breve a1 fs4 \divisioMaior
      fs\breve e4 d e \bar "||"
    }
  }
  \layout {
    \override Staff.TimeSignature #'stencil = ##f
    ragged-last = ##f
    ragged-right = ##f
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
}
