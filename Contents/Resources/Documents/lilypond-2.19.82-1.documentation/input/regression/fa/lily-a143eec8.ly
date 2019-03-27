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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/beam-cross-staff-rest.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Placement of beamed cross staff rests should be
reasonably close to beam.
"
}

Up = \change Staff = "up"
Down = \change Staff = "down"

\new PianoStaff <<
  \new Staff = "up"
  \relative {
    \time 6/8 a'2.
    c'8[ \Down c,16 \Up fis \Down r fis] \Up
  }
  \new Staff = "down" { s2. s4. }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************