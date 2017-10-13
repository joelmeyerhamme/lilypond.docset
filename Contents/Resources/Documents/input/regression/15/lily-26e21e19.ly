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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/music-function.ly"
\sourcefileline 0
\header
{

texidoc = "Music functions are generic music transformation functions,
which can be used to extend music syntax seamlessly.  Here we
demonstrate a @code{\\myBar} function, which works similar to
@code{\\bar}, but is implemented completely in Scheme."

}
\version "2.19.22"

myBar = #(define-music-function (bar-type) (string?)
          (context-spec-music
           (context-spec-music (make-property-set 'whichBar bar-type) 'Timing)
           'Score))

\layout { ragged-right = ##t }

{
    d4 \myBar ".|:" d4
}




% ****************************************************************
% end ly snippet
% ****************************************************************
