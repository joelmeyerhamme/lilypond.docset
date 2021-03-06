%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "cross-staff-chords---beaming-problems-workaround.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Il est parfois préférable d'utiliser les hampes de la portée supérieure
pour créer des accords distribués, afin d'éviter tout risque de
collision au niveau des ligatures automatiques.  Dans l'exemple suivant,
le fait de partir des hampes de la portée inférieure aurait rendu
nécessaire l'adaptation du détecteur de collision des ligatures, par une
clause @code{\\override Staff.Beam.collision-voice-only = ##t}, afin
qu'il ne tienne pas compte des collisions entre portées.

"
  doctitlefr = "Accord distribué et problème de hampe - solution"

  lsrtags = "chords, keyboards, tweaks-and-overrides, workaround"

  texidoc = "
Sometimes it is better to use stems from the upper staff for creating
cross-staff chords, because no problems with automatic beam collision
avoidance then arise.  If the stems from the lower staff were used in
the following example, it would be necessary to change the automatic
beam collision avoidance settings so that it doesn't detect collisions
between staves using @code{\\override Staff.Beam.collision-voice-only =
##t}

"
  doctitle = "Cross-staff chords - beaming problems workaround"
} % begin verbatim

\new PianoStaff <<
  \new Staff = up
    \relative c' {
      <<
        { r4
          \override Stem.cross-staff = ##t
          \override Stem.length = #19 % this is in half-spaces,
              % so it makes stems 9.5 staffspaces long
          \override Stem.Y-offset = #-6 % stems are normally lengthened
              % upwards, so here we must lower the stem by the amount
              % equal to the lengthening - in this case (19 - 7) / 2
              % (7 is default stem length)
          e e e }
        { s4
          \change Staff = "bottom"
          \override NoteColumn.ignore-collision = ##t
          c, c c
        }
      >>
    }
  \new Staff = bottom
    \relative c' {
      \clef bass
      \voiceOne
      g8 a g a g a g a
    }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
