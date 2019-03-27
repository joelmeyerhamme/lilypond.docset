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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/footnote-footer-padding.ly"
\sourcefileline 0
\version "2.16.0"
\header {
  texidoc = "The padding between a footnote and the footer can be tweaked."
}

% TODO: then why isn't it tweaked?

#(set-default-paper-size "a6")

\book {

  \relative c' {
    \footnote
                  \markup { \tiny 1 }
                  #'(1 . -1)
                  \markup { 1. Tiny space below. }
    e1

    \footnote
                  \markup { \tiny 2 }
                  #'(1 . -1)
                  \markup { 2. Tiny space below. }
    e1

    \footnote
                  \markup { \tiny 3 }
                  #'(1 . -1)
                  \markup { 3. Big space below. }
    e1
}}



% ****************************************************************
% end ly snippet
% ****************************************************************