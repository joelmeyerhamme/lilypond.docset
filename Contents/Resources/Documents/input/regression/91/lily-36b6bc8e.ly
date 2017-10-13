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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/glissando-chord-linebreak.ly"
\sourcefileline 0
\version "2.16.0"

\header {

  texidoc = "
A glissando between chords should not interfere with line breaks.  In
this case, the music should be in two lines and there should be no
warning messages issued.  Also, the glissando should be printed.
"

}

theNotes = {
  <c e>4 <c e> <c e>
  \glissando
  d
}

\score {
  \new Staff {
    \relative c'' {
      \theNotes
      \break
      \theNotes
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************