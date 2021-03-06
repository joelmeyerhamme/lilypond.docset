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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/slur-extreme.ly"
\sourcefileline 0

\version "2.19.21"

\header {

    texidoc="
Extreme slurs are scaled to fit the pattern, but only  symmetrically.
Asymmetric slurs are created by setting @code{eccentricity}."

}
\layout {
    ragged-right = ##t
}

baseWalk =  \relative {
    \time 6/4
    \stemDown
    \slurUp
    d,8[( a' d f] a[ d f d] a[ f d  a)]
    d,8[( a' d f] a[ a a d] f[ d d,  a)]
    \once\override Slur.eccentricity = #6.0
    d,8[( a' d f] a[ a a d] f[ d d,  a)]
}

\context PianoStaff 
    \autochange \baseWalk





% ****************************************************************
% end ly snippet
% ****************************************************************
