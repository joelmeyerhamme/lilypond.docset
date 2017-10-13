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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/midi-pedal.ly"
\sourcefileline 0
\header {

  texidoc = "Pedals.  Run @code{timidity -idvvv file.midi |grep Midi}
  to see midi events."

}

\version "2.19.21"

\score {
  \relative {
    {
      { c'16 e g c }
      
      { c,16\sustainOn e g c\sustainOff }
      { c,16\unaCorda e g c\treCorde }
      { c,16\sostenutoOn e g c\sostenutoOff }
    }
  }
  \midi {}
  \layout{}
}



% ****************************************************************
% end ly snippet
% ****************************************************************