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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/define-event-function.ly"
\sourcefileline 0
\version "2.19.22"

\header{

  texidoc= "Tests @code{define-event-function} by creating a trivial
function converting a markup into a dynamic script post-event.  As
opposed to music functions, a direction indicator is not required."

}

\layout { ragged-right = ##t }

dynScript =
#(define-event-function (text) (markup?)
   (make-dynamic-script text))

\relative {
  c'1\dynScript pp
  c^\dynScript "fp"
  c_\dynScript "spz"
}




% ****************************************************************
% end ly snippet
% ****************************************************************
